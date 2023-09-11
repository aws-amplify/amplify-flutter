// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.model.property_difference; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/difference_type.dart';

part 'property_difference.g.dart';

/// Information about a resource property whose actual value differs from its expected value, as defined in the stack template and any values specified as template parameters. These will be present only for resources whose `StackResourceDriftStatus` is `MODIFIED`. For more information, see [Detecting Unregulated Configuration Changes to Stacks and Resources](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html).
abstract class PropertyDifference
    with _i1.AWSEquatable<PropertyDifference>
    implements Built<PropertyDifference, PropertyDifferenceBuilder> {
  /// Information about a resource property whose actual value differs from its expected value, as defined in the stack template and any values specified as template parameters. These will be present only for resources whose `StackResourceDriftStatus` is `MODIFIED`. For more information, see [Detecting Unregulated Configuration Changes to Stacks and Resources](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html).
  factory PropertyDifference({
    required String propertyPath,
    required String expectedValue,
    required String actualValue,
    required DifferenceType differenceType,
  }) {
    return _$PropertyDifference._(
      propertyPath: propertyPath,
      expectedValue: expectedValue,
      actualValue: actualValue,
      differenceType: differenceType,
    );
  }

  /// Information about a resource property whose actual value differs from its expected value, as defined in the stack template and any values specified as template parameters. These will be present only for resources whose `StackResourceDriftStatus` is `MODIFIED`. For more information, see [Detecting Unregulated Configuration Changes to Stacks and Resources](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html).
  factory PropertyDifference.build(
          [void Function(PropertyDifferenceBuilder) updates]) =
      _$PropertyDifference;

  const PropertyDifference._();

  static const List<_i2.SmithySerializer<PropertyDifference>> serializers = [
    PropertyDifferenceAwsQuerySerializer()
  ];

  /// The fully-qualified path to the resource property.
  String get propertyPath;

  /// The expected property value of the resource property, as defined in the stack template and any values specified as template parameters.
  String get expectedValue;

  /// The actual property value of the resource property.
  String get actualValue;

  /// The type of property difference.
  ///
  /// *   `ADD`: A value has been added to a resource property that's an array or list data type.
  ///
  /// *   `REMOVE`: The property has been removed from the current resource configuration.
  ///
  /// *   `NOT_EQUAL`: The current property value differs from its expected value (as defined in the stack template and any values specified as template parameters).
  DifferenceType get differenceType;
  @override
  List<Object?> get props => [
        propertyPath,
        expectedValue,
        actualValue,
        differenceType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PropertyDifference')
      ..add(
        'propertyPath',
        propertyPath,
      )
      ..add(
        'expectedValue',
        expectedValue,
      )
      ..add(
        'actualValue',
        actualValue,
      )
      ..add(
        'differenceType',
        differenceType,
      );
    return helper.toString();
  }
}

class PropertyDifferenceAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<PropertyDifference> {
  const PropertyDifferenceAwsQuerySerializer() : super('PropertyDifference');

  @override
  Iterable<Type> get types => const [
        PropertyDifference,
        _$PropertyDifference,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  PropertyDifference deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PropertyDifferenceBuilder();
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'PropertyPath':
          result.propertyPath = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ExpectedValue':
          result.expectedValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ActualValue':
          result.actualValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DifferenceType':
          result.differenceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(DifferenceType),
          ) as DifferenceType);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PropertyDifference object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'PropertyDifferenceResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final PropertyDifference(
      :propertyPath,
      :expectedValue,
      :actualValue,
      :differenceType
    ) = object;
    result$
      ..add(const _i2.XmlElementName('PropertyPath'))
      ..add(serializers.serialize(
        propertyPath,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i2.XmlElementName('ExpectedValue'))
      ..add(serializers.serialize(
        expectedValue,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i2.XmlElementName('ActualValue'))
      ..add(serializers.serialize(
        actualValue,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i2.XmlElementName('DifferenceType'))
      ..add(serializers.serialize(
        differenceType,
        specifiedType: const FullType(DifferenceType),
      ));
    return result$;
  }
}
