// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.elastic_gpu_health; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_gpu_status.dart';

part 'elastic_gpu_health.g.dart';

/// Describes the status of an Elastic Graphics accelerator.
abstract class ElasticGpuHealth
    with _i1.AWSEquatable<ElasticGpuHealth>
    implements Built<ElasticGpuHealth, ElasticGpuHealthBuilder> {
  /// Describes the status of an Elastic Graphics accelerator.
  factory ElasticGpuHealth({ElasticGpuStatus? status}) {
    return _$ElasticGpuHealth._(status: status);
  }

  /// Describes the status of an Elastic Graphics accelerator.
  factory ElasticGpuHealth.build(
      [void Function(ElasticGpuHealthBuilder) updates]) = _$ElasticGpuHealth;

  const ElasticGpuHealth._();

  static const List<_i2.SmithySerializer<ElasticGpuHealth>> serializers = [
    ElasticGpuHealthEc2QuerySerializer()
  ];

  /// The health status.
  ElasticGpuStatus? get status;
  @override
  List<Object?> get props => [status];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ElasticGpuHealth')
      ..add(
        'status',
        status,
      );
    return helper.toString();
  }
}

class ElasticGpuHealthEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ElasticGpuHealth> {
  const ElasticGpuHealthEc2QuerySerializer() : super('ElasticGpuHealth');

  @override
  Iterable<Type> get types => const [
        ElasticGpuHealth,
        _$ElasticGpuHealth,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ElasticGpuHealth deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ElasticGpuHealthBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(ElasticGpuStatus),
          ) as ElasticGpuStatus);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ElasticGpuHealth object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ElasticGpuHealthResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ElasticGpuHealth(:status) = object;
    if (status != null) {
      result$
        ..add(const _i2.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType(ElasticGpuStatus),
        ));
    }
    return result$;
  }
}
