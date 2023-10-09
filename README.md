
  

# Flutter Watchtower SDK

This is watchtower client implementation. The client provides the main functionality:
 - to collect basic application data
 - send events
 - record user sessions

Required application data:
 - **Application id:** Unique application id receives from the product manager.
 - **Application bundle:** Unique application bundle receives from the product manager.
 - **Application key:** Unique application bundle receives from the product manager.
 - **Aplication version:** Current application version. Generates by the developer.

## SDK events
### App start event
Uses to send an application start event. Sends automatically by SDK.
```dart
Future<void> sendAppStartEvent() async
```

### Log event
Uses to send a log event.
```dart
Future<void> sendLogEvent({Level?  level, String?  message, String?  moduleName}) async 
```
**level**: [Level?] Dart logging level.
**message**: [String?] Log message.
**moduleName**: [String?] Module name or class name caused a log message.

### Open link event
Uses to send opening web URL information.
```dart
Future<void> sendOpenLinkEvent({required  String  uri, int?  responseCode, String?  responseText}) async
```
 - **uri**:  [String] Opening URL. *(Required)*
 - **responseCode**: [Int?] Response code, received from a server.
 - **responseText**: [String?] Response text, received from a server.

### Custom event
Uses to send a custom event with random data.
```dart
Future<void> sendCustomEvent({required  String  data}) async
```
**data**: [String] event data. *(Required argument)*

## SDK functions
### SDK init
Init and configure Watchtower SDK. Should be requested before any other actions.
```dart
Future<void> init({required  String  appId, required  String  appKey, String  host  =  'watchtower.cyou', int  port  =  8008}) async
```
 - **appId**: [String] application id *(Required)*
 - **appKey**: [String] application key *(Required)*
 - **host**: [String] watchdog server host. *(Default value: watchtower.cyou)*
 - **port**: [int] watchdog server port. *(Default value: 8008)*

### Update user data
Update user data stored on device. Currently receives gaid only
```dart
Future<void> updateUserAppData({String?  gaid}) async
```
**gaid**: [String?] User GAID value

### Clear user data
Clear all user and application data
```dart
Future<void> clearData() async
```

## Models
### Application data model
```dart
class AppData {
	final  String  appId;
	final  String  appBundle;
	final  String  appVersion;
	final  String  appKey;
}
```

 - **appId:** [String] Unique application id receives from the product manager. *(Required)*
 - **appBundle:** [String] Unique application bundle receives from the product manager. *(Required)*
 - **appVersion:** [String] Current application version. Generates by the developer. *(Required)*
 - **appKey:** [String] Unique application bundle receives from the product manager. *(Required)*
