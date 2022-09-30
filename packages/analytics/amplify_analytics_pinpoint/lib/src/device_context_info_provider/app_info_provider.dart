// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:package_info_plus/package_info_plus.dart';

/// Data representation of AppInfo required for Pinpoint EndpointDemographic:
/// https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-endpoints.html
class AppInfo {
  /// The app name. `CFBundleDisplayName` on iOS, `application/label` on Android.
  String? appName;

  /// The package name. `bundleIdentifier` on iOS, `getPackageName` on Android.
  String? packageName;

  /// The package version. `CFBundleShortVersionString` on iOS, `versionName` on Android.
  String? version;

  /// Constructs AppInfo data object with provided information
  AppInfo(this.appName, this.packageName, this.version);
}

/// Provides AppInfo from Flutter -> Dart
class AppInfoProvider {
  static Future<AppInfo> getAppData() async {
    final info = await PackageInfo.fromPlatform();
    return AppInfo(
      info.appName,
      info.packageName,
      info.version,
    );
  }
}
