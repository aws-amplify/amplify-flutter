// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.delete_ssh_public_key_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_ssh_public_key_request.g.dart';

abstract class DeleteSshPublicKeyRequest
    with
        _i1.HttpInput<DeleteSshPublicKeyRequest>,
        _i2.AWSEquatable<DeleteSshPublicKeyRequest>
    implements
        Built<DeleteSshPublicKeyRequest, DeleteSshPublicKeyRequestBuilder> {
  factory DeleteSshPublicKeyRequest({
    required String userName,
    required String sshPublicKeyId,
  }) {
    return _$DeleteSshPublicKeyRequest._(
      userName: userName,
      sshPublicKeyId: sshPublicKeyId,
    );
  }

  factory DeleteSshPublicKeyRequest.build(
          [void Function(DeleteSshPublicKeyRequestBuilder) updates]) =
      _$DeleteSshPublicKeyRequest;

  const DeleteSshPublicKeyRequest._();

  factory DeleteSshPublicKeyRequest.fromRequest(
    DeleteSshPublicKeyRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteSshPublicKeyRequest>>
      serializers = [DeleteSshPublicKeyRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteSshPublicKeyRequestBuilder b) {}

  /// The name of the IAM user associated with the SSH public key.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get userName;

  /// The unique identifier for the SSH public key.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters that can consist of any upper or lowercased letter or digit.
  String get sshPublicKeyId;
  @override
  DeleteSshPublicKeyRequest getPayload() => this;
  @override
  List<Object?> get props => [
        userName,
        sshPublicKeyId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteSshPublicKeyRequest')
      ..add(
        'userName',
        userName,
      )
      ..add(
        'sshPublicKeyId',
        sshPublicKeyId,
      );
    return helper.toString();
  }
}

class DeleteSshPublicKeyRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteSshPublicKeyRequest> {
  const DeleteSshPublicKeyRequestAwsQuerySerializer()
      : super('DeleteSshPublicKeyRequest');

  @override
  Iterable<Type> get types => const [
        DeleteSshPublicKeyRequest,
        _$DeleteSshPublicKeyRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeleteSshPublicKeyRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteSshPublicKeyRequestBuilder();
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
        case 'SSHPublicKeyId':
          result.sshPublicKeyId = (serializers.deserialize(
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
    DeleteSshPublicKeyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteSshPublicKeyRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final DeleteSshPublicKeyRequest(:userName, :sshPublicKeyId) = object;
    result$
      ..add(const _i1.XmlElementName('UserName'))
      ..add(serializers.serialize(
        userName,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('SSHPublicKeyId'))
      ..add(serializers.serialize(
        sshPublicKeyId,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
