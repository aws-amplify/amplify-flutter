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

class NeedsClosing implements Closeable {
  bool isClosed = false;

  @override
  void close() => isClosed = true;
}

class MyDispatcher with Dispatcher {
  @override
  EventCompleter<StateMachineEvent, StateMachineState> dispatch(
    StateMachineEvent event,
  ) =>
      EventCompleter(event);
}

void main() {
  late DependencyManager dependencyManager;
  late DependencyManager scopedDependencyManager;

  group('DependencyManager', () {
    setUp(() {
      dependencyManager = DependencyManager();
      scopedDependencyManager = DependencyManager.scoped(dependencyManager);
    });

    test('retrieves registered dependency', () {
      dependencyManager.addBuilder<MyDependency>((_) => MyDependency());

      final myDep = dependencyManager.getOrCreate<MyDependency>();
      expect(myDep.value, equals(42));

      expect(
        identical(scopedDependencyManager.get<MyDependency>(), myDep),
        isTrue,
      );
      expect(
        identical(scopedDependencyManager.getOrCreate<MyDependency>(), myDep),
        isTrue,
      );
      expect(
        identical(scopedDependencyManager.expect<MyDependency>(), myDep),
        isTrue,
      );
    });

    test('retrieves registered interface', () {
      dependencyManager.addBuilder<MyInterface>((_) => MyInterfaceImpl());

      final myDep = dependencyManager.getOrCreate<MyInterface>();
      expect(myDep.value, equals('abc'));

      expect(
        identical(scopedDependencyManager.get<MyInterface>(), myDep),
        isTrue,
      );
      expect(
        identical(scopedDependencyManager.getOrCreate<MyInterface>(), myDep),
        isTrue,
      );
      expect(
        identical(scopedDependencyManager.expect<MyInterface>(), myDep),
        isTrue,
      );
    });

    test('throws for missing builder', () {
      expect(() => dependencyManager.get<MyDependency>(), returnsNormally);
      expect(dependencyManager.get<MyDependency>(), isNull);
      expect(
        () => dependencyManager.getOrCreate<MyDependency>(),
        throwsStateError,
      );
      expect(
        () => dependencyManager.expect<MyDependency>(),
        throwsStateError,
      );
      expect(
        () => scopedDependencyManager.get<MyDependency>(),
        returnsNormally,
      );
      expect(
        () => scopedDependencyManager.getOrCreate<MyDependency>(),
        throwsStateError,
      );
      expect(
        () => scopedDependencyManager.expect<MyDependency>(),
        throwsStateError,
      );
    });

    test('injects dependency manager', () {
      dependencyManager.addBuilder<NeedsDependencyManager>(
        NeedsDependencyManager.new,
      );

      expect(
        () => dependencyManager.getOrCreate<NeedsDependencyManager>(),
        returnsNormally,
      );
      expect(
        () => scopedDependencyManager.getOrCreate<NeedsDependencyManager>(),
        returnsNormally,
      );
    });

    test('injects dependency manager and dispatcher', () {
      dependencyManager
        ..addBuilder<Dispatcher>((_) => MyDispatcher())
        ..addBuilder<NeedsDependencyManagerAndDispatcher>(
          (deps) => NeedsDependencyManagerAndDispatcher(
            deps,
            deps.getOrCreate(),
          ),
        );

      expect(
        () => dependencyManager
            .getOrCreate<NeedsDependencyManagerAndDispatcher>(),
        returnsNormally,
      );
      expect(
        () => scopedDependencyManager
            .getOrCreate<NeedsDependencyManagerAndDispatcher>(),
        returnsNormally,
      );
    });

    test('scoping does not affect parent', () {
      scopedDependencyManager.addBuilder<NeedsDependencyManager>(
        NeedsDependencyManager.new,
      );

      expect(
        () => scopedDependencyManager.getOrCreate<NeedsDependencyManager>(),
        returnsNormally,
      );
      expect(
        () => dependencyManager.getOrCreate<NeedsDependencyManager>(),
        throwsStateError,
      );
      expect(dependencyManager.get<DependencyManager>(), dependencyManager);
      expect(
        scopedDependencyManager.get<DependencyManager>(),
        scopedDependencyManager,
      );
    });

    test('create closes previous instances', () {
      dependencyManager.addBuilder<NeedsClosing>((_) => NeedsClosing());

      final dep = dependencyManager.create<NeedsClosing>();
      final scopedDep = scopedDependencyManager.create<NeedsClosing>();
      expect(
        dep,
        isNot(scopedDep),
        reason: 'Should create a separate instance',
      );
      expect(dep.isClosed, isFalse);
      expect(scopedDep.isClosed, isFalse);

      final dep2 = dependencyManager.create<NeedsClosing>();
      expect(dep.isClosed, isTrue);
      expect(dep2.isClosed, isFalse);
      expect(scopedDep.isClosed, isFalse);

      final scopedDep2 = scopedDependencyManager.create<NeedsClosing>();
      expect(dep.isClosed, isTrue);
      expect(dep2.isClosed, isFalse);
      expect(scopedDep.isClosed, isTrue);
      expect(scopedDep2.isClosed, isFalse);
    });

    test('closing does not affect parent', () {
      final instance1 = NeedsClosing();
      dependencyManager.addInstance(instance1);

      final instance2 = NeedsClosing();
      expect(instance1.isClosed, isFalse);
      expect(instance2.isClosed, isFalse);
      dependencyManager.addInstance(instance2);
      expect(instance1.isClosed, isTrue);
      expect(instance2.isClosed, isFalse);

      final instance3 = NeedsClosing();
      scopedDependencyManager.addInstance(instance3);

      final instance4 = NeedsClosing();
      expect(instance3.isClosed, isFalse);
      expect(instance4.isClosed, isFalse);
      scopedDependencyManager.addInstance(instance4);
      expect(instance3.isClosed, isTrue);
      expect(instance4.isClosed, isFalse);

      expect(instance2.isClosed, isFalse);
      expect(instance4.isClosed, isFalse);

      dependencyManager.close();
      expect(instance2.isClosed, isTrue);
      expect(instance4.isClosed, isFalse);

      scopedDependencyManager.close();
      expect(instance2.isClosed, isTrue);
      expect(instance4.isClosed, isTrue);
    });
  });
}
