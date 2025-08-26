//enum Grade: String {
//    case A, B, C, F
//}
//
//struct Student {
//    var name: String {
//        didSet {
//            if name.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
//                name = "Invalid Name"
//            } else {
//                name = name.capitalized
//            }
//        }
//    }
//    
//    var marks: [String: Int]
//    
//    var totalMarks: Int {
//        var total = 0
//        
//        for i in marks.values {
//            total += marks[String(i)]!
//        }
//        
//        return total
//    }
//    
//    var percentage: Double {
//        return marks.isEmpty ? 0.0 : Double(totalMarks) / Double(marks.count)
//    }
//    
//    func calculateGrade() -> Grade {
//        switch percentage {
//        case 80...100:
//            return .A
//        case 60..<80:
//            return .B
//        case 40..<60:
//            return .C
//        default:
//            return .F
//        }
//    }
//}
//
//func printSummary(student: Student?) {
//    guard let student = student else {
//        return
//    }
//    
//    let grade = student.calculateGrade()
//    
//    print("Student name: \(student.name)")
//    
//    for (_, i) in student.marks {
//        print ("\(i) -> \(student.marks[i])")
//    }
//}

var marks = [
    "Manik": 10,
    "Lakhanpal": 20
]

for i in marks {
    print("\(i)")
}

print("manik")
