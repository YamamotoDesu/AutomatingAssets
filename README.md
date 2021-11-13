# **[How To Automate Asset Management in Your iOS Apps](https://betterprogramming.pub/how-to-automate-asset-management-in-your-ios-apps-1f465bcaa4ef)** 

Autocomplete resources like images, fonts and segues in Swift projects.
## Demo  
### Managing Images  
<img width="470" alt="Assets_xcassets" src="https://user-images.githubusercontent.com/47273077/141607116-bb9db3d5-ddad-454c-855b-30119a76685b.png">  

#### Currently you type:  
```swift 
 let myImage = UIImage(named: "MyImage")
```
#### With R.swift it becomes:

```swift 
 let rImage = R.image.myImage()
```

### Managing Colors  
<img width="629" alt="Notification_Center" src="https://user-images.githubusercontent.com/47273077/141607372-842da880-57d6-4f49-96c9-c93555ecba9a.png">

#### Currently you type:  
```swift 
  let myColor = UIColor(named: "myColor")
```
#### With R.swift it becomes:

```swift 
 let rColor = R.color.myColor
```

### Managing Localization  
<img width="840" alt="Localizable_strings" src="https://user-images.githubusercontent.com/47273077/141608523-41e1bee5-adcf-4fc0-8b22-1dce586661d3.png">

#### Currently you type:  
```swift 
  let myString = String(format: NSLocalizedString("Hello", comment: ""))
```
#### With R.swift it becomes:

```swift 
  let rString = R.string.localizable.hello()
```


## **[How to set up](https://github.com/mac-cain13/R.swift)**
### 1. Install it via CocoaPods by running pod install after adding this line to the Podfile:
```
pod ‘R.swift’
```

### 2. Add a new run script phase as follows:  
<img width="567" alt="OtherViews_と_AutomatingAssets_xcodeproj" src="https://user-images.githubusercontent.com/47273077/141606087-ea7f1f67-5380-4bff-b870-c45e1d30fb40.png">

### 3. Move it above the “Compile Sources,” as shown below:  
> The reason for is that the library will generate a R.generated.swift file, which will have all the properties that reference the assets used in our app. We want it generated before the app compiles all the files.  
<img width="560" alt="AutomatingAssets_xcodeproj" src="https://user-images.githubusercontent.com/47273077/141606136-99d18ab6-5928-4910-b851-87b88177f5af.png"> 

### 4. Paste the following script:
```
if [ $ACTION != "indexbuild" ]; then
  "$PODS_ROOT/R.swift/rswift" generate "$SRCROOT/R.generated.swift"
fi
```
<img width="641" alt="AutomatingAssets_xcodeproj" src="https://user-images.githubusercontent.com/47273077/141606661-d05e5026-5f3b-4613-8006-9c77be44c26d.png">

### 5. Add $TEMP_DIR/rswift-lastrun to Input Files and $SRCROOT/R.generated.swift to Output Files like this:  
<img width="774" alt="AutomatingAssets_xcodeproj" src="https://user-images.githubusercontent.com/47273077/141606464-815fbf14-f962-476b-a981-2e1a66a98887.png">


### 6. Build the app and open the project’s folder we will see the R.generated.swift file:  
<img width="456" alt="AutomatingAssets" src="https://user-images.githubusercontent.com/47273077/141606729-3079a81c-c012-47d7-97b5-208d795b4d8a.png">

### 7. Drag and drop the file into the Xcode project and leave “Copy items if needed” unchecked:  
<img width="359" alt="R_generated_swift_と_Editing_AutomatingAssets_README_md_at_main_·_YamamotoDesu_AutomatingAssets" src="https://user-images.githubusercontent.com/47273077/141606795-29b8feda-9149-4651-836a-4b378be5aaf0.png">


