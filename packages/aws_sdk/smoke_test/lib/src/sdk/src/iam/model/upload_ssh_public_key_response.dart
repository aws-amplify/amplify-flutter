// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.upload_ssh_public_key_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/ssh_public_key.dart' as _i2;

part 'upload_ssh_public_key_response.g.dart';

/// Contains the response to a successful UploadSSHPublicKey request.
abstract class UploadSshPublicKeyResponse
    with _i1.AWSEquatable<UploadSshPublicKeyResponse>
    implements
        Built<UploadSshPublicKeyResponse, UploadSshPublicKeyResponseBuilder> {
  /// Contains the response to a successful UploadSSHPublicKey request.
  factory UploadSshPublicKeyResponse({_i2.SshPublicKey? sshPublicKey}) {
    return _$UploadSshPublicKeyResponse._(sshPublicKey: sshPublicKey);
  }

  /// Contains the response to a successful UploadSSHPublicKey request.
  factory UploadSshPublicKeyResponse.build(
          [void Function(UploadSshPublicKeyResponseBuilder) updates]) =
      _$UploadSshPublicKeyResponse;

  const UploadSshPublicKeyResponse._();

  /// Constructs a [UploadSshPublicKeyResponse] from a [payload] and [response].
  factory UploadSshPublicKeyResponse.fromResponse(
    UploadSshPublicKeyResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<UploadSshPublicKeyResponse>>
      serializers = [UploadSshPublicKeyResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UploadSshPublicKeyResponseBuilder b) {}

  /// Contains information about the SSH public key.
  _i2.SshPublicKey? get sshPublicKey;
  @override
  List<Object?> get props => [sshPublicKey];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UploadSshPublicKeyResponse')
      ..add(
        'sshPublicKey',
        sshPublicKey,
      );
    return helper.toString();
  }
}

class UploadSshPublicKeyResponseAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<UploadSshPublicKeyResponse> {
  const UploadSshPublicKeyResponseAwsQuerySerializer()
      : super('UploadSshPublicKeyResponse');

  @override
  Iterable<Type> get types => const [
        UploadSshPublicKeyResponse,
        _$UploadSshPublicKeyResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  UploadSshPublicKeyResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UploadSshPublicKeyResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'SSHPublicKey':
          result.sshPublicKey.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.SshPublicKey),
          ) as _i2.SshPublicKey));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UploadSshPublicKeyResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'UploadSshPublicKeyResponseResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final UploadSshPublicKeyResponse(:sshPublicKey) = object;
    if (sshPublicKey != null) {
      result$
        ..add(const _i3.XmlElementName('SSHPublicKey'))
        ..add(serializers.serialize(
          sshPublicKey,
          specifiedType: const FullType(_i2.SshPublicKey),
        ));
    }
    return result$;
  }
}
