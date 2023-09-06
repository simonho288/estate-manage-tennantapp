# Estate Manage Tenant Flutter App

> This repo is currently a `Work In Progress`.
>
> This is the mobile app for the estate tenants. There is a [backend repo](https://github.com/simonho288/EstateManage_backend) for the estate manager.

## Installation

1. Login to your Firebase console to create a new project with Android and iOS Apps ([docs](https://firebase.google.com/docs/flutter/setup?authuser=0&hl=en&platform=ios)). Note that the `GoogleService-Info.plist` & `google-services.json` files you don't need to download & copy to your flutter project. It will be handled by FlutterFire as next instruction.

2. Follow the [FlutterFire](https://firebase.flutter.dev/docs/overview/) installation instructions to generate (auto generated by Firebase) `GoogleService-Info.plist`, `google-services.json`, and `firebase_options.dart`

3. Install the NodeJS packages

- At project root, type: `npm install`

Note: Why flutter project requires NodeJS packages? Because release-it package is really easy to use for GitHub releases management.

4. Create new JSON file at `assets/cfg/dev.json`. Copy below contents to modify the values to your debug environment:

```json
{
  "hostApiUri": "<YOUR_BACKEND_URL>"
}
```

5. Modify the `assets/cfg/prod.json` & enter the values for your production environment.

6. Create a secret key file at `assets/cfg/secrets.json`. The contents are:

```json
{
  "enc_secret_key": "<you generate base 64 encryption key>",
  "enc_iv": "<you generate length 16 encryption key>"
}
```

Note: To generate above encryption keys, please follow the [Dart encrypt package](https://pub.dev/packages/encrypt). After the package installed, enter below commands:

```sh
$ secure-random -b 64 # copy&paste the value to above 'enc_secret_key'
$ secure-random -l 16 # copy&paste the value to above 'enc_iv'
```

7. Android properties files

Modify the file '<Project Root>/android/local.properties'. Add below settings:

```ini
...
android.applicationId=<your application id (same as Google Play console)>
```

Download the Firebase Android App settings file to `<Project Root>android/app/google-services.json`. Please see [Firebase](https://firebase.google.com/) for more information how to create a project & Android app.

Modify the file '<Project Root>/android/local.properties

## Debug The App

In Visual Studio Code, select the "Debug Mode" & press [F5] to start the debugger.

5. If your language is other than English, you can create a new language JSON file which copies from `assets/langs/en-US.json` to your language in same directory. For more information, please refer to the package [easy_locations](https://pub.dev/packages/easy_localization).

## Testing

At project root, open a terminal and run:

```sh
$ flutter test
```

**IMPORTANT**: Testing relies SharedPreference data which was executed before. So make sure the app runs in debug mode successfully before performing tests.

## Deployment

### Android

When you deploy the App to Google Play, you'll need to generate code signing keys. Run Android Studio to do that:

- In Android Studio menu, select 'Build', 'Generate Signed Bundle/API', 'Create New'
- Keystore path: [project root]/android/app/upload-keystore.jks (make sure add this to .gitignore)
- Enter the keystore password
- Key alias enter 'key0'
- Enter the key password (should same as above keystore password)
- Enter your name, organizational unit, organization ... (every field should not empty)
- Tick the two checkboxes. Click 'Next'
- In the 'Build Variants' box, select 'release'. Click 'Finish'
- It generates the private key on 'android/app/private_key.pepk'. Add this file to .gitignore

### iOS

<TBD>

## Backend

This app cannot be executed alone. It requires connect to the [EstateManage backend](https://github.com/simonho288/EstateManage_backend). Please go to the backend repo for installation instructions.
