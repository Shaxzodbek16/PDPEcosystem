"""for loop orqali hech qachon to'xtamaydigan (infinite loop) dastur tuzing."""

import time

# # ! this is first way
# def iis():
#     while True:
#         yield True

# for _ in iis():
#     time.sleep(0.5)
#     print(time.time())

# # #! this is second way

class Infinity():
    def __init__(self, infinity) -> None:
        self.infinity=infinity
        self.i=True

    def __iter__(self):
        return self
    def __next__(self):
        return self.i
count=Infinity(1)
def inf():
    for _ in count:
        time.sleep(0.5)
        print(time.time())
while True:
    try:
        inf()
    except KeyboardInterrupt:
        inf()

yrebnfiernfrnnreknejkrnjfkenjnniiieiiuu