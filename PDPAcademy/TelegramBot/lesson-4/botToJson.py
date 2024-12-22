import json

"""modes: r (read), w(write), a(append), x(create new file)"""

with open("users.json", "r") as f:
    users = json.load(f)
user = {
    "id": 1,
    "full_name": "John Doe",
    "age": 25,
    "phone_number": "+1234567890",
    "location": {"long": 123.456, "lat": 78.901},
}
users.append(user)


with open("users.json", "w") as f:
    json.dump(users, f, indent=3)

with open("users.json", "r") as f:
    users = json.load(f)

for user in users:
    if user.get("full_name") == "John Doe":
        print(user)
