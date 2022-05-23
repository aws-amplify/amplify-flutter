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

/// Factory for type [T].
typedef DependencyBuilder<T extends Object> = Function;

/// {@template amplify_core.dependency_manager}
/// Service locator for state machine dependencies.
/// {@endtemplate}
class DependencyManager {
  /// {@macro amplify_core.dependency_manager}
  factory DependencyManager([
    Map<Token, DependencyBuilder>? builders,
  ]) =>
      DependencyManager._(builders ?? {});

  DependencyManager._(this._builders) {
    addInstance<DependencyManager>(this);
  }

  final Map<Token, DependencyBuilder> _builders;
  final Map<Token, Object> _instances = {};

  /// Adds a builder to the service locator.
  void addBuilder<T extends Object>(
    DependencyBuilder<T> builder, [
    Token<T>? token,
  ]) {
    token ??= Token<T>();
    _builders[token] = builder;
  }

  /// Adds an instance to the service locator.
  void addInstance<T extends Object>(
    T instance, [
    Token<T>? token,
  ]) {
    token ??= Token<T>();
    // Close the current instance, if any.
    final currentInstance = _instances[token];
    if (currentInstance != null && currentInstance is Closeable) {
      currentInstance.close();
    }
    _instances[token] = instance;
  }

  /// Gets the instance for type [T], if available.
  T? get<T extends Object>([Token<T>? token]) {
    token ??= Token<T>();
    return _instances[token] as T?;
  }

  /// Asserts an instance for type [T].
  T expect<T extends Object>([Token<T>? token]) {
    token ??= Token<T>();
    final instance = get<T>(token);
    assert(instance != null, 'No instance found for $token');
    return instance!;
  }

  /// Gets the instance for type [T] or creates it using a registered builder.
  ///
  /// Throws a [StateError] if no instance or builder is found.
  T getOrCreate<T extends Object>([Token<T>? token]) {
    token ??= Token<T>();
    final instance = _instances[token] as T?;
    if (instance != null) {
      return instance;
    }
    return create<T>(token);
  }

  /// Creates an instance of type [T] using its registered builder.
  ///
  /// Throws a [StateError] if no builder is registered.
  T create<T extends Object>([Token<T>? token]) {
    token ??= Token<T>();
    // Close the current instance, if any.
    final currentInstance = _instances[token];
    if (currentInstance != null && currentInstance is Closeable) {
      currentInstance.close();
    }

    final builder = _builders[token];
    if (builder == null) {
      throw StateError('No builder registered for $token');
    }
    return _instances[token] = Function.apply(builder, <Object>[
      for (final dependency in token.dependencies) getOrCreate(dependency),
    ]) as T;
  }
}
