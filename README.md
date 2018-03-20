# QRCodeScannerFramework
A Framework for scanning QR code in iOS using AVFoundation ,
Written in Swift 4.

## Installation Using CocoaPods

```
pod 'QRCodeScannerFramework', :git => 'https://github.com/husseinkishk/QRCodeScannerFramework.git', :tag => '1.0.0'
```

## Usage

### Swift 4
1- Import the framework into your ViewController
```
import QRCodeScannerFramework
```
2- Now Conform the protocol QrScannerDelegate to get the scanned data like this
```
extension ViewController: QrScannerDelegate {
    func getScannedData(data: String) {
        print(data) //here's the scan result
    }
}
```
3- Create an object in your viewController
```
let vc = QRScannerController()
```

4- In the viewDidLoad method Add this to set the delegate to your viewController
```
vc.qrScannerDelegate = self
```
5- Navigation to QRScannerController

```
self.navigationController?.pushViewController(vc, animated: true)

```
6- Add the following key in the info.plist file  to get the camera permission access

```
Privacy - Camera Usage Description
```

## License
```
Copyright (c) 2018

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.


THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

