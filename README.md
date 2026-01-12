🛍️ 
## Shoflex – Flutter E-Commerce Application

Shoflex is a modern, scalable Flutter-based e-commerce mobile application designed with clean UI, smooth navigation, and a modular architecture.
The app supports product browsing, cart management, order placement, and user profile handling with a strong focus on performance and maintainability.


⚙️ 
## Setup Instructions

1️⃣ Clone Repository

git clone https://github.com/arun-kumar-bidila/shoflex.git
cd shoflex

2️⃣ Install Dependencies

flutter pub get

3️⃣ Run App

flutter run


📱 
## Supported Platforms

✅ Android

✅ iOS


🚀 
## Features

User Authentication (Login / Signup)

- Product Categories & Listings
- Cart Management
- Order Placement & Order History
- Notifications
- Profile Management
- Bottom Navigation with SVG Icons
- Native Splash Screen
- Custom Fonts & Theming
- Provider-based State Management


📁 
## Folder Structure

shoflex/
├── lib/
│   ├── core/constants/      # App-wide constants (e.g., app_colors.dart)
│   ├── features/            # Feature-based modules
│   │   ├── home/            # Dashboard and discovery
│   │   ├── orders/          # Tracking and order history
│   │   ├── product/         # Product details and selection
│   │   ├── search/          # Search logic and empty states
│   │   └── profile/         # User account management
│   ├── models/              # Cart, Order, and Product data models
│   ├── providers/           # State management (Cart/Order Providers)
│   ├── routes/              # App routing (router.dart)
│   ├── widgets/             # Reusable global UI components
│   ├── bottombar.dart       # Main navigation scaffolding
│   └── main.dart            # Entry point
├── assets/
│   ├── fonts/               # Custom fonts (ClimateCrisis, Gabarito)
│   ├── icons/               # SVG vector graphics
│   └── products/            # Product imagery
└── pubspec.yaml             # Dependency management


🎨 
## Fonts Used

- Climate Crisis
- Gabarito

## Best Practices Followed:

- No backend used; all data is local or in-memory for simplicity.
- Provider used for global state management of cart, user session, and other shared data.
- Authentication flow implemented without real validation for easy testing and quick prototyping.
- Clean code organization and modular widgets for reusability.
- Custom theming and fonts applied consistently across the app.
- Bottom navigation and other UI components follow Flutter best practices for responsiveness.
