// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';

class MockLifecycleProvider implements AppLifecycleProvider {
  void Function()? onBackground;
  void Function()? onForeground;

  void triggerOnBackgroundListener() {
    onBackground?.call();
  }

  void triggerOnForegroundListener() {
    onForeground?.call();
  }

  @override
  void setOnBackgroundListener(void Function() onBackground) {
    this.onBackground = onBackground;
  }

  @override
  void setOnForegroundListener(void Function() onForeground) {
    this.onForeground = onForeground;
  }

  @override
  void startObserving() {}

  @override
  void stopObserving() {}
}
