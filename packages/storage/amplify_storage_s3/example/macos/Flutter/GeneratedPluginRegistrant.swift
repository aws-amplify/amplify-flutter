//
//  Generated file. Do not edit.
//

import FlutterMacOS
import Foundation

import amplify_auth_cognito
import amplify_secure_storage
import device_info_plus
import package_info_plus
import path_provider_foundation
import url_launcher_macos

func RegisterGeneratedPlugins(registry: FlutterPluginRegistry) {
  AmplifyAuthCognitoPlugin.register(with: registry.registrar(forPlugin: "AmplifyAuthCognitoPlugin"))
  AmplifySecureStoragePlugin.register(with: registry.registrar(forPlugin: "AmplifySecureStoragePlugin"))
  DeviceInfoPlusMacosPlugin.register(with: registry.registrar(forPlugin: "DeviceInfoPlusMacosPlugin"))
  FLTPackageInfoPlusPlugin.register(with: registry.registrar(forPlugin: "FLTPackageInfoPlusPlugin"))
  PathProviderPlugin.register(with: registry.registrar(forPlugin: "PathProviderPlugin"))
  UrlLauncherPlugin.register(with: registry.registrar(forPlugin: "UrlLauncherPlugin"))
}
