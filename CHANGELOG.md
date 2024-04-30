# Change Log

## v3.3.0

- `[NEW]` Added an optional `locale` argument to `connect` function. It is intended for apps that are not fully localized and prefer to use a pre-defined/hard-coded locale in all the SDK screens (e.g. Credit Card Scanner)

## v3.2.0

- Updated translations of the credit card scanner hint
- `[NEW]` Added CashierHelper.setCashierBackButtonClicked (shall be enabled in Nuvei backend)

## v3.1.0

- `[NEW]` Added Spanish localization

## v3.0.1

- `[FIX]` Fixed CocoaPods integration

## v3.0

- `[FIX]` Fixed localization for Carthage and custom integration
- `[NEW]` Implemented credit card scanner as a native component (without any third party libraries)
- `[NEW]` Compiled the framework as XCFramework to support resources inside the framework and to support future versions of Xcode/Swift
- `[NEW]` Added cashier URL building with abilities (let the SDK integrate all the required abilities to the URL - e.g. scanQR and scanCard)
- **[Breaking change]** Renamed `NuveiCashierHelper` class to `CashierHelper`

## v2.2

- Compiled with Swift 5.5 (Xcode 13)

## v2.1

- `[FIX]` Better handling for camera permission

## v2.0

- `[NEW]` Added localization for en, cz, pl, sk, hr and ro
- `[NEW]` Renamed the framework to `NuveiCashierHelper`

