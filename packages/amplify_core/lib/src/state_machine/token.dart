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
