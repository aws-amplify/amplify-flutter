// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.get_account_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_account_request.g.dart';

/// Requests API Gateway to get information about the current Account resource.
abstract class GetAccountRequest
    with _i1.HttpInput<GetAccountRequest>, _i2.AWSEquatable<GetAccountRequest>
    implements
        Built<GetAccountRequest, GetAccountRequestBuilder>,
        _i1.EmptyPayload {
  /// Requests API Gateway to get information about the current Account resource.
  factory GetAccountRequest() {
    return _$GetAccountRequest._();
  }

  /// Requests API Gateway to get information about the current Account resource.
  factory GetAccountRequest.build(
      [void Function(GetAccountRequestBuilder) updates]) = _$GetAccountRequest;

  const GetAccountRequest._();

  factory GetAccountRequest.fromRequest(
    GetAccountRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    GetAccountRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetAccountRequestBuilder b) {}
  @override
  GetAccountRequest getPayload() => this;
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetAccountRequest');
    return helper.toString();
  }
}

class GetAccountRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetAccountRequest> {
  const GetAccountRequestRestJson1Serializer() : super('GetAccountRequest');

  @override
  Iterable<Type> get types => const [
        GetAccountRequest,
        _$GetAccountRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetAccountRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetAccountRequestBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
