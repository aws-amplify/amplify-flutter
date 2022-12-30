// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:test/test.dart';

abstract class MockPluginInterface<Value extends Object>
    extends AmplifyPluginInterface {
  Value getValue();
}

class IntMockPlugin extends MockPluginInterface<int> {
  @override
  Category get category => Category.analytics;

  @override
  int getValue() => 42;
}

class StringMockPlugin extends MockPluginInterface<String> {
  @override
  Category get category => Category.analytics;

  @override
  String getValue() => '42';
}

class MockCategory<Value extends Object, P extends MockPluginInterface<Value>>
    extends AmplifyCategory<P> {
  MockCategory([this._pluginOverride]);

  final P? _pluginOverride;
  P get _plugin => _pluginOverride ?? defaultPlugin;

  @override
  Category get category => Category.analytics;

  MockCategory<GetValue, GetPlugin> getPlugin<GetValue extends Object,
          GetPlugin extends MockPluginInterface<GetValue>>(
    MockPluginKey<GetValue, GetPlugin> pluginKey,
  ) =>
      MockCategory(
        plugins.singleWhere(
          (p) => p is GetPlugin,
          orElse: () => throw Exception(),
        ) as GetPlugin,
      );

  Value getValue() => _plugin.getValue();
}

abstract class MockPluginKey<Value extends Object,
    P extends MockPluginInterface<Value>> extends AmplifyPluginKey<P> {
  const MockPluginKey();
}

class IntMockPluginKey extends MockPluginKey<int, IntMockPlugin> {
  const IntMockPluginKey();

  @override
  String get runtimeTypeName => 'IntMockPlugin';
}

class StringMockPluginKey extends MockPluginKey<String, StringMockPlugin> {
  const StringMockPluginKey();

  @override
  String get runtimeTypeName => 'StringMockPlugin';
}

void main() {
  group('AmplifyPluginKey', () {
    late MockCategory category;
    late IntMockPlugin intPlugin;
    late StringMockPlugin stringPlugin;
    final authProviderRepo = AmplifyAuthProviderRepository();

    setUp(() {
      category = MockCategory();
      intPlugin = IntMockPlugin();
      stringPlugin = StringMockPlugin();
    });

    test('can register multiple plugins', () {
      expect(
        category.addPlugin(
          intPlugin,
          authProviderRepo: authProviderRepo,
        ),
        completes,
      );
      expect(
        category.addPlugin(
          stringPlugin,
          authProviderRepo: authProviderRepo,
        ),
        completes,
      );
    });

    test('getting unregistered plugin throws', () async {
      expect(
        () => category.getPlugin(const IntMockPluginKey()),
        throwsA(isA<Exception>()),
      );
    });

    test('getPlugin returns reified types', () async {
      await category.addPlugin(
        intPlugin,
        authProviderRepo: authProviderRepo,
      );
      await category.addPlugin(
        stringPlugin,
        authProviderRepo: authProviderRepo,
      );

      final getIntPlugin = category.getPlugin(const IntMockPluginKey());
      final getStringPlugin = category.getPlugin(const StringMockPluginKey());

      final int intValue = getIntPlugin.getValue();
      final String stringValue = getStringPlugin.getValue();

      expect(intValue, 42);
      expect(stringValue, '42');
    });
  });
}
