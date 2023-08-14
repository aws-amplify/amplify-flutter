// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.request_spot_instances_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_instance_request.dart';

part 'request_spot_instances_result.g.dart';

/// Contains the output of RequestSpotInstances.
abstract class RequestSpotInstancesResult
    with _i1.AWSEquatable<RequestSpotInstancesResult>
    implements
        Built<RequestSpotInstancesResult, RequestSpotInstancesResultBuilder> {
  /// Contains the output of RequestSpotInstances.
  factory RequestSpotInstancesResult(
      {List<SpotInstanceRequest>? spotInstanceRequests}) {
    return _$RequestSpotInstancesResult._(
        spotInstanceRequests: spotInstanceRequests == null
            ? null
            : _i2.BuiltList(spotInstanceRequests));
  }

  /// Contains the output of RequestSpotInstances.
  factory RequestSpotInstancesResult.build(
          [void Function(RequestSpotInstancesResultBuilder) updates]) =
      _$RequestSpotInstancesResult;

  const RequestSpotInstancesResult._();

  /// Constructs a [RequestSpotInstancesResult] from a [payload] and [response].
  factory RequestSpotInstancesResult.fromResponse(
    RequestSpotInstancesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<RequestSpotInstancesResult>>
      serializers = [RequestSpotInstancesResultEc2QuerySerializer()];

  /// The Spot Instance requests.
  _i2.BuiltList<SpotInstanceRequest>? get spotInstanceRequests;
  @override
  List<Object?> get props => [spotInstanceRequests];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RequestSpotInstancesResult')
      ..add(
        'spotInstanceRequests',
        spotInstanceRequests,
      );
    return helper.toString();
  }
}

class RequestSpotInstancesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<RequestSpotInstancesResult> {
  const RequestSpotInstancesResultEc2QuerySerializer()
      : super('RequestSpotInstancesResult');

  @override
  Iterable<Type> get types => const [
        RequestSpotInstancesResult,
        _$RequestSpotInstancesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RequestSpotInstancesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RequestSpotInstancesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'spotInstanceRequestSet':
          result.spotInstanceRequests.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(SpotInstanceRequest)],
            ),
          ) as _i2.BuiltList<SpotInstanceRequest>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RequestSpotInstancesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'RequestSpotInstancesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RequestSpotInstancesResult(:spotInstanceRequests) = object;
    if (spotInstanceRequests != null) {
      result$
        ..add(const _i3.XmlElementName('SpotInstanceRequestSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          spotInstanceRequests,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(SpotInstanceRequest)],
          ),
        ));
    }
    return result$;
  }
}
