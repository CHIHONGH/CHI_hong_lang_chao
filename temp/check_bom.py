# -*- coding: utf-8 -*-
import subprocess

r = subprocess.run(['git', 'status', '--short'], capture_output=True, text=True)
files = []
for l in r.stdout.splitlines():
    if l.startswith(' M') or l.startswith('M '):
        p = l[3:]
        # git 对含空格/非ASCII路径加引号,读原始 z 输出更稳
        files.append(p)
if len(files) < 80:
    # 用 -z 重解析
    r2 = subprocess.run(['git', 'status', '--short', '-z'], capture_output=True)
    raw = r2.stdout.decode('utf-8', errors='ignore')
    files = []
    for item in raw.split('\x00'):
        if not item.strip():
            continue
        st = item[:2]
        if st == ' M' or st == 'M ':
            files.append(item[3:])
print('工作区修改文件数:', len(files))

bad = []
noyml = 0
for f in files:
    try:
        data = open(f, 'rb').read(4)
    except OSError:
        print('读取失败:', f)
        continue
    ext = f.rsplit('.', 1)[-1].lower() if '.' in f else ''
    has_bom = data.startswith(b'\xef\xbb\xbf')
    if ext == 'yml':
        noyml += 1
        if not has_bom:
            bad.append((f, 'yml缺BOM'))
    else:
        if has_bom:
            bad.append((f, '非yml带BOM'))
print('yml 文件数:', noyml)
print('BOM 问题:', bad if bad else '无')
