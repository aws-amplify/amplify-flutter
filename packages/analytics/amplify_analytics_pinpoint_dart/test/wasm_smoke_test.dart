// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('browser')
library;

import 'dart:convert';

import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/common/serializers.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/event_item_response.dart';
import 'package:aws_common/aws_common.dart';
import 'package:built_value/serializer.dart';
import 'package:test/test.dart';

Serializers _pinpointSerializers() {
  final builder = Serializers().toBuilder()..addAll(serializers);
  for (final entry in builderFactories.entries) {
    builder.addBuilderFactory(entry.key, entry.value);
  }
  return builder.build();
}

/// Smoke test: proves dart2wasm compilation + browser execution works.
void main() {
  group('WASM smoke test', () {
    test('zIsWeb is true on web targets', () {
      expect(zIsWeb, isTrue, reason: 'zIsWeb must be true on web targets');
    });

    test('plugin is constructable', () {
      expect(
        AmplifyAnalyticsPinpointDart(),
        isA<AmplifyAnalyticsPinpointDart>(),
      );
    });

    // Pinpoint returns `StatusCode` as a JSON number that the smithy models
    // cast straight to `int`. dart2js treats every JSON number as both int and
    // double; dart2wasm does not, so round-trip a model to guard that path.
    test('EventItemResponse round-trips its int StatusCode', () {
      final serializers = _pinpointSerializers();
      final wire = jsonEncode(
        serializers.serialize(EventItemResponse(statusCode: 202)),
      );
      final restored =
          serializers.deserialize(jsonDecode(wire)) as EventItemResponse;
      expect(restored.statusCode, 202);
    });
  });
}
