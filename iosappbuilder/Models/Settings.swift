import Foundation
import SwiftData

@Model
class Settings {
    var notificationsEnabled: Bool
    var soundEnabled: Bool
    var darkModeEnabled: Bool
    
    init(notificationsEnabled: Bool = true, soundEnabled: Bool = true, darkModeEnabled: Bool = false) {
        self.notificationsEnabled = notificationsEnabled
        self.soundEnabled = soundEnabled
        self.darkModeEnabled = darkModeEnabled
    }
}

extension Settings {
    static func defaultSettings() -> Settings {
        return Settings()
    }
}