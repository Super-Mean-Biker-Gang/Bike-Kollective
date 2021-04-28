import UIKit
import Flutter
import GoogleMaps
import flutter_config

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    var GOOGLE_MAPS_API_KEY = FlutterConfigPlugin.env(for: "API_KEY")
    GMSServices.provideAPIKey(String(GOOGLE_MAPS_API_KEY))
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
