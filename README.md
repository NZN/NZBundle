#NZBundle ![License MIT](https://go-shields.herokuapp.com/license-MIT-blue.png)

<p align="center">
  <img src="http://s24.postimg.org/r7y1jch1h/NZBundle.png" alt="NZBundle" title="NZBundle" width="320" height="568">
</p>

Easily access and manipulate the the Info.plist file of your project.

It can be used, for example, to add some alphanumeric values ​​in the version of the application APIs that are used by track view analysis.

[![Build Status](https://api.travis-ci.org/NZN/NZBundle.png)](https://api.travis-ci.org/NZN/NZBundle.png)
[![Cocoapods](https://cocoapod-badges.herokuapp.com/v/NZBundle/badge.png)](http://beta.cocoapods.org/?q=name%3Anzbundle%2A)
[![Cocoapods](https://cocoapod-badges.herokuapp.com/p/NZBundle/badge.png)](http://beta.cocoapods.org/?q=name%3Anzbundle%2A)
[![Analytics](https://ga-beacon.appspot.com/UA-48753665-1/NZN/NZBundle/README.md)](https://github.com/igrigorik/ga-beacon)

## Requirements

NZBundle works on iOS 5.0+ version and is compatible with ARC projects. It depends on the following Apple frameworks, which should already be included with most Xcode templates:

* Foundation.framework

You will need LLVM 3.0 or later in order to build NZBundle.

## Adding NZBundle to your project

### Cocoapods

[CocoaPods](http://cocoapods.org) is the recommended way to add NZBundle to your project.

* Add a pod entry for NZBundle to your Podfile:

```
pod 'NZBundle'
```

* Install the pod(s) by running:

```
pod install
```

### Source files

Alternatively you can directly add source files to your project.

1. Download the [latest code version](https://github.com/NZN/NZBundle/archive/master.zip) or add the repository as a git submodule to your git-tracked project.
2. Open your project in Xcode, then drag and drop all files at `NZBundle` folder onto your project (use the "Product Navigator view"). Make sure to select Copy items when asked if you extracted the code archive outside of your project.

## Usage

* Setup version name with default values (a = Apple):
	* Debug / Relase: `X.X.Xa alpha`
	* Distribution: `X.X.Xa`

```objective-c
#import "NZBundle.h"
...
[NZBundle setupShortVersion];
```

* Setup custom version name:
	
```objective-c
#import "NZBundle.h"
...
[NZBundle setShortVersionForDevelopment:@"dev" andDistribution:@"prd"];
```

* Acess `Info.plist` values:
	
```objective-c
#import "NZBundle.h"
...

// CFBundleInitialShortVersionString (custom key)
// this key is created to save initial short value
NSString shortVersion = [NZBundle initialShortVersion];

// CFBundleShortVersionString
NSString shortVersion = [NZBundle shortVersion];

// UIMainStoryboardFile
NSString phoneStoryboard = [NZBundle mainStoryboardFileName];

// UIMainStoryboardFile~ipad
NSString padStoryboard = [NZBundle mainStoryboardFilePadName];
```

### Log

To enable the logs in debug/release mode, add `#define NZDEBUG` at `*-Prefix.pch` file in your project.

## License

This code is distributed under the terms and conditions of the [MIT license](LICENSE).

## Change-log

A brief summary of each NZBundle release can be found on the [wiki](https://github.com/NZN/NZBundle/wiki/Change-log).
