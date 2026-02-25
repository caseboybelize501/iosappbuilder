import SwiftUI

struct PaywallView: View {
    @Environment(
        \ModelContext
    ) private var modelContext
    
    @State private var isSubscribed = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Image(systemName: "crown.fill")
                    .font(.system(size: 80))
                    .foregroundColor(.yellow)
                    .padding(.bottom, 20)
                
                Text("Premium Features")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                
                Text("Unlock all features with a premium subscription")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 20)
                
                VStack(spacing: 15) {
                    FeatureRow(title: "Advanced Task Management", icon: "checkmark.circle")
                    FeatureRow(title: "Custom Themes", icon: "paintpalette")
                    FeatureRow(title: "Priority Support", icon: "headphones")
                    FeatureRow(title: "Data Backup", icon: "icloud")
                }
                .padding(.vertical)
                
                Button("Subscribe Now") {
                    // In a real app, this would integrate with StoreKit 2
                    isSubscribed = true
                    
                    // Haptic feedback
                    let impact = UIImpactFeedbackGenerator(style: .medium)
                    impact.impactOccurred()
                }
                .buttonStyle(.borderedProminent)
                .tint(.yellow)
                .padding(.horizontal)
                
                Button("Cancel") {
                    // Close the paywall
                }
                .buttonStyle(.borderless)
                .padding()
            }
            .padding()
            .navigationTitle("Premium")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct FeatureRow: View {
    var title: String
    var icon: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.green)
            
            Text(title)
                .font(.subheadline)
                .foregroundColor(.primary)
            
            Spacer()
        }
        .padding(.vertical, 8)
    }
}

#Preview {
    PaywallView()
}