// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// Factory for type [T].
typedef DependencyBuilder<T extends Object> = Function;

/// {@template amplify_core.dependency_manager}
/// Service locator for state machine dependencies.
/// {@endtemplate}
class DependencyManager implements Closeable {
  /// {@macro amplify_core.dependency_manager}
  DependencyManager([
    Map<Token, DependencyBuilder>? builders,
  ]) : _builders = builders ?? {} {
    addInstance<DependencyManager>(this);
  }

  final Map<Token, DependencyBuilder> _builders;
  final Map<Token, Object> _instances = {};

  /// Closes instances of [Closeable] which are not `this`.
  void _closeIfPossible(Object? instance) {
    if (instance != null &&
        instance is Closeable &&
        // Required check since `this` maintains a reference to itself.
        !identical(this, instance)) {
      instance.close();
    }
  }

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
    final currentInstance = get<T>(token);
    _closeIfPossible(currentInstance);
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
    final instance = get<T>(token);
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
    final currentInstance = get<T>(token);
    _closeIfPossible(currentInstance);

    final builder = _builders[token];
    if (builder == null) {
      throw StateError('No builder registered for $token');
    }
    return _instances[token] = Function.apply(builder, <Object>[
      for (final dependency in token.dependencies) getOrCreate(dependency),
    ]) as T;
  }

  @override
  void close() {
    for (final instance in _instances.values) {
      _closeIfPossible(instance);
    }
    _instances.clear();
  }
}
