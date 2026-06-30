with open('a.mcfunction',mode='w',encoding='utf-8') as f:
    #f.write('scoreboard objectives add base64_chr dummy')
    for i in range(0,26+1):
        f.write(f'item modify entity @s container.{i} wl-ctrl:unhold\n')
    #f.write('\nscoreboard players set #= base64_chr 0') # 需要处理Base64末尾补位的读者需要这一项。