// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.analysis_component; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'analysis_component.g.dart';

/// Describes a path component.
abstract class AnalysisComponent
    with _i1.AWSEquatable<AnalysisComponent>
    implements Built<AnalysisComponent, AnalysisComponentBuilder> {
  /// Describes a path component.
  factory AnalysisComponent({
    String? id,
    String? arn,
    String? name,
  }) {
    return _$AnalysisComponent._(
      id: id,
      arn: arn,
      name: name,
    );
  }

  /// Describes a path component.
  factory AnalysisComponent.build(
      [void Function(AnalysisComponentBuilder) updates]) = _$AnalysisComponent;

  const AnalysisComponent._();

  static const List<_i2.SmithySerializer<AnalysisComponent>> serializers = [
    AnalysisComponentEc2QuerySerializer()
  ];

  /// The ID of the component.
  String? get id;

  /// The Amazon Resource Name (ARN) of the component.
  String? get arn;

  /// The name of the analysis component.
  String? get name;
  @override
  List<Object?> get props => [
        id,
        arn,
        name,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AnalysisComponent')
      ..add(
        'id',
        id,
      )
      ..add(
        'arn',
        arn,
      )
      ..add(
        'name',
        name,
      );
    return helper.toString();
  }
}

class AnalysisComponentEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<AnalysisComponent> {
  const AnalysisComponentEc2QuerySerializer() : super('AnalysisComponent');

  @override
  Iterable<Type> get types => const [
        AnalysisComponent,
        _$AnalysisComponent,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AnalysisComponent deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalysisComponentBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'id':
          result.id = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'arn':
          result.arn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AnalysisComponent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AnalysisComponentResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AnalysisComponent(:id, :arn, :name) = object;
    if (id != null) {
      result$
        ..add(const _i2.XmlElementName('Id'))
        ..add(serializers.serialize(
          id,
          specifiedType: const FullType(String),
        ));
    }
    if (arn != null) {
      result$
        ..add(const _i2.XmlElementName('Arn'))
        ..add(serializers.serialize(
          arn,
          specifiedType: const FullType(String),
        ));
    }
    if (name != null) {
      result$
        ..add(const _i2.XmlElementName('Name'))
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
