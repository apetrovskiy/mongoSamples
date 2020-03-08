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
                _id: '$cr_dr',
                count: {$sum: 1}, // counts the number
                totalAmount: {$sum: '$amount'} // sums the amount
            }
        }
    ]
);

db.transactions.aggregate(
    [
        {
            $group: {
                _id: '$cr_dr',
                count: {$sum:1},
                totalAmount: {$sum: { $sum: ['$amount', '$fee']}}
            }
        }
    ]
);
