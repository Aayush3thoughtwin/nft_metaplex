import qrcode
from PIL import Image
import itertools
import pandas as pd
import os


df = pd.read_excel('Old products list.xlsx')
IcecatID = df.IcecatID.tolist()
for i in range(df.count().IcecatID):
    one_row = df.loc[i].to_list()
    rem = one_row.pop(6)
    qr = qrcode.QRCode(
        version=12,
        error_correction=qrcode.constants.ERROR_CORRECT_H,
        box_size=10,
        border=1
    )
    qr.add_data(str(one_row))
    qr.make()
    img_qr_big = qr.make_image().convert('RGB')
    logo = Image.open('image.png')
    pos = ((img_qr_big.size[0] - logo.size[0]) // 2, (img_qr_big.size[1] - logo.size[1]) // 2)
    img_qr_big.paste(logo, pos)
    img_qr_big.save(f'images/{str(i)}.png')
