// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//  http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.

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
