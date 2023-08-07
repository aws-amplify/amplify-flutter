// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.get_ssh_public_key_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/ssh_public_key.dart';

part 'get_ssh_public_key_response.g.dart';

/// Contains the response to a successful GetSSHPublicKey request.
abstract class GetSshPublicKeyResponse
    with _i1.AWSEquatable<GetSshPublicKeyResponse>
    implements Built<GetSshPublicKeyResponse, GetSshPublicKeyResponseBuilder> {
  /// Contains the response to a successful GetSSHPublicKey request.
  factory GetSshPublicKeyResponse({SshPublicKey? sshPublicKey}) {
    return _$GetSshPublicKeyResponse._(sshPublicKey: sshPublicKey);
  }

  /// Contains the response to a successful GetSSHPublicKey request.
  factory GetSshPublicKeyResponse.build(
          [void Function(GetSshPublicKeyResponseBuilder) updates]) =
      _$GetSshPublicKeyResponse;

  const GetSshPublicKeyResponse._();

  /// Constructs a [GetSshPublicKeyResponse] from a [payload] and [response].
  factory GetSshPublicKeyResponse.fromResponse(
    GetSshPublicKeyResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<GetSshPublicKeyResponse>> serializers =
      [GetSshPublicKeyResponseAwsQuerySerializer()];

  /// A structure containing details about the SSH public key.
  SshPublicKey? get sshPublicKey;
  @override
  List<Object?> get props => [sshPublicKey];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetSshPublicKeyResponse')
      ..add(
        'sshPublicKey',
        sshPublicKey,
      );
    return helper.toString();
  }
}

class GetSshPublicKeyResponseAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<GetSshPublicKeyResponse> {
  const GetSshPublicKeyResponseAwsQuerySerializer()
      : super('GetSshPublicKeyResponse');

  @override
  Iterable<Type> get types => const [
        GetSshPublicKeyResponse,
        _$GetSshPublicKeyResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetSshPublicKeyResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetSshPublicKeyResponseBuilder();
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
    GetSshPublicKeyResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'GetSshPublicKeyResponseResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetSshPublicKeyResponse(:sshPublicKey) = object;
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
