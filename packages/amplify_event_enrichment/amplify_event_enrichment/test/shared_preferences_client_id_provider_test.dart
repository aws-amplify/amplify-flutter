// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_event_enrichment/amplify_event_enrichment.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences_platform_interface/shared_preferences_platform_interface.dart';

/// A store whose writes the platform rejects.
class _RejectingStore extends InMemorySharedPreferencesStore {
  _RejectingStore() : super.empty();

  @override
  Future<bool> setValue(String valueType, String key, Object value) async =>
      false;
}

/// A store whose writes throw.
class _ThrowingStore extends InMemorySharedPreferencesStore {
  _ThrowingStore() : super.empty();

  @override
  Future<bool> setValue(String valueType, String key, Object value) async =>
      throw Exception('platform failure');
}

/// A store whose writes wait for [gate], then succeed only if [accept].
class _GatedStore extends InMemorySharedPreferencesStore {
  _GatedStore({required this.accept}) : super.empty();

  bool accept;
  final Completer<void> gate = Completer();
  int writes = 0;

  @override
  Future<bool> setValue(String valueType, String key, Object value) async {
    writes++;
    await gate.future;
    return accept && await super.setValue(valueType, key, value);
  }
}

/// A store that holds the first write until [gate] and rejects it, and
/// accepts every later write.
class _RejectFirstStore extends InMemorySharedPreferencesStore {
  _RejectFirstStore() : super.empty();

  final Completer<void> gate = Completer();
  int writes = 0;

  @override
  Future<bool> setValue(String valueType, String key, Object value) async {
    if (writes++ > 0) return super.setValue(valueType, key, value);
    await gate.future;
    return false;
  }
}

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

    test('throws when the platform rejects the write', () async {
      SharedPreferencesStorePlatform.instance = _RejectingStore();

      await expectLater(provider.getClientId(), throwsStateError);
      final prefs = await SharedPreferences.getInstance();
      expect(
        prefs.getString(zClientIdStorageKey),
        isNull,
        reason: 'an unpersisted ID must not stay readable from the cache',
      );
    });

    test('rethrows when the platform write throws', () async {
      SharedPreferencesStorePlatform.instance = _ThrowingStore();

      await expectLater(provider.getClientId(), throwsException);
      final prefs = await SharedPreferences.getInstance();
      expect(
        prefs.getString(zClientIdStorageKey),
        isNull,
        reason: 'an unpersisted ID must not stay readable from the cache',
      );
    });

    test('a rejected write keeps an ID another package stored', () async {
      final store = _RejectFirstStore();
      SharedPreferencesStorePlatform.instance = store;

      final call = provider.getClientId();
      await Future<void>.delayed(Duration.zero);
      // Another package that read the key before this write began stores its
      // own ID while this write is pending.
      final prefs = await SharedPreferences.getInstance();
      expect(await prefs.setString(zClientIdStorageKey, 'other-id'), isTrue);
      store.gate.complete();

      await expectLater(call, throwsStateError);
      expect(prefs.getString(zClientIdStorageKey), 'other-id');
      expect(
        (await store.getAll())['flutter.$zClientIdStorageKey'],
        'other-id',
      );
    });

    group('concurrent calls while the write is pending', () {
      test('get the ID only once it is persisted', () async {
        final store = _GatedStore(accept: true);
        SharedPreferencesStorePlatform.instance = store;

        var resolved = 0;
        final calls = List.generate(
          5,
          (_) => provider.getClientId().whenComplete(() => resolved++),
        );
        await Future<void>.delayed(Duration.zero);
        expect(resolved, 0, reason: 'the write has not been confirmed');
        expect(store.writes, 1);

        store.gate.complete();
        final ids = await Future.wait(calls);

        expect(ids.toSet(), hasLength(1));
        expect(
          (await store.getAll())['flutter.$zClientIdStorageKey'],
          ids.first,
        );
      });

      test('all throw when the write is rejected', () async {
        final store = _GatedStore(accept: false);
        SharedPreferencesStorePlatform.instance = store;

        final calls = List.generate(5, (_) => provider.getClientId());
        await Future<void>.delayed(Duration.zero);
        store.gate.complete();

        for (final call in calls) {
          await expectLater(call, throwsStateError);
        }
        expect(store.writes, 1);
        expect(await store.getAll(), isEmpty);
        final prefs = await SharedPreferences.getInstance();
        expect(prefs.getString(zClientIdStorageKey), isNull);
      });

      test('a later call retries after a rejected write', () async {
        final store = _GatedStore(accept: false);
        SharedPreferencesStorePlatform.instance = store;
        store.gate.complete();
        await expectLater(provider.getClientId(), throwsStateError);

        store.accept = true;
        final id = await provider.getClientId();

        expect(store.writes, 2);
        expect((await store.getAll())['flutter.$zClientIdStorageKey'], id);
      });
    });
  });
}
