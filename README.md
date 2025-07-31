📱 Flutter REST API App - Clean Architecture Example
This Flutter project demonstrates how to build a RESTful API-based app using Clean Architecture principles.
It fetches a list of users from a public API (https://jsonplaceholder.typicode.com/users) and displays them in a simple UI.

Architecture Overview
lib/
├── data/
│   ├── models/
│   ├── repositories/
│   └── sources/
├── domain/
│   ├── entities/
│   ├── repositories/
│   └── usecases/
├── presentation/
│   ├── pages/
│   └── providers/
└── main.dart

 Layers:
| Layer        | Responsibility                                   |
| ------------ | ------------------------------------------------ |
| Presentation | UI widgets and state management                  |
| Domain       | Business logic: entities, repositories, usecases |
| Data         | API communication, models, repository impl       |

 API Used
URL: https://jsonplaceholder.typicode.com/users
Provides dummy user data (ID, Name, Email, etc.)

Getting Started
1. Clone the Repo
git clone https://github.com/your-username/flutter-clean-architecture-rest.git
cd flutter-clean-architecture-rest

2. Install Dependencies
flutter pub get

3. Run the App
flutter run


📦 Dependencies
dependencies:
  flutter:
    sdk: flutter
  http: ^0.13.6

Key Files
| File                        | Purpose                            |
| --------------------------- | ---------------------------------- |
| `user_api.dart`             | REST API call using `http` package |
| `user_model.dart`           | JSON parsing                       |
| `user_entity.dart`          | Clean business model               |
| `user_repository.dart`      | Domain repository contract         |
| `user_repository_impl.dart` | Data implementation of repository  |
| `get_users_usecase.dart`    | Use case for fetching user data    |
| `user_page.dart`            | UI for listing users               |


Why Clean Architecture?
Testable: Each layer can be tested independently.

Scalable: Easy to extend (e.g., add local DB, auth).

Maintainable: Clear separation of concerns.

✍️ Author
👤 Sandeep Prajapati
📧 prajapatisandip2003@gmail.com
🔗 https://www.linkedin.com/in/sandip-prajapati-/
