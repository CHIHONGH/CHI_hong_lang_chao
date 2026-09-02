# -*- coding: utf-8 -*-
"""精确解析当前合并冲突,与 b33142b 恢复文件对照"""
import subprocess
from collections import Counter

# 当前冲突(用 -z 读,字节级还原路径)
r = subprocess.run(['git', 'status', '--short', '-z'], capture_output=True)
raw = r.stdout.decode('utf-8', errors='ignore')
chunks = raw.split('\x00')
unmerged = []
i = 0
while i < len(chunks):
    c = chunks[i]
    if not c:
        i += 1
        continue
    st = c[:2]
    if st in ('UU', 'AA', 'DD', 'AU', 'UA', 'DU', 'UD'):
        # 条目可能是 "XY path" 或 rename 形式 "XY old new"(R 时 old/stage 与 new 分两 chunk)
        rest = c[3:]
        if st == 'R':
            unmerged.append((st, rest + ' -> ' + chunks[i + 1]))
            i += 2
        else:
            unmerged.append((st, rest))
    i += 1
print('未合并冲突总数:', len(unmerged))
print('冲突类型分布:', dict(Counter(s for s, _ in unmerged)))

r2 = subprocess.run(['git', 'show', '--name-only', '--format=', 'b33142b'], capture_output=True, text=True)
restored = set(x for x in r2.stdout.splitlines() if x.strip())
print('b33142b 恢复文件数:', len(restored))

print('\n== 恢复文件中仍在冲突的:')
mine = [(s, p) for s, p in unmerged if p in restored]
print(dict(Counter(s for s, _ in mine)))
for s, p in mine:
    print(f'  {s}  {p}')

# 也列出全部冲突里 AA/UU 的数量对比(说明还有多少非恢复冲突)
print('\n所有冲突文件中属于恢复文件的比例:',
      f'{len(mine)}/{len(unmerged)}')
