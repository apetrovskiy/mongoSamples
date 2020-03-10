db.inventory.insert({"_id" : 1, "item": "myItem1", sizes: ["S", "M", "L"]});
db.inventory.insert({"_id" : 2, "item": "myItem2", sizes: ["XS", "M", "XL"]});

db.inventory.aggregate([{$unwind: "$sizes"}])

db.inventory.insert({"_id" : 1, "item": "myItem1", sizes: ["S", "M", "L"]});
db.inventory.insert({"_id" : 2, "item": "myItem2", sizes: ["XS", "M", "XL"]});
db.inventory.insert({"_id" : 3, "item": "myItem3"});

db.inventory.aggregate([{$unwind: {path: "$sizes", includeArrayIndex: "arrayIndex"}}]);
