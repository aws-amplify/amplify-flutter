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

/// {@template amplify_analytics_pinpoint.app_info}
/// Data representation of AppInfo required for Pinpoint EndpointDemographic.
///
/// For more details see the Pinpoint [Endpoint](https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-endpoints.html) online spec.
/// {@endtemplate}
class AppInfo {
  /// {@macro amplify_analytics_pinpoint.app_info}
  const AppInfo(this.appName, this.packageName, this.version);

  /// The app name.
  ///
  /// `CFBundleDisplayName` on iOS, `application/label` on Android.
  final String? appName;

  /// The package name.
  ///
  /// `bundleIdentifier` on iOS, `getPackageName` on Android.
  final String? packageName;

  /// The package version.
  ///
  /// `CFBundleShortVersionString` on iOS, `versionName` on Android.
  final String? version;
}
