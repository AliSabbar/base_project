# base_project
RUN COMMANDS TO RENAME APP NAME AND BUNDLE AND CHANGE APP ICON

# FIRST
```
flutter pub global activate rename
```
# SECOND
```
rename setAppName --targets ios,android --value "YourAppName"
```
# THIRD
```
rename setBundleId --targets android --value "com.example.bundleId"
```

# GET APP NAME AND BUNDLE
```
rename getAppName --targets ios

rename getBundleId --targets android
```
# CHANGE APP ICON
```
flutter pub get
flutter pub run flutter_launcher_icons
```
