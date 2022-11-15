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

/// {@template amplify_analytics_pinpoint_dart.app_lifecycle_provider}
/// Provides callbacks to notify listeners when app is foregrounded or backgrounded
/// {@endtemplate}
abstract class AppLifecycleProvider {
  /// {@macro amplify_analytics_pinpoint_dart.app_lifecycle_provider}
  AppLifecycleProvider();

  /// [onForeground] should be called when app goes to foreground
  void setOnForegroundListener(void Function() onForeground);

  /// [onBackground] should be called when app goes to background
  void setOnBackgroundListener(void Function() onBackground);

  /// Start observing app foreground/background changes
  void startObserving();

  /// Stop observing app foreground/background changes
  void stopObserving();
}
