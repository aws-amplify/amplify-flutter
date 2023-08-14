// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_traffic_mirror_filter_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_filter.dart';

part 'create_traffic_mirror_filter_result.g.dart';

abstract class CreateTrafficMirrorFilterResult
    with
        _i1.AWSEquatable<CreateTrafficMirrorFilterResult>
    implements
        Built<CreateTrafficMirrorFilterResult,
            CreateTrafficMirrorFilterResultBuilder> {
  factory CreateTrafficMirrorFilterResult({
    TrafficMirrorFilter? trafficMirrorFilter,
    String? clientToken,
  }) {
    return _$CreateTrafficMirrorFilterResult._(
      trafficMirrorFilter: trafficMirrorFilter,
      clientToken: clientToken,
    );
  }

  factory CreateTrafficMirrorFilterResult.build(
          [void Function(CreateTrafficMirrorFilterResultBuilder) updates]) =
      _$CreateTrafficMirrorFilterResult;

  const CreateTrafficMirrorFilterResult._();

  /// Constructs a [CreateTrafficMirrorFilterResult] from a [payload] and [response].
  factory CreateTrafficMirrorFilterResult.fromResponse(
    CreateTrafficMirrorFilterResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateTrafficMirrorFilterResult>>
      serializers = [CreateTrafficMirrorFilterResultEc2QuerySerializer()];

  /// Information about the Traffic Mirror filter.
  TrafficMirrorFilter? get trafficMirrorFilter;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to ensure idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;
  @override
  List<Object?> get props => [
        trafficMirrorFilter,
        clientToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateTrafficMirrorFilterResult')
          ..add(
            'trafficMirrorFilter',
            trafficMirrorFilter,
          )
          ..add(
            'clientToken',
            clientToken,
          );
    return helper.toString();
  }
}

class CreateTrafficMirrorFilterResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateTrafficMirrorFilterResult> {
  const CreateTrafficMirrorFilterResultEc2QuerySerializer()
      : super('CreateTrafficMirrorFilterResult');

  @override
  Iterable<Type> get types => const [
        CreateTrafficMirrorFilterResult,
        _$CreateTrafficMirrorFilterResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTrafficMirrorFilterResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTrafficMirrorFilterResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'trafficMirrorFilter':
          result.trafficMirrorFilter.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TrafficMirrorFilter),
          ) as TrafficMirrorFilter));
        case 'clientToken':
          result.clientToken = (serializers.deserialize(
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
    CreateTrafficMirrorFilterResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateTrafficMirrorFilterResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateTrafficMirrorFilterResult(:trafficMirrorFilter, :clientToken) =
        object;
    if (trafficMirrorFilter != null) {
      result$
        ..add(const _i2.XmlElementName('TrafficMirrorFilter'))
        ..add(serializers.serialize(
          trafficMirrorFilter,
          specifiedType: const FullType(TrafficMirrorFilter),
        ));
    }
    if (clientToken != null) {
      result$
        ..add(const _i2.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
