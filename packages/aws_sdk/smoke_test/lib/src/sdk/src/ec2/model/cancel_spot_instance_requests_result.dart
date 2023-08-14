// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.cancel_spot_instance_requests_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/cancelled_spot_instance_request.dart';

part 'cancel_spot_instance_requests_result.g.dart';

/// Contains the output of CancelSpotInstanceRequests.
abstract class CancelSpotInstanceRequestsResult
    with
        _i1.AWSEquatable<CancelSpotInstanceRequestsResult>
    implements
        Built<CancelSpotInstanceRequestsResult,
            CancelSpotInstanceRequestsResultBuilder> {
  /// Contains the output of CancelSpotInstanceRequests.
  factory CancelSpotInstanceRequestsResult(
      {List<CancelledSpotInstanceRequest>? cancelledSpotInstanceRequests}) {
    return _$CancelSpotInstanceRequestsResult._(
        cancelledSpotInstanceRequests: cancelledSpotInstanceRequests == null
            ? null
            : _i2.BuiltList(cancelledSpotInstanceRequests));
  }

  /// Contains the output of CancelSpotInstanceRequests.
  factory CancelSpotInstanceRequestsResult.build(
          [void Function(CancelSpotInstanceRequestsResultBuilder) updates]) =
      _$CancelSpotInstanceRequestsResult;

  const CancelSpotInstanceRequestsResult._();

  /// Constructs a [CancelSpotInstanceRequestsResult] from a [payload] and [response].
  factory CancelSpotInstanceRequestsResult.fromResponse(
    CancelSpotInstanceRequestsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<CancelSpotInstanceRequestsResult>>
      serializers = [CancelSpotInstanceRequestsResultEc2QuerySerializer()];

  /// The Spot Instance requests.
  _i2.BuiltList<CancelledSpotInstanceRequest>?
      get cancelledSpotInstanceRequests;
  @override
  List<Object?> get props => [cancelledSpotInstanceRequests];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CancelSpotInstanceRequestsResult')
          ..add(
            'cancelledSpotInstanceRequests',
            cancelledSpotInstanceRequests,
          );
    return helper.toString();
  }
}

class CancelSpotInstanceRequestsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CancelSpotInstanceRequestsResult> {
  const CancelSpotInstanceRequestsResultEc2QuerySerializer()
      : super('CancelSpotInstanceRequestsResult');

  @override
  Iterable<Type> get types => const [
        CancelSpotInstanceRequestsResult,
        _$CancelSpotInstanceRequestsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CancelSpotInstanceRequestsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CancelSpotInstanceRequestsResultBuilder();
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
          result.cancelledSpotInstanceRequests
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(CancelledSpotInstanceRequest)],
            ),
          ) as _i2.BuiltList<CancelledSpotInstanceRequest>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CancelSpotInstanceRequestsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'CancelSpotInstanceRequestsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CancelSpotInstanceRequestsResult(:cancelledSpotInstanceRequests) =
        object;
    if (cancelledSpotInstanceRequests != null) {
      result$
        ..add(const _i3.XmlElementName('SpotInstanceRequestSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          cancelledSpotInstanceRequests,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(CancelledSpotInstanceRequest)],
          ),
        ));
    }
    return result$;
  }
}
