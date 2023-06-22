// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.ssh_public_key_metadata; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/status_type.dart' as _i2;

part 'ssh_public_key_metadata.g.dart';

/// Contains information about an SSH public key, without the key's body or fingerprint.
///
/// This data type is used as a response element in the ListSSHPublicKeys operation.
abstract class SshPublicKeyMetadata
    with _i1.AWSEquatable<SshPublicKeyMetadata>
    implements Built<SshPublicKeyMetadata, SshPublicKeyMetadataBuilder> {
  /// Contains information about an SSH public key, without the key's body or fingerprint.
  ///
  /// This data type is used as a response element in the ListSSHPublicKeys operation.
  factory SshPublicKeyMetadata({
    required String userName,
    required String sshPublicKeyId,
    required _i2.StatusType status,
    required DateTime uploadDate,
  }) {
    return _$SshPublicKeyMetadata._(
      userName: userName,
      sshPublicKeyId: sshPublicKeyId,
      status: status,
      uploadDate: uploadDate,
    );
  }

  /// Contains information about an SSH public key, without the key's body or fingerprint.
  ///
  /// This data type is used as a response element in the ListSSHPublicKeys operation.
  factory SshPublicKeyMetadata.build(
          [void Function(SshPublicKeyMetadataBuilder) updates]) =
      _$SshPublicKeyMetadata;

  const SshPublicKeyMetadata._();

  static const List<_i3.SmithySerializer<SshPublicKeyMetadata>> serializers = [
    SshPublicKeyMetadataAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SshPublicKeyMetadataBuilder b) {}

  /// The name of the IAM user associated with the SSH public key.
  String get userName;

  /// The unique identifier for the SSH public key.
  String get sshPublicKeyId;

  /// The status of the SSH public key. `Active` means that the key can be used for authentication with an CodeCommit repository. `Inactive` means that the key cannot be used.
  _i2.StatusType get status;

  /// The date and time, in [ISO 8601 date-time format](http://www.iso.org/iso/iso8601), when the SSH public key was uploaded.
  DateTime get uploadDate;
  @override
  List<Object?> get props => [
        userName,
        sshPublicKeyId,
        status,
        uploadDate,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SshPublicKeyMetadata')
      ..add(
        'userName',
        userName,
      )
      ..add(
        'sshPublicKeyId',
        sshPublicKeyId,
      )
      ..add(
        'status',
        status,
      )
      ..add(
        'uploadDate',
        uploadDate,
      );
    return helper.toString();
  }
}

class SshPublicKeyMetadataAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<SshPublicKeyMetadata> {
  const SshPublicKeyMetadataAwsQuerySerializer()
      : super('SshPublicKeyMetadata');

  @override
  Iterable<Type> get types => const [
        SshPublicKeyMetadata,
        _$SshPublicKeyMetadata,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  SshPublicKeyMetadata deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SshPublicKeyMetadataBuilder();
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
        case 'Status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.StatusType),
          ) as _i2.StatusType);
        case 'UploadDate':
          result.uploadDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SshPublicKeyMetadata object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'SshPublicKeyMetadataResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final SshPublicKeyMetadata(
      :userName,
      :sshPublicKeyId,
      :status,
      :uploadDate
    ) = object;
    result$
      ..add(const _i3.XmlElementName('UserName'))
      ..add(serializers.serialize(
        userName,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i3.XmlElementName('SSHPublicKeyId'))
      ..add(serializers.serialize(
        sshPublicKeyId,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i3.XmlElementName('Status'))
      ..add(serializers.serialize(
        status,
        specifiedType: const FullType.nullable(_i2.StatusType),
      ));
    result$
      ..add(const _i3.XmlElementName('UploadDate'))
      ..add(serializers.serialize(
        uploadDate,
        specifiedType: const FullType.nullable(DateTime),
      ));
    return result$;
  }
}
