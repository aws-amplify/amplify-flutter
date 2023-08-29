// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_traffic_mirror_filter_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'delete_traffic_mirror_filter_result.g.dart';

abstract class DeleteTrafficMirrorFilterResult
    with
        _i1.AWSEquatable<DeleteTrafficMirrorFilterResult>
    implements
        Built<DeleteTrafficMirrorFilterResult,
            DeleteTrafficMirrorFilterResultBuilder> {
  factory DeleteTrafficMirrorFilterResult({String? trafficMirrorFilterId}) {
    return _$DeleteTrafficMirrorFilterResult._(
        trafficMirrorFilterId: trafficMirrorFilterId);
  }

  factory DeleteTrafficMirrorFilterResult.build(
          [void Function(DeleteTrafficMirrorFilterResultBuilder) updates]) =
      _$DeleteTrafficMirrorFilterResult;

  const DeleteTrafficMirrorFilterResult._();

  /// Constructs a [DeleteTrafficMirrorFilterResult] from a [payload] and [response].
  factory DeleteTrafficMirrorFilterResult.fromResponse(
    DeleteTrafficMirrorFilterResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DeleteTrafficMirrorFilterResult>>
      serializers = [DeleteTrafficMirrorFilterResultEc2QuerySerializer()];

  /// The ID of the Traffic Mirror filter.
  String? get trafficMirrorFilterId;
  @override
  List<Object?> get props => [trafficMirrorFilterId];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteTrafficMirrorFilterResult')
          ..add(
            'trafficMirrorFilterId',
            trafficMirrorFilterId,
          );
    return helper.toString();
  }
}

class DeleteTrafficMirrorFilterResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DeleteTrafficMirrorFilterResult> {
  const DeleteTrafficMirrorFilterResultEc2QuerySerializer()
      : super('DeleteTrafficMirrorFilterResult');

  @override
  Iterable<Type> get types => const [
        DeleteTrafficMirrorFilterResult,
        _$DeleteTrafficMirrorFilterResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteTrafficMirrorFilterResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTrafficMirrorFilterResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'trafficMirrorFilterId':
          result.trafficMirrorFilterId = (serializers.deserialize(
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
    DeleteTrafficMirrorFilterResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteTrafficMirrorFilterResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteTrafficMirrorFilterResult(:trafficMirrorFilterId) = object;
    if (trafficMirrorFilterId != null) {
      result$
        ..add(const _i2.XmlElementName('TrafficMirrorFilterId'))
        ..add(serializers.serialize(
          trafficMirrorFilterId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
