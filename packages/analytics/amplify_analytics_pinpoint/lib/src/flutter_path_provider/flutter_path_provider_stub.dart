// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore: implementation_imports
import 'package:amplify_analytics_pinpoint_dart/src/impl/flutter_provider_interfaces/cached_events_path_provider.dart';

/// {@template amplify_analytics_pinpoint.flutter_path_provider}
/// Provides device storage location.
/// {@endtemplate}
class FlutterPathProvider implements CachedEventsPathProvider {
  @override
  Future<String> getApplicationSupportPath() async {
    throw UnsupportedError(
      'No suitable implementation was found on this platform.',
    );
  }
}
