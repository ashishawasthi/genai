# Generative AI Demo Project - genai

The project shows different use cases where Generative AI can be useful

Frameworks and platforms used:
- OpenAI APIs
- Firebase FireStore and Funcitons
- Flutter

## Getting Started

For Firestore integration, first time setup requires running the following commands to ensure the project compiles:

```
flutter pub get
flutter packages pub run build_runner build --delete-conflicting-outputs
```

This command creates the generated files that parse each Record from Firestore into a schema object.
