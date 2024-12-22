# try:
#     res = open('main.txt', 'r')
# except Exception as e:
#     print(f'{e}')
# finally:
#     res.close()


# try:
#     with open('main.txt', 'a') as res:
#         print(res.write('Hello PDP'))
#         res.close()
# except FileNotFoundError:
#     print('File not found')


def write_to_file(value: str, file: str = "file.txt") -> bool:
    try:
        with open(file, "w") as f:
            f.write(value)
            return True
    except (FileNotFoundError, Exception):
        return False


is_done = write_to_file("Hello, Shaxzodbek", "main.txt")

if is_done:
    print("Done")
else:
    print("Failed")
