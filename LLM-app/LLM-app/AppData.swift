import Foundation
import SwiftUI

struct Member: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    var hairColor: Color
    var eyeColor: Color
    var themeColor: Color
}

struct AppData {
    static let members: [Member] = [
        Member(name: "Euge", imageName: "euge", hairColor: .gray, eyeColor: .blue, themeColor: .pink),
        Member(name: "Soo", imageName: "soo", hairColor: .brown, eyeColor: .green, themeColor: .cyan),
        Member(name: "Geo", imageName: "geo", hairColor: .black, eyeColor: .brown, themeColor: .brown)
    ]
} 
