# WWDC25 Playground

![WWDC25 Logo](images/wwdc1.jpg)

## Overview

This repository serves as an experimental playground for exploring and demonstrating the groundbreaking technologies introduced at Apple's WWDC 2025. Here you'll find hands-on demo projects, code samples, and practical implementations of the latest Apple frameworks and APIs using Xcode 26.

## Demo Projects

### HelloWorld26
A comprehensive SwiftUI demo project showcasing Xcode 26 and WWDC 2025 features with modern tab-based navigation:

#### Core Architecture
- **Tab-Based Navigation**: Modern `TabView` implementation with search roles, minimize behaviors, and bottom accessories
- **Navigation Stack Integration**: Complete navigation flow with typed destinations and toolbar customization
- **Modular Components**: Clean separation with reusable ProfileRow, BackgroundView, and structured view hierarchies

#### WWDC25 Feature Demonstrations
- **#Playground Macro**: Inline code experimentation for rapid prototyping (GlassEffectDemoView.swift:107-117)
- **#bundle Literal**: Access to current bundle information at compile time (GlassEffectDemoView.swift:91)
- **Advanced TabView APIs**: Search tab roles, tab bar minimize behavior, and custom bottom accessories
- **Enhanced Toolbars**: Toolbar customization with IDs, spacers, and enhanced item management
- **Liquid Glass UI**: Interactive glass effects with `.glassEffect()` modifiers and containers
- **Glass Animations**: Seamless transitions using `@Namespace` and `glassEffectID`
- **Material Design**: Strategic use of `.regularMaterial` for consistent visual depth
- **Scroll Edge Effects**: Enhanced scrolling with `.scrollEdgeEffectStyle(.soft, for: .top)`

**Location:** `projects/HelloWorld26/`

**Project Structure:**
- `HelloWorld26App.swift` - Main app entry point with scene configuration
- `TabDemoView.swift` - Primary tab navigation with search and customization features
- `GlassEffectDemoView.swift` - Liquid Glass UI showcase with #Playground experimentation
- `HomeView.swift` - Navigation stack demonstration with toolbar and typed destinations
- `ProfileView.swift` - Profile interface with custom gradients and material design
- `DetailsView.swift` - Navigation destination with advanced toolbar configuration
- `Utils/BackgroundView.swift` - Reusable gradient background component
- `TabsDemo/Profile/ProfileRow.swift` - Modular profile data display component

**How to Run:**
1. Open `HelloWorld26.xcodeproj` in Xcode 26
2. Select your target device or simulator (iOS 26+ recommended)
3. Press Cmd+R to build and run
4. Explore the `#Playground` blocks in GlassEffectDemoView.swift for interactive development
5. Navigate between Home and Profile tabs to see advanced TabView features
6. Tap "Go to Details" in Home tab to experience typed navigation destinations
7. Try the search tab to see role-based tab behavior
8. Switch to GlassEffectDemoView in HelloWorld26App.swift to focus on Liquid Glass features

## Key WWDC25 Technologies Demonstrated

### 🎨 Liquid Glass Design System
Explore Apple's revolutionary new UI material that combines glass-like optics with fluid, responsive interactivity:
- **Interactive Glass Effects**: `.glassEffect()` modifier with customizable shapes and tinting
- **Glass Containers**: `GlassEffectContainer` for grouping related glass elements with proper spacing
- **Animation Support**: Smooth transitions with `glassEffectID` and `@Namespace` integration
- **Glass Button Styles**: `.glass` button style for consistent interactive elements
- **Layered Glass**: Overlapping glass elements with proper depth and visual hierarchy
- **Dynamic Tinting**: `.tint()` modifier support for contextual glass coloring
- **Material Integration**: Strategic combination of glass effects with `.regularMaterial` backgrounds

### 📱 Advanced SwiftUI Navigation
Modern navigation patterns showcasing iOS 26+ capabilities:
- **Enhanced TabView**: Role-based tabs including dedicated search tab with morphing behavior
- **Tab Customization**: Minimize behaviors, bottom accessory views, and searchable interfaces
- **NavigationStack**: Typed navigation destinations with compile-time safety
- **Toolbar Evolution**: ID-based toolbar items, spacers, and enhanced item management
- **Scroll Optimization**: Edge effects with `.scrollEdgeEffectStyle()` for improved UX

### 🧠 Apple Intelligence & Foundation Models
Harness the power of on-device AI with Apple's new Foundation Models Framework:
- Local LLM integration for text processing
- `@Generable` Swift data structures for structured AI output
- Tool calling with autonomous Swift functions
- Privacy-first, offline AI capabilities

### ⚡ Swift 6.2 Performance Features
Leverage the latest Swift language improvements:
- Inline arrays for stack-based performance
- Span type for safe memory operations
- Enhanced concurrency with main actor defaults
- Improved C++ interoperability

### 📱 SwiftUI & Platform Updates
Modern UI development with enhanced SwiftUI capabilities:
- **Enhanced TabView**: New tab roles (search), minimize behaviors, and bottom accessory views
- **Advanced Navigation**: Typed navigation destinations with NavigationStack integration
- **Toolbar Enhancements**: ID-based toolbar items with spacers and enhanced customization
- **Scroll Improvements**: Edge effects, nested scroll optimization, and performance enhancements
- **Material Design**: Strategic `.regularMaterial` usage for visual depth and hierarchy
- **Declarative WebView**: Native web content integration
- **Rich Text Editing**: Attributed string support with built-in formatting controls
- **3D Charts**: Three-dimensional data visualization with RealityKit integration
- **Cross-platform Consistency**: Unified experience across iOS, iPadOS, macOS, watchOS, and visionOS

## Resources

- [WWDC 2025 Session Videos](https://developer.apple.com/videos/wwdc2025/)
- [Apple Developer Documentation](https://developer.apple.com/documentation/)
- [Foundation Models Framework](https://developer.apple.com/documentation/foundationmodels)
- [Liquid Glass Design Guidelines](https://developer.apple.com/design/human-interface-guidelines/)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

*Exploring the future of Apple platform development, one demo at a time.* 🚀
