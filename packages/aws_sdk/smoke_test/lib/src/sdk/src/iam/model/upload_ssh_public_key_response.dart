// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.upload_ssh_public_key_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/ssh_public_key.dart';

part 'upload_ssh_public_key_response.g.dart';

/// Contains the response to a successful UploadSSHPublicKey request.
abstract class UploadSshPublicKeyResponse
    with _i1.AWSEquatable<UploadSshPublicKeyResponse>
    implements
        Built<UploadSshPublicKeyResponse, UploadSshPublicKeyResponseBuilder> {
  /// Contains the response to a successful UploadSSHPublicKey request.
  factory UploadSshPublicKeyResponse({SshPublicKey? sshPublicKey}) {
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

  static const List<_i2.SmithySerializer<UploadSshPublicKeyResponse>>
      serializers = [UploadSshPublicKeyResponseAwsQuerySerializer()];

  /// Contains information about the SSH public key.
  SshPublicKey? get sshPublicKey;
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
    extends _i2.StructuredSmithySerializer<UploadSshPublicKeyResponse> {
  const UploadSshPublicKeyResponseAwsQuerySerializer()
      : super('UploadSshPublicKeyResponse');

  @override
  Iterable<Type> get types => const [
        UploadSshPublicKeyResponse,
        _$UploadSshPublicKeyResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
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
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
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
            specifiedType: const FullType(SshPublicKey),
          ) as SshPublicKey));
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
      const _i2.XmlElementName(
        'UploadSshPublicKeyResponseResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final UploadSshPublicKeyResponse(:sshPublicKey) = object;
    if (sshPublicKey != null) {
      result$
        ..add(const _i2.XmlElementName('SSHPublicKey'))
        ..add(serializers.serialize(
          sshPublicKey,
          specifiedType: const FullType(SshPublicKey),
        ));
    }
    return result$;
  }
}
