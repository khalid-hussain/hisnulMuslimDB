import sqlite3
import io

f = open('workfile.txt', 'w')

conn = sqlite3.connect('hisnul.sqlite3')

counter = 1

selectString = "SELECT ar_dua, en_translation, en_reference FROM dua"

with io.open('workfile.txt', 'w', encoding='utf-8') as file:
    for ar_dua, trans, ref \
            in conn.execute(selectString):
        # print(ar_dua, "\n", trans, "\n", ref, file=file, sep="")
        print('{}\n\n{}\n\n{}\n\n{}\n'
              '--------------------------'
              .format(counter, ar_dua, trans, ref), file=file)
        counter += 1

conn.close()
