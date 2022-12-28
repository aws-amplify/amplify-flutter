// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:collection/collection.dart';
import 'package:meta/meta.dart';

/// Mixin class to provide equatable functionality on objects.
@immutable
mixin AWSEquatable<T extends AWSEquatable<T>> on Object {
  /// The type's equatable properties.
  List<Object?> get props;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is T && const DeepCollectionEquality().equals(props, other.props);

  @override
  int get hashCode => const DeepCollectionEquality().hash(props);
}
