import Foundation
import SwiftUI

struct AppConstants {
    // MARK: - Colors
    static let primaryColor = Color.blue
    static let secondaryColor = Color.gray
    static let accentColor = Color.yellow
    
    // MARK: - Fonts
    static let titleFont = Font.system(size: 24, weight: .bold)
    static let subtitleFont = Font.system(size: 18, weight: .semibold)
    static let bodyFont = Font.system(size: 16)
    
    // MARK: - App Info
    static let appName = "iosappbuilder"
    static let version = "1.0.0"
    static let buildNumber = "1"
    
    // MARK: - API Keys (Placeholder)
    static let apiKey = "YOUR_API_KEY_HERE"
    static let apiEndpoint = "https://api.example.com"
    
    // MARK: - Feature Flags
    static let isPremiumFeatureEnabled = false
    static let isDarkModeSupported = true
    
    // MARK: - UI Constants
    static let cornerRadius: CGFloat = 12
    static let spacing: CGFloat = 16
    static let buttonHeight: CGFloat = 50
}

// MARK: - Extensions
extension Color {
    static let primary = AppConstants.primaryColor
    static let secondary = AppConstants.secondaryColor
    static let accent = AppConstants.accentColor
}

extension Font {
    static let title = AppConstants.titleFont
    static let subtitle = AppConstants.subtitleFont
    static let body = AppConstants.bodyFont
}