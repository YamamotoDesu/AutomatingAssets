# **[How To Automate Asset Management in Your iOS Apps](https://betterprogramming.pub/how-to-automate-asset-management-in-your-ios-apps-1f465bcaa4ef)** 

Autocomplete resources like images, fonts and segues in Swift projects.

## How to set up
### 1. Install it via CocoaPods by running pod install after adding this line to the Podfile:
```
pod ‘R.swift’
```

### 2. Add a new run script phase as follows:  
<img width="567" alt="OtherViews_と_AutomatingAssets_xcodeproj" src="https://user-images.githubusercontent.com/47273077/141606087-ea7f1f67-5380-4bff-b870-c45e1d30fb40.png">

### 3. Move it above the “Compile Sources,” as shown below:  
> The reason for is that the library will generate a R.generated.swift file, which will have all the properties that reference the assets used in our app. We want it generated before the app compiles all the files.

<img width="560" alt="AutomatingAssets_xcodeproj" src="https://user-images.githubusercontent.com/47273077/141606136-99d18ab6-5928-4910-b851-87b88177f5af.png"> 

### 4. Add “$PODS_ROOT/R.swift/rswift” generate “$SRCROOT/R.generated.swift” as follows:  
<img width="589" alt="AutomatingAssets_xcodeproj" src="https://user-images.githubusercontent.com/47273077/141606316-4830a2c6-e130-406c-8bbe-05ba08bedbf4.png">

