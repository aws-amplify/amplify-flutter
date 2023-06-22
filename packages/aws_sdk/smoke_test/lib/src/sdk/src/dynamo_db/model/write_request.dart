// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.write_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/delete_request.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/put_request.dart' as _i2;

part 'write_request.g.dart';

/// Represents an operation to perform - either `DeleteItem` or `PutItem`. You can only request one of these operations, not both, in a single `WriteRequest`. If you do need to perform both of these operations, you need to provide two separate `WriteRequest` objects.
abstract class WriteRequest
    with _i1.AWSEquatable<WriteRequest>
    implements Built<WriteRequest, WriteRequestBuilder> {
  /// Represents an operation to perform - either `DeleteItem` or `PutItem`. You can only request one of these operations, not both, in a single `WriteRequest`. If you do need to perform both of these operations, you need to provide two separate `WriteRequest` objects.
  factory WriteRequest({
    _i2.PutRequest? putRequest,
    _i3.DeleteRequest? deleteRequest,
  }) {
    return _$WriteRequest._(
      putRequest: putRequest,
      deleteRequest: deleteRequest,
    );
  }

  /// Represents an operation to perform - either `DeleteItem` or `PutItem`. You can only request one of these operations, not both, in a single `WriteRequest`. If you do need to perform both of these operations, you need to provide two separate `WriteRequest` objects.
  factory WriteRequest.build([void Function(WriteRequestBuilder) updates]) =
      _$WriteRequest;

  const WriteRequest._();

  static const List<_i4.SmithySerializer<WriteRequest>> serializers = [
    WriteRequestAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(WriteRequestBuilder b) {}

  /// A request to perform a `PutItem` operation.
  _i2.PutRequest? get putRequest;

  /// A request to perform a `DeleteItem` operation.
  _i3.DeleteRequest? get deleteRequest;
  @override
  List<Object?> get props => [
        putRequest,
        deleteRequest,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('WriteRequest')
      ..add(
        'putRequest',
        putRequest,
      )
      ..add(
        'deleteRequest',
        deleteRequest,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'PutRequest':
          result.putRequest.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.PutRequest),
          ) as _i2.PutRequest));
        case 'DeleteRequest':
          result.deleteRequest.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.DeleteRequest),
          ) as _i3.DeleteRequest));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    WriteRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final WriteRequest(:putRequest, :deleteRequest) = object;
    if (putRequest != null) {
      result$
        ..add('PutRequest')
        ..add(serializers.serialize(
          putRequest,
          specifiedType: const FullType(_i2.PutRequest),
        ));
    }
    if (deleteRequest != null) {
      result$
        ..add('DeleteRequest')
        ..add(serializers.serialize(
          deleteRequest,
          specifiedType: const FullType(_i3.DeleteRequest),
        ));
    }
    return result$;
  }
}
