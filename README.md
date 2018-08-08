# Urban Airship Adapter for Bluedot Point SDK

### Overview
> [Urban Airship](https://www.urbanairship.com/) is an American company which provides leading brands with a market-leading mobile engagement platform and digital wallet solution. [Wikipedia](https://en.wikipedia.org/wiki/Urban_Airship)

## Getting started

Add pod 'BluedotPointSDK', '~> 1.12' similar to the following to your Podfile:

    target 'MyApp' do
        pod 'BluedotPointSDK', '~> 1.12'
    end

Then run a pod install inside your terminal, or from CocoaPods.app.

After installing Cocoapods add following key-value into your application Info.plist

    <plist version="1.0">
    <string>ADD YOUR API KEY</string>
    </plist>

Do not forget to replace value with your API key and authenticate with the service by calling

    UABluedotLocationServiceAdapter.shared().authenticate()

Add `AirshipConfig.plist` to you project as described at [Urban Airship iOS setup documentation](https://docs.urbanairship.com/platform/react-native/#ios)

Enable Background Push by including the `UIBackgroundModes` key with the remote-notification value in your `Info.plist` and make it is set to `Required background modes` and `remote-notification` is set to `App downloads content in response to push notifications`.

> Note: You need to upload your Apple Push Notification Service (APNs) Certificate in Urban Airship portal See the APNs Setup documentation for detailed instructions on obtaining your .p12 certificate.

Implement `UAPushNotificationDelegate` and `UABluedotLocationServiceAdapterDelegate` protocols in your application. Assign these implementations, e.g.

    UAirship.push().pushNotificationDelegate = self
    UABluedotLocationServiceAdapter.shared().delegate = self

For more details please visit [Bluedot documentation](https://docs.bluedot.io) and [Urban Airship SDK for iOS](https://docs.urbanairship.com/reference/libraries/ios/latest/index.html) and check out our [integration example](https://github.com/Bluedot-Innovation/PointSDK-UrbanAirshipIntegrationExample-iOS)