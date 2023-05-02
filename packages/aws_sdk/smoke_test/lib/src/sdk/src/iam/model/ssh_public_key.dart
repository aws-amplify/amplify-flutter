// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.ssh_public_key; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/status_type.dart' as _i2;

part 'ssh_public_key.g.dart';

/// Contains information about an SSH public key.
///
/// This data type is used as a response element in the GetSSHPublicKey and UploadSSHPublicKey operations.
abstract class SshPublicKey
    with _i1.AWSEquatable<SshPublicKey>
    implements Built<SshPublicKey, SshPublicKeyBuilder> {
  /// Contains information about an SSH public key.
  ///
  /// This data type is used as a response element in the GetSSHPublicKey and UploadSSHPublicKey operations.
  factory SshPublicKey({
    required String userName,
    required String sshPublicKeyId,
    required String fingerprint,
    required String sshPublicKeyBody,
    required _i2.StatusType status,
    DateTime? uploadDate,
  }) {
    return _$SshPublicKey._(
      userName: userName,
      sshPublicKeyId: sshPublicKeyId,
      fingerprint: fingerprint,
      sshPublicKeyBody: sshPublicKeyBody,
      status: status,
      uploadDate: uploadDate,
    );
  }

  /// Contains information about an SSH public key.
  ///
  /// This data type is used as a response element in the GetSSHPublicKey and UploadSSHPublicKey operations.
  factory SshPublicKey.build([void Function(SshPublicKeyBuilder) updates]) =
      _$SshPublicKey;

  const SshPublicKey._();

  static const List<_i3.SmithySerializer> serializers = [
    SshPublicKeyAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SshPublicKeyBuilder b) {}

  /// The name of the IAM user associated with the SSH public key.
  String get userName;

  /// The unique identifier for the SSH public key.
  String get sshPublicKeyId;

  /// The MD5 message digest of the SSH public key.
  String get fingerprint;

  /// The SSH public key.
  String get sshPublicKeyBody;

  /// The status of the SSH public key. `Active` means that the key can be used for authentication with an CodeCommit repository. `Inactive` means that the key cannot be used.
  _i2.StatusType get status;

  /// The date and time, in [ISO 8601 date-time format](http://www.iso.org/iso/iso8601), when the SSH public key was uploaded.
  DateTime? get uploadDate;
  @override
  List<Object?> get props => [
        userName,
        sshPublicKeyId,
        fingerprint,
        sshPublicKeyBody,
        status,
        uploadDate,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SshPublicKey');
    helper.add(
      'userName',
      userName,
    );
    helper.add(
      'sshPublicKeyId',
      sshPublicKeyId,
    );
    helper.add(
      'fingerprint',
      fingerprint,
    );
    helper.add(
      'sshPublicKeyBody',
      sshPublicKeyBody,
    );
    helper.add(
      'status',
      status,
    );
    helper.add(
      'uploadDate',
      uploadDate,
    );
    return helper.toString();
  }
}

class SshPublicKeyAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<SshPublicKey> {
  const SshPublicKeyAwsQuerySerializer() : super('SshPublicKey');

  @override
  Iterable<Type> get types => const [
        SshPublicKey,
        _$SshPublicKey,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  SshPublicKey deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SshPublicKeyBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'UserName':
          result.userName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'SSHPublicKeyId':
          result.sshPublicKeyId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Fingerprint':
          result.fingerprint = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'SSHPublicKeyBody':
          result.sshPublicKeyBody = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Status':
          result.status = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.StatusType),
          ) as _i2.StatusType);
          break;
        case 'UploadDate':
          if (value != null) {
            result.uploadDate = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
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
    final payload = (object as SshPublicKey);
    final result = <Object?>[
      const _i3.XmlElementName(
        'SshPublicKeyResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    result
      ..add(const _i3.XmlElementName('UserName'))
      ..add(serializers.serialize(
        payload.userName,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i3.XmlElementName('SSHPublicKeyId'))
      ..add(serializers.serialize(
        payload.sshPublicKeyId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i3.XmlElementName('Fingerprint'))
      ..add(serializers.serialize(
        payload.fingerprint,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i3.XmlElementName('SSHPublicKeyBody'))
      ..add(serializers.serialize(
        payload.sshPublicKeyBody,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i3.XmlElementName('Status'))
      ..add(serializers.serialize(
        payload.status,
        specifiedType: const FullType.nullable(_i2.StatusType),
      ));
    if (payload.uploadDate != null) {
      result
        ..add(const _i3.XmlElementName('UploadDate'))
        ..add(serializers.serialize(
          payload.uploadDate!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result;
  }
}
