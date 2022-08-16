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

import 'package:aws_common/aws_common.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart';

/// An enum representation in Smithy.
///
/// For example, the following Smithy model:
///
/// ```
/// @enum("YES": {}, "NO": {})
/// string SimpleYesNo
/// ```
///
/// will be translated to an equivalent Dart model.
///
/// ```dart
/// class SimpleYesNo extends SmithyEnum<SimpleYesNo> {
///   const SimpleYesNo._(int index, String name, String value)
///       : super(index, name, value);
///   const SimpleYesNo.unknown(String value) : super.unknown(value);
///
///   static const yes = SimpleYesNo._(0, 'yes', 'YES');
///   static const no = SimpleYesNo._(1, 'no', 'NO');
///
///   static const List<SimpleYesNo> values = [
///     yes,
///     no,
///   ];
/// }
///
/// extension $SimpleYesNoSmithy on List<SimpleYesNo> {
///   SimpleYesNo? byName(String? name) =>
///       firstWhereOrNull((el) => el.name == name);
///
///   SimpleYesNo? byValue(String? value) {
///     if (value == null) return null;
///     return firstWhere(
///       (el) => el.value == value,
///       orElse: () => SimpleYesNo.unknown(value),
///     );
///   }
/// }
/// ```
abstract class SmithyEnum<T extends SmithyEnum<T>> with AWSSerializable {
  const SmithyEnum(this.index, this.name, this.value);
  const SmithyEnum.sdkUnknown(this.value)
      : index = -1,
        name = 'sdkUnknown';

  final int index;
  final String name;
  final String value;

  @override
  String toJson() => value;

  @override
  String toString() => value;
}

class SmithyEnumSerializer<T extends SmithyEnum<T>> extends SmithySerializer<T>
    implements PrimitiveSerializer<T> {
  const SmithyEnumSerializer(
    String wireName, {
    required this.values,
    required this.sdkUnknown,
    required this.supportedProtocols,
  }) : super(wireName);

  /// All enum values.
  final List<T> values;

  /// The unknown value constructor.
  final Constructor<String, T> sdkUnknown;

  @override
  final List<ShapeId> supportedProtocols;

  @override
  T deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      values.firstWhere(
        (el) => el.value == serialized,
        orElse: () => sdkUnknown(serialized as String),
      );

  @override
  Object serialize(
    Serializers serializers,
    T object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      object.value;

  @override
  Iterable<Type> get types => [T];
}
