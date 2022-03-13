
Oficial link:
https://developer.apple.com/documentation/apptrackingtransparency

Usually you add this extensions because you are using ADs, Analitycs or any other kind of service that
can collect data, so just call AppTrackingTransparency_request() before of any *_Load() function (preferible a
start your game)

You can change the NSUserTrackingUsageDescription in this place: 
Asset Browser -> ext_AppTrackingTransparency -> Extra Platforms -> iOS -> Inject To info.plist

Have Fun :)
