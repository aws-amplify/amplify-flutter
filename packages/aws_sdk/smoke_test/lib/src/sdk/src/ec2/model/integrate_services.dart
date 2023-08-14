// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.integrate_services; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/athena_integration.dart';

part 'integrate_services.g.dart';

/// Describes service integrations with VPC Flow logs.
abstract class IntegrateServices
    with _i1.AWSEquatable<IntegrateServices>
    implements Built<IntegrateServices, IntegrateServicesBuilder> {
  /// Describes service integrations with VPC Flow logs.
  factory IntegrateServices({List<AthenaIntegration>? athenaIntegrations}) {
    return _$IntegrateServices._(
        athenaIntegrations: athenaIntegrations == null
            ? null
            : _i2.BuiltList(athenaIntegrations));
  }

  /// Describes service integrations with VPC Flow logs.
  factory IntegrateServices.build(
      [void Function(IntegrateServicesBuilder) updates]) = _$IntegrateServices;

  const IntegrateServices._();

  static const List<_i3.SmithySerializer<IntegrateServices>> serializers = [
    IntegrateServicesEc2QuerySerializer()
  ];

  /// Information about the integration with Amazon Athena.
  _i2.BuiltList<AthenaIntegration>? get athenaIntegrations;
  @override
  List<Object?> get props => [athenaIntegrations];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IntegrateServices')
      ..add(
        'athenaIntegrations',
        athenaIntegrations,
      );
    return helper.toString();
  }
}

class IntegrateServicesEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<IntegrateServices> {
  const IntegrateServicesEc2QuerySerializer() : super('IntegrateServices');

  @override
  Iterable<Type> get types => const [
        IntegrateServices,
        _$IntegrateServices,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  IntegrateServices deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntegrateServicesBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AthenaIntegration':
          result.athenaIntegrations.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(AthenaIntegration)],
            ),
          ) as _i2.BuiltList<AthenaIntegration>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    IntegrateServices object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'IntegrateServicesResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final IntegrateServices(:athenaIntegrations) = object;
    if (athenaIntegrations != null) {
      result$
        ..add(const _i3.XmlElementName('AthenaIntegration'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          athenaIntegrations,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(AthenaIntegration)],
          ),
        ));
    }
    return result$;
  }
}
