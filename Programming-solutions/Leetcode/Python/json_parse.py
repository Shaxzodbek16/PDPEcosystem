import json

dictionary = {
    "bool": True
}

js = json.dumps(dictionary)

print(js)

dictionary = json.loads(js)

print(dictionary)