// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.upload_ssh_public_key_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'upload_ssh_public_key_request.g.dart';

abstract class UploadSshPublicKeyRequest
    with
        _i1.HttpInput<UploadSshPublicKeyRequest>,
        _i2.AWSEquatable<UploadSshPublicKeyRequest>
    implements
        Built<UploadSshPublicKeyRequest, UploadSshPublicKeyRequestBuilder> {
  factory UploadSshPublicKeyRequest({
    required String userName,
    required String sshPublicKeyBody,
  }) {
    return _$UploadSshPublicKeyRequest._(
      userName: userName,
      sshPublicKeyBody: sshPublicKeyBody,
    );
  }

  factory UploadSshPublicKeyRequest.build(
          [void Function(UploadSshPublicKeyRequestBuilder) updates]) =
      _$UploadSshPublicKeyRequest;

  const UploadSshPublicKeyRequest._();

  factory UploadSshPublicKeyRequest.fromRequest(
    UploadSshPublicKeyRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<UploadSshPublicKeyRequest>>
      serializers = [UploadSshPublicKeyRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UploadSshPublicKeyRequestBuilder b) {}

  /// The name of the IAM user to associate the SSH public key with.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get userName;

  /// The SSH public key. The public key must be encoded in ssh-rsa format or PEM format. The minimum bit-length of the public key is 2048 bits. For example, you can generate a 2048-bit key, and the resulting PEM file is 1679 bytes long.
  ///
  /// The [regex pattern](http://wikipedia.org/wiki/regex) used to validate this parameter is a string of characters consisting of the following:
  ///
  /// *   Any printable ASCII character ranging from the space character (`\\u0020`) through the end of the ASCII character range
  ///
  /// *   The printable characters in the Basic Latin and Latin-1 Supplement character set (through `\\u00FF`)
  ///
  /// *   The special characters tab (`\\u0009`), line feed (`\\u000A`), and carriage return (`\\u000D`)
  String get sshPublicKeyBody;
  @override
  UploadSshPublicKeyRequest getPayload() => this;
  @override
  List<Object?> get props => [
        userName,
        sshPublicKeyBody,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UploadSshPublicKeyRequest')
      ..add(
        'userName',
        userName,
      )
      ..add(
        'sshPublicKeyBody',
        sshPublicKeyBody,
      );
    return helper.toString();
  }
}

class UploadSshPublicKeyRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<UploadSshPublicKeyRequest> {
  const UploadSshPublicKeyRequestAwsQuerySerializer()
      : super('UploadSshPublicKeyRequest');

  @override
  Iterable<Type> get types => const [
        UploadSshPublicKeyRequest,
        _$UploadSshPublicKeyRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  UploadSshPublicKeyRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UploadSshPublicKeyRequestBuilder();
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
        case 'SSHPublicKeyBody':
          result.sshPublicKeyBody = (serializers.deserialize(
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
    UploadSshPublicKeyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'UploadSshPublicKeyRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final UploadSshPublicKeyRequest(:userName, :sshPublicKeyBody) = object;
    result$
      ..add(const _i1.XmlElementName('UserName'))
      ..add(serializers.serialize(
        userName,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('SSHPublicKeyBody'))
      ..add(serializers.serialize(
        sshPublicKeyBody,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
