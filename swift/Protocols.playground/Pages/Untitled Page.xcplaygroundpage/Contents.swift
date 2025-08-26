import Foundation

class VersionManager: Equatable, Comparable, CustomStringConvertible {
    var majorVersion: Int
    var minorVersion: Int
    
    init(_ major: Int, _ minor: Int) {
        self.majorVersion = major
        self.minorVersion = minor
    }
    
    var description: String {
        return "Version \(majorVersion).\(minorVersion)"
    }
    
    static func == (lhs: VersionManager, rhs: VersionManager) -> Bool {
        return lhs.majorVersion == rhs.majorVersion &&
               lhs.minorVersion == rhs.minorVersion
    }
    
    static func < (lhs: VersionManager, rhs: VersionManager) -> Bool {
        if lhs.majorVersion != rhs.majorVersion {
            return lhs.majorVersion < rhs.majorVersion
        }
        return lhs.minorVersion < rhs.minorVersion
    }
}


let app1 = VersionManager(1, 2)
let app2 = VersionManager(1, 3)

print(app1)               // Version 1.2
print(app1 == app2)       // false
print(app1 < app2)        // true
print(app1 > app2)        // false
