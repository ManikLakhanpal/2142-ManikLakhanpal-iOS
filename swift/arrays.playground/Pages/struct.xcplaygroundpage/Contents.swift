struct Book {
    let name: String
    let announcementYear: Int
}

var firstBook = Book(name: "FRED", announcementYear: 2025)

var secondBook = Book(name: "Second Book", announcementYear: 2025)

var books = [firstBook, secondBook]

print(books)


struct Person {
    var age: Int
    var residence: Residence?
}

struct Residence {
    var address: Address?
}

struct Address {
    var buildingNumber: String?
    var streetName: String?
    var appartmentNumber: String?
}
