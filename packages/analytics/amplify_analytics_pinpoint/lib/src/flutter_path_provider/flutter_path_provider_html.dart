// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore: implementation_imports
import 'package:amplify_analytics_pinpoint_dart/src/impl/flutter_provider_interfaces/cached_events_path_provider.dart';

/// {@macro amplify_analytics_pinpoint.flutter_path_provider}
class FlutterPathProvider implements CachedEventsPathProvider {
  @override
  Future<String> getApplicationSupportPath() async {
    return '';
  }
}
