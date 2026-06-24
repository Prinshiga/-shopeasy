# ShopEasy — Mini E-Commerce Flutter App

A clean, modern Flutter e-commerce app built as a practical assessment for CyphLab (Private) Limited. All data is local/mock — no backend required.

---

## Screens

| Screen | Description |
|---|---|
| Splash | Animated logo entrance, auto-navigates to Login |
| Login | Mock login (no real auth) — tap Login or Continue as Guest |
| Home | Product grid with search bar and category filter chips |
| Product Details | Full product info, rating, and Add to Cart |
| Cart | Item list with quantity +/−, remove, and live total price |
| Profile | Mock order history and app settings |

---

## Features

- **Product grid** — 2-column responsive grid with image, name, price, rating
- **Search** — live search filtering by product name
- **Category filter** — horizontal chip row (All, Electronics, Footwear, etc.)
- **Cart management** — add, remove, increase/decrease quantity, running total
- **Dark mode** — toggle in Profile → Settings, persists for the session
- **Animations**
  - Splash screen: scale + fade entrance (elastic bounce)
  - Product grid: staggered fade-in slide-up per card
  - Product details: shared Hero animation on product image
  - Page transitions: fade + slide-up when opening product details

---

## Tech Stack

| Tool | Usage |
|---|---|
| Flutter 3.x | UI framework |
| Dart | Language |
| Provider | State management (CartProvider, ThemeProvider) |
| Material 3 | Design system |

---

## Folder Structure

```
lib/
├── data/
│   └── mock_products.dart      # Static product list
├── models/
│   ├── product.dart            # Product model
│   └── cart_item.dart          # CartItem model
├── providers/
│   ├── cart_provider.dart      # Cart state (add, remove, qty)
│   └── theme_provider.dart     # Dark/light mode toggle
├── screens/
│   ├── splash_screen.dart
│   ├── login_screen.dart
│   ├── home_screen.dart
│   ├── product_details_screen.dart
│   ├── cart_screen.dart
│   └── profile_screen.dart
├── widgets/
│   └── product_card.dart       # Reusable product grid card
└── main.dart                   # App entry point
```

---

## Setup & Run

### Prerequisites

- Flutter SDK installed ([flutter.dev/install](https://flutter.dev/install))
- A connected device or emulator

### Steps

```bash
# 1. Clone the repository
git clone <your-repo-url>
cd flutter_interview

# 2. Install dependencies
flutter pub get

# 3. Run the app
flutter run

# Run on a specific device
flutter run -d windows        # Windows desktop
flutter run -d chrome         # Web browser
flutter run -d <device-id>    # Android/iOS device
```

### Build APK

```bash
flutter build apk --release
# Output: build/app/outputs/flutter-apk/app-release.apk
```

---

## AI Tools Used

This project was built with assistance from **Claude (claude.ai/code)** by Anthropic.

### What AI assisted with:
- Generating the initial folder structure and boilerplate
- Drafting the mock product data list
- Implementing the `CartProvider` logic
- Writing screen UI layouts (login, home, cart, profile)
- Implementing `ThemeProvider` for dark mode
- Adding Hero animations and staggered grid transitions
- Fixing deprecated Flutter API warnings (`withOpacity` → `withValues`)

### What I understood and organized:
- The overall app architecture and state management approach using Provider
- How `ChangeNotifierProvider` and `Consumer` connect providers to widgets
- How Hero animations work with matching tags between screens
- How `TweenAnimationBuilder` drives per-item staggered animations
- The routing pattern using `Navigator.push` and `PageRouteBuilder`
- Dark/light theme switching via `MaterialApp.themeMode`

> AI tools were used as a productivity aid. All generated code was reviewed, understood, and organized by the candidate.

---

## Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  provider: ^6.1.2
  cupertino_icons: ^1.0.8
```
