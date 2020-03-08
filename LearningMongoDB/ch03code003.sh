db.transactions.insert({ cr_dr: "D", amount: 100, fee: 2});

db.transactions.insert({ cr_dr: "C", amount: 100, fee: 2});
db.transactions.insert({ cr_dr: "C", amount: 10, fee: 2});
db.transactions.insert({ cr_dr: "D", amount: 100, fee: 4});

db.transactions.insert({ cr_dr: "D", amount: 10, fee: 2});
db.transactions.insert({ cr_dr: "C", amount: 10, fee: 4});
db.transactions.insert({ cr_dr: "D", amount: 100, fee: 2});

db.transactions.aggregate(
    [
        {
            $group: {
                _id: '$cr_dr', // group by type of transaction (debit or credit)
                count: {$sum:1}, // number of transaction for each type
                totalAmount: {$sum: {$sum: ['$amount', '$fee']}}, // sum
                averageAmount: {$avg: {$sum: ['$amount', '$fee']}} // average
            }
        }
    ]
).pretty();
