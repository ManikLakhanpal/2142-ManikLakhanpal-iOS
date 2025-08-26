import Foundation

struct Note: Codable {
    let title: String
    let text: String
    let timeStamp: Date
}

let newNote1 = Note(title: "Hello", text: "World", timeStamp: Date())
let newNote2 = Note(title: "Hello", text: "World", timeStamp: Date())
let newNote3 = Note(title: "Hello", text: "World", timeStamp: Date())

let notes = [newNote1, newNote2, newNote3]

let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
let archiveURL = documentsDirectory.appendingPathComponent("notes_test")
    .appendingPathExtension("plist")

let propertyListEncoder = PropertyListEncoder()
let encodedNotes = try? propertyListEncoder.encode(notes)

try? encodedNotes?.write(to: archiveURL, options: .noFileProtection)


let propertyListDecoder = PropertyListDecoder()
if let retrievedNotesData = try? Data(contentsOf: archiveURL), let decodedNotes = try? propertyListDecoder.decode([Note].self, from: retrievedNotesData) {
    print(decodedNotes)
}

print(archiveURL)
