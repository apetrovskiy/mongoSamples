db.places.insert(
    {
        loc: { type: "Point", coordinates: [-73.97, 40.77]},
        name: "Central Park",
        category: "Parks"
    }
)

db.places.createIndex( { loc: "2dsphere"})
