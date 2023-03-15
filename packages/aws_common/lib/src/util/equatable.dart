// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

/// Mixin class to provide equatable functionality on objects.
@immutable
mixin AWSEquatable<T extends AWSEquatable<T>> on Object {
  /// The type's equatable properties.
  @JsonKey(
    includeToJson: false,
  ) // Workaround for https://github.com/google/json_serializable.dart/issues/1102
  List<Object?> get props;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is T && const DeepCollectionEquality().equals(props, other.props);

  @override
  @JsonKey(
    includeToJson: false,
  ) // Workaround for https://github.com/google/json_serializable.dart/issues/1102
  int get hashCode => const DeepCollectionEquality().hash(props);
}
