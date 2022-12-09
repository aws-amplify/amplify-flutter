// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.delete_stored_query_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'delete_stored_query_response.g.dart';

abstract class DeleteStoredQueryResponse
    with _i1.AWSEquatable<DeleteStoredQueryResponse>
    implements
        Built<DeleteStoredQueryResponse, DeleteStoredQueryResponseBuilder>,
        _i2.EmptyPayload {
  factory DeleteStoredQueryResponse() {
    return _$DeleteStoredQueryResponse._();
  }

  factory DeleteStoredQueryResponse.build(
          [void Function(DeleteStoredQueryResponseBuilder) updates]) =
      _$DeleteStoredQueryResponse;

  const DeleteStoredQueryResponse._();

  /// Constructs a [DeleteStoredQueryResponse] from a [payload] and [response].
  factory DeleteStoredQueryResponse.fromResponse(
    DeleteStoredQueryResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    DeleteStoredQueryResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteStoredQueryResponseBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteStoredQueryResponse');
    return helper.toString();
  }
}

class DeleteStoredQueryResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<DeleteStoredQueryResponse> {
  const DeleteStoredQueryResponseAwsJson11Serializer()
      : super('DeleteStoredQueryResponse');

  @override
  Iterable<Type> get types => const [
        DeleteStoredQueryResponse,
        _$DeleteStoredQueryResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DeleteStoredQueryResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteStoredQueryResponseBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
