import Foundation
import SwiftData

@Model
class Task {
    var title: String
    var isCompleted: Bool
    var createdAt: Date
    
    init(title: String, isCompleted: Bool = false) {
        self.title = title
        self.isCompleted = isCompleted
        self.createdAt = Date()
    }
}

extension Task {
    static func sampleData() -> [Task] {
        return [
            Task(title: "Complete project proposal"),
            Task(title: "Review design mockups"),
            Task(title: "Schedule team meeting", isCompleted: true)
        ]
    }
}