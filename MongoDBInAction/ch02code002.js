use tutorial

db.users.find({ username: "smith" })

// operator Update
db.users.update({ username: "smith" }, { $set: { country: "Canada" } })
db.users.find({ username: "smith" })

// replacement Update
db.users.update({ username: "smith" }, { country: "Canada2" })
db.users.find({ country: "Canada2" })

db.users.update({ country: "Canada2" }, { $set: { username: "smith" } })
db.users.find({ country: "Canada2" })

db.users.update({ username: "smith" }, { $unset: { country: 1 } })
db.users.find({ username: "smith" })