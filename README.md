
# Project info

## Download to APK: [Download Apk](https://www.dropbox.com/scl/fi/34dpwwsbkqxth8ymoccx3/app-release.apk?rlkey=bueoei021bxkn1btqpnqkyhaq&st=oj3sbcrb&dl=0)

## Video of app: [Video](https://www.dropbox.com/scl/fi/fb0d2bwijh3m8saxj8ucd/WhatsApp-Video-2024-08-17-at-21.33.04.mp4?rlkey=pevc14fr39gkqvw346hx0jeuw&st=36z84cpi&dl=0) 

## architecture:
The choice of architecture was MVC due to its good performance in small and medium architectures, which fits this project.

## State Management
The chosen state management was setState, due to the limited scope of places where it was used, not requiring another more complete management.

## Packages Used

### [Carousel Slider](https://pub.dev/packages?q=carousel_slider)

a popular and tested package that helped me build the home page carousel. 

### [Dots Indicator](https://pub.dev/packages/dots_indicator)
another popular and reliable package that helped me manage the state and style of my image indicator.

### [Very good analysis](https://pub.dev/packages/very_good_analysis)
This helps me maintain a great code pattern, which is essential for a good project.


## Folder organization

- Assets: All images and fonts are here

- Main: Where the App starts

- Appwidget: Here the font style and color of the scaffold are defined.

- Home: Main project folder, where all dart and flutter 
files are
    - Widgets: All the app's primary widgets are there

    - Compounds: All widgets that are composed of 1 or more widgets are in this folder

    - Controller: Transformation layer that acts as an interactor between the datasource layer and the view

    - Database: Layer where objects are mocked and sent to the controller

    - Page: Folder where all pages are

- Core: Where are the files essential for the app to work, such as services, constant files, etc.


