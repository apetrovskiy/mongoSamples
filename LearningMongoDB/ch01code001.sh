db.test.insert({ "speech": "Hello World!"});
cur = db.test.find();x = cur.next();print(x["speech"])
