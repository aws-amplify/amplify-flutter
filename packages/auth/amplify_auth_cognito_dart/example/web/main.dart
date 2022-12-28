// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:example_common/example_common.dart';

import 'components/app_component.dart';

Future<void> main() async {
  AWSLogger().logLevel = LogLevel.debug;
  renderApp(AppComponent());
}
