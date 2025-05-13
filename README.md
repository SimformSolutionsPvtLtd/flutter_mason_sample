

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

### 1. `widget_template`
Generates either a `StatelessWidget` or `StatefulWidget` based on user input.

**Prompts:**
- `widget_name` (string)
- `isStateful` (boolean)

**Usage:**
```bash
mason make widget_template
```

---

## 📁 Project Structure

Each brick is located inside the `bricks/` directory and follows Mason's convention:

```
bricks/
├── widget_template/
│   ├── brick.yaml
│   └── __brick__/
│       └── widget_template.dart
```

---

## ✨ Mason Features Demonstrated

### ✅ Conditional Statements

You can include/exclude parts of your template based on variables defined in `brick.yaml`.

**Syntax:**
```mustache
{{#condition}}
This code appears if 'condition' is true.
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

## 🌍 Public Bricks (BrickHub)

Mason supports community bricks published on [BrickHub.dev](https://brickhub.dev).

### Example:
Use `Very Good CLI`'s brick to generate hook-based widgets:

```bash
mason make hooks
```

Search and install other bricks using:

```bash
mason search <brick-name>
mason add <brick-name>
```

---

## 📚 Related Blog

You can learn more in the accompanying blog post:
[🔗 Mason for Flutter Developers](https://medium.com/@jainrishabh2810/a1764a27ab1a)

---

## 🤝 Contributing

This repo is for learning and demonstration purposes.

---

