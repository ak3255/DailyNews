# Daily News App

This Flutter app provides a simple and intuitive way to stay updated with the latest news from various sources. It fetches news articles from the News API and displays them in a visually appealing format.

## Features

* **Splash Screen:** Displays a logo while the app initializes.
* **Home Screen:** 
    * Fetches and displays news articles in a vertically scrollable PageView.
    * Shows a loading indicator while fetching news.
* **News Container:** 
    * Presents news articles with an image, headline, description, and content snippet.
    * Includes a "Read More" button to view the full article.
* **Detail View:** 
    * Displays the full content of a news article using a WebView.
* **News Fetching:** 
    * Fetches news articles from the News API.
    * Selects a random news source and article for each request.

## Screenshots

![4](https://github.com/user-attachments/assets/98261b6a-1a74-4459-a962-e2c326299e77)
![1](https://github.com/user-attachments/assets/bdc8fef0-6d13-4ed5-863a-72e71ae51646)
![2](https://github.com/user-attachments/assets/3f2b0f4d-eef0-41cc-9960-2856ce4e1f0c)
![3](https://github.com/user-attachments/assets/a02d7e84-054e-4340-baca-fad521017511)


## Technologies Used

* Flutter
* Dart
* http package
* webview_flutter package
* News API

## Getting Started

1. Make sure you have Flutter installed and configured on your machine.
2. Clone this repository.
3. Obtain a News API key and replace the placeholder in `fetchNews.dart`.
4. Open the project in your preferred IDE (e.g., Android Studio, VS Code).
5. Run the app on an emulator or physical device.

## Future Enhancements

* **Error Handling:** Implement comprehensive error handling for network issues, invalid data, etc.
* **State Management:** Use a state management solution (e.g., Provider, BLoC, Riverpod).
* **UI Enhancements:** Improve visual design, add animations and polish UI elements.
* **News Sources and Categories:** Allow users to select preferred sources and categories.
* **Search Functionality:** Implement a search feature for finding specific articles.
* **Caching:** Cache fetched news articles to improve performance and reduce API calls.
* **Pull-to-Refresh:** Add a pull-to-refresh mechanism to manually refresh the news feed.
* **Infinite Scrolling:** Implement infinite scrolling to load more news articles.
* **Testing:** Write unit and integration tests.

## Contributing

Contributions are welcome! If you find any bugs or have suggestions for improvements, feel free to open an issue or submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
