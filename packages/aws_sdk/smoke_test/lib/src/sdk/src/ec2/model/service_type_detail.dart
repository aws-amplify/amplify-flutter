// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.service_type_detail; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/service_type.dart';

part 'service_type_detail.g.dart';

/// Describes the type of service for a VPC endpoint.
abstract class ServiceTypeDetail
    with _i1.AWSEquatable<ServiceTypeDetail>
    implements Built<ServiceTypeDetail, ServiceTypeDetailBuilder> {
  /// Describes the type of service for a VPC endpoint.
  factory ServiceTypeDetail({ServiceType? serviceType}) {
    return _$ServiceTypeDetail._(serviceType: serviceType);
  }

  /// Describes the type of service for a VPC endpoint.
  factory ServiceTypeDetail.build(
      [void Function(ServiceTypeDetailBuilder) updates]) = _$ServiceTypeDetail;

  const ServiceTypeDetail._();

  static const List<_i2.SmithySerializer<ServiceTypeDetail>> serializers = [
    ServiceTypeDetailEc2QuerySerializer()
  ];

  /// The type of service.
  ServiceType? get serviceType;
  @override
  List<Object?> get props => [serviceType];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ServiceTypeDetail')
      ..add(
        'serviceType',
        serviceType,
      );
    return helper.toString();
  }
}

class ServiceTypeDetailEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ServiceTypeDetail> {
  const ServiceTypeDetailEc2QuerySerializer() : super('ServiceTypeDetail');

  @override
  Iterable<Type> get types => const [
        ServiceTypeDetail,
        _$ServiceTypeDetail,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ServiceTypeDetail deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServiceTypeDetailBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'serviceType':
          result.serviceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(ServiceType),
          ) as ServiceType);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ServiceTypeDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ServiceTypeDetailResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ServiceTypeDetail(:serviceType) = object;
    if (serviceType != null) {
      result$
        ..add(const _i2.XmlElementName('ServiceType'))
        ..add(serializers.serialize(
          serviceType,
          specifiedType: const FullType.nullable(ServiceType),
        ));
    }
    return result$;
  }
}
