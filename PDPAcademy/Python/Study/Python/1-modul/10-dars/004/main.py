from datetime import datetime
import time
import sys

now = datetime.now()
# print(now.strftime("%X"))

# while True:
#     try:
#         print(now.strftime("%X"))
#         time.sleep(2)
#     except KeyboardInterrupt:
#         print("\nSuccessfully stopped")
#         sys.exit()


try:
    while True:
        print(now.strftime("%X"))
        time.sleep(2)
except KeyboardInterrupt:
    print("\nSuccessfully stopped")
    sys.exit()
