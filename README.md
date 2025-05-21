

# 🧱 Mason Blog Example

This repository showcases a collection of example bricks built using [Mason](https://pub.dev/packages/mason),
a Dart templating tool that helps you eliminate boilerplate and scaffold
code efficiently in Flutter and Dart projects.

## 🔧 Requirements

- Dart SDK
- Flutter SDK
- Mason
- Mason CLI

### 🔨 Install Mason

```bash
dart pub global activate mason_cli
```

---

## 📦 Bricks Included

### 1. `custom_card`
Generates a custom card widget for Flutter applications with configurable title and subtitle.

**Prompts:**
- `widget_name` (string): Name of the widget
- `title` (string): Title inside the Card
- `subtitle` (string): Subtitle inside the Card

**Usage:**
```bash
mason make custom_card
```

---

## 📁 Project Structure

The project is structured as a Flutter application with Mason integration:

```
mason_blog_example/
├── lib/                       # Main Flutter application code
│   ├── main.dart              # Entry point of the Flutter application
│   ├── repository/            # Repository pattern implementation
│   ├── usercase/              # Use case implementations
│   └── view/                  # UI components and screens
├── custom_card/               # Custom card brick
│   ├── brick.yaml             # Brick configuration
│   ├── __brick__/             # Template files
│   │   └── lib/               # Generated code structure
│   └── hooks/                 # Pre and post generation hooks
│       ├── pre_gen.dart       # Pre-generation validation
│       └── post_gen.dart      # Post-generation formatting
├── mason.yaml                 # Mason configuration file
└── mason-lock.json           # Lock file for Mason dependencies
```

---

## ✨ Mason Features Demonstrated

### ✅ Hooks

The project uses pre-generation and post-generation hooks:

- **Pre-Generation Hook**: Validates that widget names are not empty
- **Post-Generation Hook**: Automatically formats generated Dart code

### ✅ Conditional Statements

You can include/exclude parts of your template based on variables defined in `brick.yaml`.

**Syntax:**
```mustache
{{#condition}}
This code appears if 'condition' is true.
{{/condition}}
{{^condition}}
This code appears if 'condition' is false.
{{/condition}}
```

### 🔁 Loops

Used to generate repeated code structures based on a list of inputs.

**Syntax:**
```mustache
{{#items}}
Item name: {{name}}, Type: {{type}}
{{/items}}
```

---

## 📱 Custom Card Widget

The `custom_card` brick included in this project generates a reusable Flutter card widget with customizable title and subtitle. It demonstrates how to:

1. Set up variable prompts in `brick.yaml`
2. Implement pre-generation validation with hooks
3. Apply automatic formatting post-generation
4. Structure generated code within a Flutter project

### 🔧 Using the custom_card brick

```bash
# From project root
mason make custom_card
# Or, if you want to use hooks
mason make custom_card --hooks
```

---

## 🌍 Public Bricks (BrickHub)

Mason supports community bricks published on [BrickHub.dev](https://brickhub.dev).

Search and install other bricks using:

```bash
mason add <brick-name>
mason get
```

---

## 🚀 Getting Started

1. Clone this repository
2. Install dependencies:
   ```bash
   flutter pub get
   ```
3. Install Mason CLI:
   ```bash
   dart pub global activate mason_cli
   ```
4. Get Mason Bricks:
   ```bash
   mason get
   ```
5. Create a new brick:
   ```bash
    mason make <brick-name>
    ```
6. Run the Flutter app:
   ```bash
   flutter run
   ```

---

## 📚 Related Resources

You can learn more in the accompanying blog post:
[🔗 Mason for Flutter Developers](https://medium.com/@jainrishabh2810/a1764a27ab1a)

---

## 🤝 Contributing

This repo is for learning and demonstration purposes.

---

