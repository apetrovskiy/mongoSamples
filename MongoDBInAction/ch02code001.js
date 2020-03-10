use tutorial

db.users.insert({ username: "smith" })

db.users.find()

db.users.insert({ username: "jones" })

db.users.count()

db.users.find()

db.users.find({ username: "jones" })

db.users.find({
    _id: ObjectId("5e6815463caeddfbeb3b66f8"),
    username: "jones"
})

db.users.find({
    $and: [{
        _id: ObjectId("5e6815463caeddfbeb3b66f8"),
        username: "jones"
    }]
})

db.users.find({ $or: [{ username: "smith" }, { username: "jones" }] })