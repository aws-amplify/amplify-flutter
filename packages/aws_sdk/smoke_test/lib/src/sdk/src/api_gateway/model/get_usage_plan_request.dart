// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.get_usage_plan_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_usage_plan_request.g.dart';

/// The GET request to get a usage plan of a given plan identifier.
abstract class GetUsagePlanRequest
    with
        _i1.HttpInput<GetUsagePlanRequestPayload>,
        _i2.AWSEquatable<GetUsagePlanRequest>
    implements
        Built<GetUsagePlanRequest, GetUsagePlanRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetUsagePlanRequestPayload> {
  /// The GET request to get a usage plan of a given plan identifier.
  factory GetUsagePlanRequest({required String usagePlanId}) {
    return _$GetUsagePlanRequest._(usagePlanId: usagePlanId);
  }

  /// The GET request to get a usage plan of a given plan identifier.
  factory GetUsagePlanRequest.build(
          [void Function(GetUsagePlanRequestBuilder) updates]) =
      _$GetUsagePlanRequest;

  const GetUsagePlanRequest._();

  factory GetUsagePlanRequest.fromRequest(
    GetUsagePlanRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetUsagePlanRequest.build((b) {
        if (labels['usagePlanId'] != null) {
          b.usagePlanId = labels['usagePlanId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    GetUsagePlanRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetUsagePlanRequestBuilder b) {}

  /// The identifier of the UsagePlan resource to be retrieved.
  String get usagePlanId;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'usagePlanId':
        return usagePlanId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  GetUsagePlanRequestPayload getPayload() => GetUsagePlanRequestPayload();
  @override
  List<Object?> get props => [usagePlanId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetUsagePlanRequest');
    helper.add(
      'usagePlanId',
      usagePlanId,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetUsagePlanRequestPayload
    with _i2.AWSEquatable<GetUsagePlanRequestPayload>
    implements
        Built<GetUsagePlanRequestPayload, GetUsagePlanRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetUsagePlanRequestPayload(
          [void Function(GetUsagePlanRequestPayloadBuilder) updates]) =
      _$GetUsagePlanRequestPayload;

  const GetUsagePlanRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetUsagePlanRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetUsagePlanRequestPayload');
    return helper.toString();
  }
}

class GetUsagePlanRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetUsagePlanRequestPayload> {
  const GetUsagePlanRequestRestJson1Serializer() : super('GetUsagePlanRequest');

  @override
  Iterable<Type> get types => const [
        GetUsagePlanRequest,
        _$GetUsagePlanRequest,
        GetUsagePlanRequestPayload,
        _$GetUsagePlanRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetUsagePlanRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetUsagePlanRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
