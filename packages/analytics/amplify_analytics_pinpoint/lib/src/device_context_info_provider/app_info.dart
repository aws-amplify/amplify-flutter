// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
