// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.update_ssh_public_key_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/iam/model/status_type.dart' as _i3;

part 'update_ssh_public_key_request.g.dart';

abstract class UpdateSshPublicKeyRequest
    with
        _i1.HttpInput<UpdateSshPublicKeyRequest>,
        _i2.AWSEquatable<UpdateSshPublicKeyRequest>
    implements
        Built<UpdateSshPublicKeyRequest, UpdateSshPublicKeyRequestBuilder> {
  factory UpdateSshPublicKeyRequest({
    required String userName,
    required String sshPublicKeyId,
    required _i3.StatusType status,
  }) {
    return _$UpdateSshPublicKeyRequest._(
      userName: userName,
      sshPublicKeyId: sshPublicKeyId,
      status: status,
    );
  }

  factory UpdateSshPublicKeyRequest.build(
          [void Function(UpdateSshPublicKeyRequestBuilder) updates]) =
      _$UpdateSshPublicKeyRequest;

  const UpdateSshPublicKeyRequest._();

  factory UpdateSshPublicKeyRequest.fromRequest(
    UpdateSshPublicKeyRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<UpdateSshPublicKeyRequest>>
      serializers = [UpdateSshPublicKeyRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateSshPublicKeyRequestBuilder b) {}

  /// The name of the IAM user associated with the SSH public key.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get userName;

  /// The unique identifier for the SSH public key.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters that can consist of any upper or lowercased letter or digit.
  String get sshPublicKeyId;

  /// The status to assign to the SSH public key. `Active` means that the key can be used for authentication with an CodeCommit repository. `Inactive` means that the key cannot be used.
  _i3.StatusType get status;
  @override
  UpdateSshPublicKeyRequest getPayload() => this;
  @override
  List<Object?> get props => [
        userName,
        sshPublicKeyId,
        status,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateSshPublicKeyRequest')
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
      );
    return helper.toString();
  }
}

class UpdateSshPublicKeyRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<UpdateSshPublicKeyRequest> {
  const UpdateSshPublicKeyRequestAwsQuerySerializer()
      : super('UpdateSshPublicKeyRequest');

  @override
  Iterable<Type> get types => const [
        UpdateSshPublicKeyRequest,
        _$UpdateSshPublicKeyRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  UpdateSshPublicKeyRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateSshPublicKeyRequestBuilder();
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
            specifiedType: const FullType(_i3.StatusType),
          ) as _i3.StatusType);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UpdateSshPublicKeyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'UpdateSshPublicKeyRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final UpdateSshPublicKeyRequest(:userName, :sshPublicKeyId, :status) =
        object;
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
    result$
      ..add(const _i1.XmlElementName('Status'))
      ..add(serializers.serialize(
        status,
        specifiedType: const FullType.nullable(_i3.StatusType),
      ));
    return result$;
  }
}
