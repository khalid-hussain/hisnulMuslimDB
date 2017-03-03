import sqlite3
import io

f = open('title_workfile.txt', 'w')

conn = sqlite3.connect('hisnul.sqlite3')

counter = 1

selectString = "SELECT en_title FROM dua_group"

with io.open('title_workfile.txt', 'w', encoding='utf-8') as file:
    print(conn.execute(selectString).fetchall(), file=file)
    # for en_title in conn.execute(selectString):
    #     print('{}'.format(en_title), file=file)
    #     # print(en_title)
    #     counter += 1

conn.close()
