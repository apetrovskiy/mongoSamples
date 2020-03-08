db.transactions.insert({ cr_dr: "D", amount: 100, fee: 2});

db.transactions.insert({ cr_dr: "C", amount: 100, fee: 2});
db.transactions.insert({ cr_dr: "C", amount: 10, fee: 2});
db.transactions.insert({ cr_dr: "D", amount: 100, fee: 4});

db.transactions.insert({ cr_dr: "D", amount: 10, fee: 2});
db.transactions.insert({ cr_dr: "C", amount: 10, fee: 4});
db.transactions.insert({ cr_dr: "D", amount: 100, fee: 2});

db.transactions.count({cr_dr: "D"});

db.transactions.find({cr_dr: "D"}).length();

db.transactions.aggregate(
    [
        {
            $group: {
                _id: '$cr_dr', // group by type of transaction
                // Add i for each document to the count for this type of transaction
                count: { $sum : 1}
            }
        }
    ]
);
