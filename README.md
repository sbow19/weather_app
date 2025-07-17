# weather_app

A Flutter app that displays real-time weather data using the OpenWeather API.

Many thanks for reviewing my project — I'm excited to share it with you and hear your feedback!

---

## Demo

- [Mobile Version](https://vimeo.com/1102311030)
- [Web Version](https://vimeo.com/1102313625)

## Overview of Requirements & Implementation

### Authentication

- Implements a simple authentication flow where users can sign up with a username and password.
- Passwords are **hashed using the `bcrypt` library**.
  - On mobile, user credentials are stored securely using `flutter_secure_storage`.
  - On web, data is stored via `localStorage`.
- The app **persists users** across reloads and supports multiple distinct users.

### Weather Display

- A single weather screen displays:
  - Current time
  - Temperature
  - User’s location
  - Additional weather details
- The background changes dynamically based on the weather description from OpenWeather API.
- Weather updates every minute and reflects real-time location via a `StreamBuilder`.

---

## Best Practices and Techniques

- **MVVM architecture** separates concerns:
  - `View`: UI logic only
  - `ViewModel`: transforms data for UI
  - `Model`: interacts with APIs/services
- **Singleton pattern** is used throughout to avoid duplicate instances and maintain shared state.
- All dependencies are composed programmatically using utility functions (`lib/utils/composition`).
- **Platform-specific services** are abstracted via interfaces:
  - `SecureStorage` is implemented using `flutter_secure_storage` on mobile and `dart:html` on web.
- **Responsive UI** supports both mobile and web:
  - Uses `LayoutBuilder` for adaptive layouts.
  - Uses conditional imports for logic separation.
- A custom `LoggerService` is injected across all layers for consistent logging.
- On logout:
  - The weather ViewModel is disposed.
  - Singleton instances are cleaned up to avoid memory leaks.

---


## Getting started

Create.env.dev file in the lib/config directory and add the following variables:

```env
API_KEY="<YourAPIKey>"
ENV="dev"
# General vars
APP_NAME="Open Weather API"
APP_VERSION="0.0.1"

# Debug config
DEBUG_MODE=true
ENABLE_LOCAL_AUTH=false
LOG_LEVEL="debug"

# Open Weather API variables
API_URL="https://openweathermap.org/api/one-call-3"
DEFAULT_CITY="London"
USE_GEOLOCATION=false

# HTTP config
POLL_INTERVAL_SECONDS=60
API_TIMEOUT=5000

```

Create .env.prev in lib/config/ add all of the above variables, but leave **API_KEY** blank.

Create .env.prod, .env.test without any variables.

To start live services for mobile, run ```make run```, and for chrome run ```make run-chrome```.

> **Note** Chrome blocks network requests to Open Weather API via CORS policy. 
>
> To preview the Chrome version with dummy services, run ```make prev-chrome```
>

## Project Structure

**See [Directory structure](directory.txt) for details about directory structure**

