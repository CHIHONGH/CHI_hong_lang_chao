# -*- coding: utf-8 -*-
import subprocess

# 从 git status 收集冲突 PNG
r = subprocess.run(['git', 'status', '--short', '-z'], capture_output=True)
raw = r.stdout.decode('utf-8', errors='ignore')
pngs = []
for item in raw.split('\x00'):
    if not item.strip():
        continue
    st = item[:2]
    if st in ('UU', 'AA', 'DD', 'AU', 'UA', 'DU', 'UD'):
        p = item[3:]
        if p.lower().endswith('.png'):
            pngs.append((st, p))

ok_t, ok_del, fail = [], [], []
for st, p in sorted(pngs):
    if st == 'DD':
        # 双方都删:记录删除
        r2 = subprocess.run(['git', 'add', '--', p], capture_output=True, text=True)
        if r2.returncode != 0:
            fail.append((p, 'DD add: ' + r2.stderr.strip()))
        else:
            ok_del.append(p)
    else:
        # 其余类型统一取 theirs
        r2 = subprocess.run(['git', 'checkout', '--theirs', '--', p], capture_output=True, text=True)
        if r2.returncode != 0:
            fail.append((p, 'checkout --theirs: ' + r2.stderr.strip()[:100]))
            continue
        r3 = subprocess.run(['git', 'add', '--', p], capture_output=True, text=True)
        if r3.returncode != 0:
            fail.append((p, 'add: ' + r3.stderr.strip()[:100]))
        else:
            ok_t.append(p)

print(f'采用协作者版本: {len(ok_t)}')
print(f'双方都删(记录删除): {len(ok_del)}')
print(f'失败: {len(fail)}')
for p, e in fail:
    print('  ', p, '|', e)

# 剩余冲突统计
r = subprocess.run(['git', 'status', '--short', '-z'], capture_output=True)
raw = r.stdout.decode('utf-8', errors='ignore')
from collections import Counter
remain = Counter(item[:2] for item in raw.split('\x00') if item.strip()[:2] in ('UU','AA','DD','AU','UA','DU','UD'))
print('\n剩余冲突:', dict(remain))
