#NZBundle

NZBundle is a NSBundle extension. Its purpose is to customize the values ​​of the Info.plist file when they are loaded into memory.

It can be used, for example, to add some alphanumeric values ​​in the version of the application APIs that are used by track view analysis.

## Requirements

NZBundle works on any iOS version and is compatible with both ARC and non-ARC projects. It depends on the following Apple frameworks, which should already be included with most Xcode templates:

* Foundation.framework

You will need LLVM 3.0 or later in order to build NZBundle.

## Adding NZBundle to your project

### Cocoapods

[CocoaPods](http://cocoapods.org) is the recommended way to add NZBundle to your project.

* Add a pod entry for NZBundle to your Podfile `pod 'NZBundle', '~> 0.0.1'`
* Install the pod(s) by running `pod install`.

### Source files

Alternatively you can directly add source files to your project.

1. Download the latest code version or add the repository as a git submodule to your git-tracked project.
2. Open your project in Xcode, then drag and drop all files at NZBundle folder onto your project (use the "Product Navigator view"). Make sure to select Copy items when asked if you extracted the code archive outside of your project.

## Usage

After installing it through CocoaPods or copy the files to your project, you will already be using the NZBundle.

The NZBundle overrides the `+(void)load;` method of NSObject class, which is called every time the application starts. Therefore, by default the name of your version will automatically change.

For example, if the version of your app is `1.0.0`, your debug/release version will be change to `1.0.0a alpha` and your distribution version `1.0.0a`.

You can also customize the version name as follows: (It is recommended add this line at `application:willFinishLaunchingWithOptions` of your application.)

```objective-c
[[NSBundle mainBundle] setupShortVersionForDevelopment:@"dev" andDistribution:@"prd"];
```

To enable the logs in debug/release mode, add `#define NZDEBUG` at `*-Prefix.pch` file in your project.

## License

This code is distributed under the terms and conditions of the [MIT license](LICENSE).

## Change-log

A brief summary of each NZBundle release can be found on the [wiki](https://github.com/NZN/NZBundle/wiki/Change-log).