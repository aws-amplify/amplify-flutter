// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// Factory for a type [T] with dependencies.
typedef DependencyBuilder<T extends Object> = T Function(DependencyManager);

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

  /// {@macro amplify_core.scoped_dependency_manager}
  factory DependencyManager.scoped(DependencyManager parent) =
      _ScopedDependencyManager;

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
    if (instance == null) {
      throw StateError('No instance found for $token');
    }
    return instance;
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
    return _instances[token] = builder(this) as T;
  }

  @override
  void close() {
    for (final instance in _instances.values) {
      _closeIfPossible(instance);
    }
    _instances.clear();
  }
}

/// {@template amplify_core.scoped_dependency_manager}
/// A service locator scoped to a parent [DependencyManager].
///
/// Adding instances/builders only affect this locator, whereas retrieving
/// instances/builders will perform a local lookup before a parent lookup.
/// Creating new instances only affects this locator.
/// {@endtemplate}
class _ScopedDependencyManager extends DependencyManager {
  _ScopedDependencyManager(this._parent);

  final DependencyManager _parent;
  Map<Token, DependencyBuilder> get _allBuilders => {
        ..._parent._builders,
        ..._builders,
      };

  @override
  void addInstance<T extends Object>(
    T instance, [
    Token<T>? token,
  ]) {
    token ??= Token<T>();
    // Close the current instance, if any.
    final currentInstance = super.get<T>(token);
    _closeIfPossible(currentInstance);
    _instances[token] = instance;
  }

  @override
  T? get<T extends Object>([Token<T>? token]) {
    return super.get(token) ?? _parent.get(token);
  }

  @override
  T expect<T extends Object>([Token<T>? token]) {
    try {
      return super.expect(token);
    } on StateError {
      return _parent.expect(token);
    }
  }

  @override
  T create<T extends Object>([Token<T>? token]) {
    token ??= Token<T>();
    // Close the current instance, if any.
    final currentInstance = super.get<T>(token);
    _closeIfPossible(currentInstance);

    final builder = _allBuilders[token];
    if (builder == null) {
      throw StateError('No builder registered for $token');
    }
    return _instances[token] = builder(this) as T;
  }
}
