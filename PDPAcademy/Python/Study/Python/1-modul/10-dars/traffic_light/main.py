import time
from datetime import datetime
import sys

yellow = "Yellow"
red = "Red"
green = "Green"

print("\n")

while True:
    try:
        print(red, "\n")
        time.sleep(4)
        print(yellow, "\n")
        time.sleep(2)
        print("Faster\n")
        time.sleep(2)
        print(green, "\n")
        time.sleep(4)
        print(yellow, "\n")
        time.sleep(2)
        print("Faster\n")
        time.sleep(2)
    except KeyboardInterrupt:
        print("\nSuccessfully stopped")
        sys.exit()
