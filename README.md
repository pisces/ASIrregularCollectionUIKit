# ASIrregularCollectionUIKit

![Swift](https://img.shields.io/badge/Swift-3-orange.svg)
![Objective-C](https://img.shields.io/badge/Objective-C-orange.svg)
[![CI Status](http://img.shields.io/travis/pisces/ASIrregularCollectionUIKit.svg?style=flat)](https://travis-ci.org/pisces/ASIrregularCollectionUIKit)
[![Version](https://img.shields.io/cocoapods/v/ASIrregularCollectionUIKit.svg?style=flat)](http://cocoapods.org/pods/ASIrregularCollectionUIKit)
[![License](https://img.shields.io/cocoapods/l/ASIrregularCollectionUIKit.svg?style=flat)](http://cocoapods.org/pods/ASIrregularCollectionUIKit)
[![Platform](https://img.shields.io/cocoapods/p/ASIrregularCollectionUIKit.svg?style=flat)](http://cocoapods.org/pods/ASIrregularCollectionUIKit)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## You can implement layout of collection view like this screenshot :)
<p valign="top">
<img src="screenshots/sh_002.png" width="320"/>
<img src="screenshots/sh_003.png" width="320"/>
</p>

### To implement collection view with the class ASIrregularCollectionViewController using UIKit for Texture
```Swift
class DemoViewController: ASIrregularCollectionViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionViewLayout.columnSpacing = 1
        collectionViewLayout.numberOfColumns = 3
        collectionViewLayout.sectionInset = UIEdgeInsetsMake(1, 1, 1, 1)
    }
    override func numberOfSections(in collectionNode: ASCollectionNode) -> Int {
        return 1
    }
    override func collectionNode(_ collectionNode: ASCollectionNode, numberOfItemsInSection section: Int) -> Int {
        return contents.count
    }
    override func collectionNode(_ collectionNode: ASCollectionNode, nodeBlockForItemAt indexPath: IndexPath) -> ASCellNodeBlock {
        return {
            return SampleViewCellNode(content: self.contents[indexPath.item])
        }
    }
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, originalItemSizeAt indexPath: IndexPath) -> CGSize {
        let content = contents[indexPath.item]
        return CGSize(width: CGFloat(content.width), height: CGFloat(content.height))
    }
}
```

## Requirements

iOS Deployment Target 8.0 higher

## Installation

ASIrregularCollectionUIKit is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "ASIrregularCollectionUIKit"
```

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks.

You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```bash
$ brew update
$ brew install carthage
```

To integrate Alamofire into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "pisces/ASIrregularCollectionUIKit" ~> 1.0.0
```

Run `carthage update` to build the framework and drag the built `ASIrregularCollectionUIKit.framework` into your Xcode project.

## Author

Steve Kim, hh963103@gmail.com

## License

ASIrregularCollectionUIKit is available under the MIT license. See the LICENSE file for more info.
