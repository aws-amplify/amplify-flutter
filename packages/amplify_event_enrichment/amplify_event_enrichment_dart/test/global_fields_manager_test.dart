// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_event_enrichment_dart/src/global_fields_manager.dart';
import 'package:test/test.dart';

void main() {
  group('GlobalFieldsManager', () {
    late GlobalFieldsManager manager;

    setUp(() {
      manager = GlobalFieldsManager();
    });

    test('starts empty', () {
      expect(manager.attributes, isEmpty);
      expect(manager.metrics, isEmpty);
    });

    test('addAttribute stores value', () {
      manager.addAttribute('key1', 'value1');
      expect(manager.attributes['key1'], 'value1');
    });

    test('addAttribute overwrites existing key', () {
      manager
        ..addAttribute('key1', 'value1')
        ..addAttribute('key1', 'value2');
      expect(manager.attributes['key1'], 'value2');
    });

    test('removeAttribute removes key', () {
      manager
        ..addAttribute('key1', 'value1')
        ..removeAttribute('key1');
      expect(manager.attributes, isEmpty);
    });

    test('removeAttribute is no-op for missing key', () {
      manager.removeAttribute('nonexistent');
      expect(manager.attributes, isEmpty);
    });

    test('addMetric stores value', () {
      manager.addMetric('metric1', 3.14);
      expect(manager.metrics['metric1'], 3.14);
    });

    test('removeMetric removes key', () {
      manager
        ..addMetric('metric1', 1)
        ..removeMetric('metric1');
      expect(manager.metrics, isEmpty);
    });

    test('attributes view is unmodifiable', () {
      manager.addAttribute('key', 'val');
      expect(
        () => manager.attributes['new'] = 'fail',
        throwsA(isA<UnsupportedError>()),
      );
    });

    test('metrics view is unmodifiable', () {
      manager.addMetric('key', 1);
      expect(
        () => manager.metrics['new'] = 2.0,
        throwsA(isA<UnsupportedError>()),
      );
    });
  });
}
