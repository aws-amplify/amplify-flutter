// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.delete_user_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_user_request.g.dart';

abstract class DeleteUserRequest
    with _i1.HttpInput<DeleteUserRequest>, _i2.AWSEquatable<DeleteUserRequest>
    implements Built<DeleteUserRequest, DeleteUserRequestBuilder> {
  factory DeleteUserRequest({required String userName}) {
    return _$DeleteUserRequest._(userName: userName);
  }

  factory DeleteUserRequest.build(
      [void Function(DeleteUserRequestBuilder) updates]) = _$DeleteUserRequest;

  const DeleteUserRequest._();

  factory DeleteUserRequest.fromRequest(
    DeleteUserRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteUserRequest>> serializers = [
    DeleteUserRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteUserRequestBuilder b) {}

  /// The name of the user to delete.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get userName;
  @override
  DeleteUserRequest getPayload() => this;
  @override
  List<Object?> get props => [userName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteUserRequest')
      ..add(
        'userName',
        userName,
      );
    return helper.toString();
  }
}

class DeleteUserRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteUserRequest> {
  const DeleteUserRequestAwsQuerySerializer() : super('DeleteUserRequest');

  @override
  Iterable<Type> get types => const [
        DeleteUserRequest,
        _$DeleteUserRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeleteUserRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteUserRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'UserName':
          result.userName = (serializers.deserialize(
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
    DeleteUserRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteUserRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final DeleteUserRequest(:userName) = object;
    result$
      ..add(const _i1.XmlElementName('UserName'))
      ..add(serializers.serialize(
        userName,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
