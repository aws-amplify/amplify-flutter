// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:path_provider/path_provider.dart';

/// {@macro amplify_analytics_pinpoint.flutter_path_provider}
class FlutterPathProvider implements CachedEventsPathProvider {
  @override
  Future<String> getApplicationSupportPath() async {
    return (await getApplicationSupportDirectory()).path;
  }
}
