// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.stack_instance_filter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_instance_filter_name.dart'
    as _i2;

part 'stack_instance_filter.g.dart';

/// The filter to apply to stack instances
abstract class StackInstanceFilter
    with _i1.AWSEquatable<StackInstanceFilter>
    implements Built<StackInstanceFilter, StackInstanceFilterBuilder> {
  /// The filter to apply to stack instances
  factory StackInstanceFilter({
    _i2.StackInstanceFilterName? name,
    String? values,
  }) {
    return _$StackInstanceFilter._(
      name: name,
      values: values,
    );
  }

  /// The filter to apply to stack instances
  factory StackInstanceFilter.build(
          [void Function(StackInstanceFilterBuilder) updates]) =
      _$StackInstanceFilter;

  const StackInstanceFilter._();

  static const List<_i3.SmithySerializer> serializers = [
    StackInstanceFilterAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StackInstanceFilterBuilder b) {}

  /// The type of filter to apply.
  _i2.StackInstanceFilterName? get name;

  /// The status to filter by.
  String? get values;
  @override
  List<Object?> get props => [
        name,
        values,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StackInstanceFilter');
    helper.add(
      'name',
      name,
    );
    helper.add(
      'values',
      values,
    );
    return helper.toString();
  }
}

class StackInstanceFilterAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<StackInstanceFilter> {
  const StackInstanceFilterAwsQuerySerializer() : super('StackInstanceFilter');

  @override
  Iterable<Type> get types => const [
        StackInstanceFilter,
        _$StackInstanceFilter,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  StackInstanceFilter deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StackInstanceFilterBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Name':
          if (value != null) {
            result.name = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.StackInstanceFilterName),
            ) as _i2.StackInstanceFilterName);
          }
          break;
        case 'Values':
          if (value != null) {
            result.values = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as StackInstanceFilter);
    final result = <Object?>[
      const _i3.XmlElementName(
        'StackInstanceFilterResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.name != null) {
      result
        ..add(const _i3.XmlElementName('Name'))
        ..add(serializers.serialize(
          payload.name!,
          specifiedType: const FullType.nullable(_i2.StackInstanceFilterName),
        ));
    }
    if (payload.values != null) {
      result
        ..add(const _i3.XmlElementName('Values'))
        ..add(serializers.serialize(
          payload.values!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
