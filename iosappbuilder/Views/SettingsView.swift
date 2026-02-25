import SwiftUI

struct SettingsView: View {
    @Environment(
        \ModelContext
    ) private var modelContext
    
    @State private var notificationsEnabled = true
    @State private var soundEnabled = true
    @State private var darkModeEnabled = false
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("General")) {
                    Toggle("Notifications", isOn: $notificationsEnabled)
                    Toggle("Sound", isOn: $soundEnabled)
                    Toggle("Dark Mode", isOn: $darkModeEnabled)
                }
                
                Section(header: Text("Account")) {
                    NavigationLink("Profile") {
                        Text("Profile View")
                    }
                    
                    NavigationLink("Privacy") {
                        Text("Privacy View")
                    }
                }
                
                Section(header: Text("Support")) {
                    NavigationLink("Help Center") {
                        Text("Help Center View")
                    }
                    
                    NavigationLink("Contact Us") {
                        Text("Contact Us View")
                    }
                }
            }
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SettingsView()
}