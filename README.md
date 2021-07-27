<!-- PROJECT LOGO -->
<p align="right">
<a href="https://pub.dev">
<img src="https://raw.githubusercontent.com/born-ideas/rsa_scan/master/assets/project_badge.png" height="100" alt="Flutter">
</a>
</p>
<p align="center">
<img src="https://raw.githubusercontent.com/born-ideas/rsa_scan/master/assets/project_logo.png" height="100" alt="Masterpass Example" />
</p>

<!-- PROJECT SHIELDS -->
<p align="center">
<a href="https://pub.dev/packages/rsa_scan"><img src="https://img.shields.io/pub/v/rsa_scan" alt="pub"></a>
<a href="https://github.com/born-ideas/rsa_scan/issues"><img src="https://img.shields.io/github/issues/born-ideas/rsa_scan" alt="issues"></a>
<a href="https://github.com/born-ideas/rsa_scan/network"><img src="https://img.shields.io/github/forks/born-ideas/rsa_scan" alt="forks"></a>
<a href="https://github.com/born-ideas/rsa_scan/stargazers"><img src="https://img.shields.io/github/stars/born-ideas/rsa_scan" alt="stars"></a>
<a href="https://dart.dev/guides/language/effective-dart/style"><img src="https://img.shields.io/badge/style-effective_dart-40c4ff.svg" alt="style"></a>
<a href="https://github.com/born-ideas/rsa_scan/blob/master/LICENSE"><img src="https://img.shields.io/github/license/born-ideas/rsa_scan" alt="license"></a>
</p>

---

<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
* [Getting Started](#getting-started)
* [Usage](#usage)
* [Roadmap](#roadmap)
* [Contributing](#contributing)
* [License](#license)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)



<!-- ABOUT THE PROJECT -->
## About The Project
<p align="center">
<img src="https://raw.githubusercontent.com/born-ideas/rsa_scan/master/assets/screenshot_1.png" width="200" alt="Screenshot 1" />
<img src="https://raw.githubusercontent.com/born-ideas/rsa_scan/master/assets/screenshot_2.png" width="200" alt="Screenshot 2" />
<img src="https://raw.githubusercontent.com/born-ideas/rsa_scan/master/assets/screenshot_3.png" width="200" alt="Screenshot 3" />
</p>

This project provides a [Flutter package](https://flutter.dev/docs/development/packages-and-plugins) for scanning South
African identification documents. Supported documents include:
* [x] South African ID Cards
* [x] South African ID Books
* [X] South African Driver's Licenses

### Built With
* [Flutter](https://flutter.dev/)
* [ML Kit](https://developers.google.com/ml-kit)



<!-- GETTING STARTED -->
## Getting Started

### Prerequisites

Since this is a [Flutter package](https://flutter.dev/docs/development/packages-and-plugins), you will need to use it from
within a Flutter App. A few resources to get you started with your first Flutter project:                   
- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

### Installation

Add `rsa_scan` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

#### iOS

iOS 10.0 of higher is needed to use the camera plugin. If compiling for any version lower than 10.0 make sure to check the iOS version before using the camera plugin. For example, using the [device_info](https://pub.dev/packages/device_info) plugin.

Also, add one row to the `ios/Runner/Info.plist` with the key `Privacy - Camera Usage Description` and a usage description. Or in text format add the key:
```xml
<key>NSCameraUsageDescription</key>
<string>Can I use the camera please?</string>
```

#### Android

Change the minimum Android sdk version to 21 (or higher) in your `android/app/build.gradle` file.

```
minSdkVersion 21
```


<!-- USAGE EXAMPLES -->
## Usage
The package exposes 3 functions, namely `scanIdCard`, `scanIdBook` and `scanDrivers`.

A simple usage example of `scanIdCard`:

```dart
import 'package:rsa_scan/rsa_scan.dart';

RsaIdCard idCard = await scanIdCard(context);
print(idCard.idNumber);
print(idCard.firstNames);
print(idCard.surname);
print(idCard.gender);
// See the API reference for the full set of available properties
```

A simple usage example of `scanIdBook`:

```dart
import 'package:rsa_scan/rsa_scan.dart';

RsaIdBook idBook = await scanIdBook(context);
print(idBook.idNumber);
print(idBook.birthDate);
print(idBook.gender);
print(idBook.citizenshipStatus);
// See the API reference for the full set of available properties
```

A simple usage example of `scanDrivers`:

```dart
import 'package:rsa_scan/rsa_scan.dart';

RsaDriversLicense driversLicense = await scanDrivers(context);
print(driversLicense.idNumber);
print(driversLicense.birthDate);
print(driversLicense.gender);
print(driversLicense.citizenshipStatus);
// See the API reference for the full set of available properties
```

For a more comprehensive example, please see [the example application](/example)



<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/born-ideas/rsa_scan/issues) for a list of proposed features (and known issues).



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



<!-- LICENSE -->
## License

Distributed under the MIT License. See [LICENSE](LICENSE) for more information.



<!-- CONTACT -->
## Contact

BornIdeas - [born.dev](https://www.born.dev) - [info@born.dev](mailto:support@born.dev)

Project Link: [https://github.com/born-ideas/rsa_scan](https://github.com/born-ideas/rsa_scan)



<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
* [rsa_identification](https://pub.dev/packages/rsa_identification)
* [Google-Ml-Kit-plugin](https://github.com/bharat-biradar/Google-Ml-Kit-plugin)
* [Shields IO](https://shields.io)
* [Open Source Licenses](https://choosealicense.com)