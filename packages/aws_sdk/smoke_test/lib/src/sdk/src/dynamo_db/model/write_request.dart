// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.write_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/put_request.dart' as _i3;

part 'write_request.g.dart';

/// Represents an operation to perform - either `DeleteItem` or `PutItem`. You can only request one of these operations, not both, in a single `WriteRequest`. If you do need to perform both of these operations, you need to provide two separate `WriteRequest` objects.
abstract class WriteRequest
    with _i1.AWSEquatable<WriteRequest>
    implements Built<WriteRequest, WriteRequestBuilder> {
  /// Represents an operation to perform - either `DeleteItem` or `PutItem`. You can only request one of these operations, not both, in a single `WriteRequest`. If you do need to perform both of these operations, you need to provide two separate `WriteRequest` objects.
  factory WriteRequest({
    _i2.DeleteRequest? deleteRequest,
    _i3.PutRequest? putRequest,
  }) {
    return _$WriteRequest._(
      deleteRequest: deleteRequest,
      putRequest: putRequest,
    );
  }

  /// Represents an operation to perform - either `DeleteItem` or `PutItem`. You can only request one of these operations, not both, in a single `WriteRequest`. If you do need to perform both of these operations, you need to provide two separate `WriteRequest` objects.
  factory WriteRequest.build([void Function(WriteRequestBuilder) updates]) =
      _$WriteRequest;

  const WriteRequest._();

  static const List<_i4.SmithySerializer> serializers = [
    WriteRequestAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(WriteRequestBuilder b) {}

  /// A request to perform a `DeleteItem` operation.
  _i2.DeleteRequest? get deleteRequest;

  /// A request to perform a `PutItem` operation.
  _i3.PutRequest? get putRequest;
  @override
  List<Object?> get props => [
        deleteRequest,
        putRequest,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('WriteRequest');
    helper.add(
      'deleteRequest',
      deleteRequest,
    );
    helper.add(
      'putRequest',
      putRequest,
    );
    return helper.toString();
  }
}

class WriteRequestAwsJson10Serializer
    extends _i4.StructuredSmithySerializer<WriteRequest> {
  const WriteRequestAwsJson10Serializer() : super('WriteRequest');

  @override
  Iterable<Type> get types => const [
        WriteRequest,
        _$WriteRequest,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  WriteRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WriteRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'DeleteRequest':
          if (value != null) {
            result.deleteRequest.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.DeleteRequest),
            ) as _i2.DeleteRequest));
          }
          break;
        case 'PutRequest':
          if (value != null) {
            result.putRequest.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.PutRequest),
            ) as _i3.PutRequest));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as WriteRequest);
    final result = <Object?>[];
    if (payload.deleteRequest != null) {
      result
        ..add('DeleteRequest')
        ..add(serializers.serialize(
          payload.deleteRequest!,
          specifiedType: const FullType(_i2.DeleteRequest),
        ));
    }
    if (payload.putRequest != null) {
      result
        ..add('PutRequest')
        ..add(serializers.serialize(
          payload.putRequest!,
          specifiedType: const FullType(_i3.PutRequest),
        ));
    }
    return result;
  }
}
