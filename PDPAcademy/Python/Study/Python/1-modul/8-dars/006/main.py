def teskari_tartibda_qaytaruvchi(ism):
    if len(ism) == 0:
        return ""
    else:
        return ism[-1] + teskari_tartibda_qaytaruvchi(ism[:-1])

# Test qilish
ism = input("Ismni kiriting: ")
teskari_ism = teskari_tartibda_qaytaruvchi(ism)
print(f"Teskari tartibda: {teskari_ism}")
