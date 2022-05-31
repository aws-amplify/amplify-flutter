// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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

class MyDispatcher implements Dispatcher {
  @override
  void dispatch(StateMachineEvent event) {}
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
      dependencyManager.addBuilder<Dispatcher>(MyDispatcher.new);
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
