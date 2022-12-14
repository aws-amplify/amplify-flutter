// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:test/test.dart';

class MyDependency {
  int get value => 42;
}

abstract class MyInterface {
  String get value;
}

class MyInterfaceImpl implements MyInterface {
  @override
  String get value => 'abc';
}

class NeedsDependencyManager {
  const NeedsDependencyManager(this.manager);

  final DependencyManager manager;
}

class NeedsDependencyManagerAndDispatcher {
  const NeedsDependencyManagerAndDispatcher(this.manager, this.dispatcher);

  final DependencyManager manager;
  final Dispatcher dispatcher;
}

void main() {
  late DependencyManager dependencyManager;

  group('DependencyManager', () {
    setUp(() {
      dependencyManager = DependencyManager();
    });

    test('retrieves registered dependency', () {
      dependencyManager.addBuilder<MyDependency>(MyDependency.new);

      final myDep = dependencyManager.getOrCreate<MyDependency>();
      expect(myDep.value, equals(42));
    });

    test('retrieves registered interface', () {
      dependencyManager.addBuilder<MyInterface>(MyInterfaceImpl.new);

      final myDep = dependencyManager.getOrCreate<MyInterface>();
      expect(myDep.value, equals('abc'));
    });

    test('throws for missing builder', () {
      expect(() => dependencyManager.get<MyDependency>(), returnsNormally);
      expect(dependencyManager.get<MyDependency>(), isNull);
      expect(
        () => dependencyManager.getOrCreate<MyDependency>(),
        throwsStateError,
      );
    });

    test('injects dependency manager', () {
      const token = Token<NeedsDependencyManager>([
        Token<DependencyManager>(),
      ]);
      dependencyManager.addBuilder<NeedsDependencyManager>(
        NeedsDependencyManager.new,
        token,
      );

      expect(
        () => dependencyManager.getOrCreate<NeedsDependencyManager>(token),
        returnsNormally,
      );
    });

    test('injects dependency manager and dispatcher', () {
      const token = Token<NeedsDependencyManagerAndDispatcher>([
        Token<DependencyManager>(),
        Token<Dispatcher>(),
      ]);
      dependencyManager.addBuilder<Dispatcher>(() => (_) {});
      dependencyManager.addBuilder<NeedsDependencyManagerAndDispatcher>(
        NeedsDependencyManagerAndDispatcher.new,
        token,
      );

      expect(
        () => dependencyManager
            .getOrCreate<NeedsDependencyManagerAndDispatcher>(token),
        returnsNormally,
      );
    });
  });
}
