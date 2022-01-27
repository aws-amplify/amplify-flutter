//
// Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//  http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

import 'package:collection/collection.dart';

/// Provides overrides for [==] and [hashCode] for consistent equality and
/// hashing.
mixin AWSEquatable<T extends AWSEquatable<T>> on Object {
  /// The object's properties which should be equated and hashed.
  List<Object?> get props;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is T && const DeepCollectionEquality().equals(props, other.props);

  @override
  int get hashCode => const DeepCollectionEquality().hash(props);
}
