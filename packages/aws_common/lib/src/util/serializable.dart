// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:meta/meta.dart';

/// A mixin to provide `toJson` functionality to objects.
@optionalTypeArgs
mixin AWSSerializable<T extends Object?> on Object {
  /// Serializes `this` as a JSON object.
  T toJson();
}
