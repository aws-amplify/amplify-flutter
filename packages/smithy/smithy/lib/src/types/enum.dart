// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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

abstract class _SmithyEnumBase<T extends _SmithyEnumBase<T, Value>,
    Value extends Object> with AWSSerializable<Value> {
  const _SmithyEnumBase(this.index, this.name, this.value);
  const _SmithyEnumBase.sdkUnknown(this.value)
      : index = -1,
        name = 'sdkUnknown';

  final int index;
  final String name;
  final Value value;

  @override
  Value toJson() => value;

  @override
  String toString() => '$value';
}

abstract class SmithyEnum<T extends SmithyEnum<T>>
    extends _SmithyEnumBase<T, String> {
  const SmithyEnum(super.index, super.name, super.value);
  const SmithyEnum.sdkUnknown(super.value) : super.sdkUnknown();
}

abstract class SmithyIntEnum<T extends SmithyIntEnum<T>>
    extends _SmithyEnumBase<T, int> {
  const SmithyIntEnum(super.index, super.name, super.value);
  const SmithyIntEnum.sdkUnknown(super.value) : super.sdkUnknown();
}

abstract class _SmithyEnumSerializer<T extends _SmithyEnumBase<T, Value>,
        Value extends Object> extends SmithySerializer<T>
    implements PrimitiveSerializer<T> {
  const _SmithyEnumSerializer(
    String wireName, {
    required this.values,
    required this.sdkUnknown,
    required this.supportedProtocols,
  }) : super(wireName);

  /// All enum values.
  final List<T> values;

  /// The unknown value constructor.
  final Constructor<Value, T> sdkUnknown;

  /// Parses serialized values as [Value].
  Value parse(Object serialized);

  @override
  final List<ShapeId> supportedProtocols;

  @override
  T deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final parsed = parse(serialized);
    return values.firstWhere(
      (el) => el.value == parsed,
      orElse: () => sdkUnknown(parsed),
    );
  }

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

class SmithyEnumSerializer<T extends SmithyEnum<T>>
    extends _SmithyEnumSerializer<T, String> {
  const SmithyEnumSerializer(
    super.wireName, {
    required super.values,
    required super.sdkUnknown,
    required super.supportedProtocols,
  });

  @override
  String parse(Object serialized) => serialized.toString();
}

class SmithyIntEnumSerializer<T extends SmithyIntEnum<T>>
    extends _SmithyEnumSerializer<T, int> {
  const SmithyIntEnumSerializer(
    super.wireName, {
    required super.values,
    required super.sdkUnknown,
    required super.supportedProtocols,
  });

  @override
  int parse(Object serialized) {
    if (serialized is num) {
      return serialized.toInt();
    }
    if (serialized is String) {
      return num.parse(serialized).toInt();
    }
    throw ArgumentError(
      'Invalid serialized value: $serialized (${serialized.runtimeType}). '
      'Expected int or String.',
    );
  }
}
