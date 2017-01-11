# DeadPool-bin
DeadPool SDK binary version
> Sniff application & device infomation and combined with vendor infomation, report to RMD for simulator identification .

## Usage

```objc
#import <DeadPool/DeadPool.h>

...
NSDictionary *vendorInfo = @{}; // caller vendor info
[DPLSniffer reportWithVendorInfo:vendorInfo 
               completionHandler:^(NSError * _Nullable error) {
    if (error) {
        // handle report failed
    } else {
        // handle report succeed
    }
}];
...

```

## Requirements
* iOS 7.0+

## Installation

DeadPool is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "DeadPool-bin"
```

## Change Log

v0.1.0

* First binary version

## Author

leo, liangliang.gao@ele.me

## License

DeadPool is available under the MIT license. See the LICENSE file for more info.
