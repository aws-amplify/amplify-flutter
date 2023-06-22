// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.parameter_constraints; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'parameter_constraints.g.dart';

/// A set of criteria that CloudFormation uses to validate parameter values. Although other constraints might be defined in the stack template, CloudFormation returns only the `AllowedValues` property.
abstract class ParameterConstraints
    with _i1.AWSEquatable<ParameterConstraints>
    implements Built<ParameterConstraints, ParameterConstraintsBuilder> {
  /// A set of criteria that CloudFormation uses to validate parameter values. Although other constraints might be defined in the stack template, CloudFormation returns only the `AllowedValues` property.
  factory ParameterConstraints({List<String>? allowedValues}) {
    return _$ParameterConstraints._(
        allowedValues:
            allowedValues == null ? null : _i2.BuiltList(allowedValues));
  }

  /// A set of criteria that CloudFormation uses to validate parameter values. Although other constraints might be defined in the stack template, CloudFormation returns only the `AllowedValues` property.
  factory ParameterConstraints.build(
          [void Function(ParameterConstraintsBuilder) updates]) =
      _$ParameterConstraints;

  const ParameterConstraints._();

  static const List<_i3.SmithySerializer<ParameterConstraints>> serializers = [
    ParameterConstraintsAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ParameterConstraintsBuilder b) {}

  /// A list of values that are permitted for a parameter.
  _i2.BuiltList<String>? get allowedValues;
  @override
  List<Object?> get props => [allowedValues];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ParameterConstraints')
      ..add(
        'allowedValues',
        allowedValues,
      );
    return helper.toString();
  }
}

class ParameterConstraintsAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<ParameterConstraints> {
  const ParameterConstraintsAwsQuerySerializer()
      : super('ParameterConstraints');

  @override
  Iterable<Type> get types => const [
        ParameterConstraints,
        _$ParameterConstraints,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ParameterConstraints deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ParameterConstraintsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AllowedValues':
          result.allowedValues.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ParameterConstraints object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ParameterConstraintsResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final ParameterConstraints(:allowedValues) = object;
    if (allowedValues != null) {
      result$
        ..add(const _i3.XmlElementName('AllowedValues'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          allowedValues,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
