// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_event_enrichment/amplify_event_enrichment.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

// A second package reading or creating the same key through the same
// `getInstance()` cache, as the Connect client's device ID store does.
Future<String> _otherPackageReadOrCreate(String newId) async {
  final prefs = await SharedPreferences.getInstance();
  final existing = prefs.getString(zClientIdStorageKey);
  if (existing != null && existing.isNotEmpty) return existing;
  await prefs.setString(zClientIdStorageKey, newId);
  return newId;
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  const provider = SharedPreferencesClientIdProvider();

  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

  group('SharedPreferencesClientIdProvider', () {
    test('returns an existing ID', () async {
      SharedPreferences.setMockInitialValues({zClientIdStorageKey: 'stored'});
      expect(await provider.getClientId(), 'stored');
    });

    test('replaces and persists an empty stored ID', () async {
      SharedPreferences.setMockInitialValues({zClientIdStorageKey: ''});
      final id = await provider.getClientId();

      expect(id, isNotEmpty);
      final prefs = await SharedPreferences.getInstance();
      expect(prefs.getString(zClientIdStorageKey), id);
    });

    test('concurrent calls persist and return one ID', () async {
      final ids = await Future.wait(
        List.generate(10, (_) => provider.getClientId()),
      );

      expect(ids.toSet(), hasLength(1));
      final prefs = await SharedPreferences.getInstance();
      expect(prefs.getString(zClientIdStorageKey), ids.first);
    });

    test('concurrent calls with another package resolve one ID', () async {
      final ids = await Future.wait([
        _otherPackageReadOrCreate('other-package-id'),
        provider.getClientId(),
        _otherPackageReadOrCreate('other-package-id-2'),
        provider.getClientId(),
      ]);

      expect(ids.toSet(), hasLength(1));
      final prefs = await SharedPreferences.getInstance();
      expect(prefs.getString(zClientIdStorageKey), ids.first);
    });
  });
}
