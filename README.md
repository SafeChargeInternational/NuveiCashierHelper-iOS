Nuvei Cashier Helper SDK for iOS
==========================================

SETUP
------------
**Pods integration:**  
Add the next source(s) in the top of the Podfile:
```Podfile
source 'https://github.com/CocoaPods/Specs.git'
source 'https://github.com/Nuvei/nuvei-mobile-pods.git'
```

Add the next pods in under the relevant target(s) in the Podfile:
```Podfile
pod 'NuveiCashierHelper', '~> 3.3'
```

**Carthage integration:**  
Add the next pods in under the relevant target(s) in the Cartfile:
```Cartfile
github "SafeChargeInternational/NuveiCashierHelper-iOS" ~> 3.3
github "SafeChargeInternational/CodeScanner" ~> 1.8.2
```

USAGE
------------
The SDK works with WKWebView, so add the next line before you load Nuvei cashier page in the web view (e.g. in viewDidLoad of the view controller that displays the web view):
```swift
override func viewDidLoad() {
  super.viewDidLoad()

  webView.navigationDelegate = self
  
  // Prepare the cashier URL
  let rawUrl = "<YOUR CASHIER URL WITHOUT '#' TAG IN THE END>"
  // CashierHelper.update will throw an exception if rawUrl already contains '#'
  let finalUrl = try? CashierHelper.update(url: rawUrl, with: [.qr, .card]) ?? cashierUrl
  
  // Setup web view and the rest of the view controller...
  
  webView.load(URLRequest(url: finalUrl))

  // Call this line after the webView is part of the view hierarchy
  CashierHelper.connect(to: webView, viewController: self)

  // You can add a locale argument to this func in case your app is not fully localizaed and you want to use a pre-defined locale in all the SDK screens (e.g. Credit Card Scanner)
  //CashierHelper.connect(to: webView, viewController: self, locale: "cs_CZ")
}
```

Implement the `WKNavigationDelegate` in your view controller:
```swift
extension WebViewController: WKNavigationDelegate {
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        do {
            if let url = navigationAction.request.url?.absoluteString, try NuveiCashierHelper.handleURL(url) {
                // Handled by NuveiCashierHelper, no need to do anything else, cancel the URL loading
                decisionHandler(.cancel)
            } else {
                // Not handled by NuveiCashierHelper, add your logic and/or complete the loading of the URL
                decisionHandler(.allow)
            }
        } catch {
            debugPrint(#function, "error = \(error)")
            decisionHandler(.allow)
        }
    }
}
```

THIRD PARTY LIBS
------------
* [CodeScanner](https://github.com/SafeChargeInternational/CodeScanner)

LICENSE
------------
See: [LICENSE](https://github.com/SafeChargeInternational/NuveiCashierHelper-iOS/blob/master/LICENSE.md)
