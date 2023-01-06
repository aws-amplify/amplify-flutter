// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:meta/meta.dart';

/// {@template amplify_core.token}
/// An identifier for [T] and its dependencies.
/// {@endtemplate}
@immutable
class Token<T extends Object> {
  /// {@macro amplify_core.token}
  const Token([this.dependencies = const []]);

  /// The type identified by this token.
  Type get type => T;

  /// The dependencies needed to instantiate [T].
  final List<Token> dependencies;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Token && type == other.type;

  @override
  int get hashCode => type.hashCode;

  @override
  String toString() => '$type';
}

/// {@template amplify_core.type_token}
/// A token identified by a [Type].
/// {@endtemplate}
class TypeToken<T extends Object> extends Token<T> {
  /// {@macro amplify_core.type_token}
  const TypeToken(
    this.type, [
    List<Token> dependencies = const [],
  ]) : super(dependencies);

  @override
  final Type type;
}
