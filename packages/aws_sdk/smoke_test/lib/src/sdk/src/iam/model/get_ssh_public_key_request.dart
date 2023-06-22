// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.get_ssh_public_key_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/iam/model/encoding_type.dart' as _i3;

part 'get_ssh_public_key_request.g.dart';

abstract class GetSshPublicKeyRequest
    with
        _i1.HttpInput<GetSshPublicKeyRequest>,
        _i2.AWSEquatable<GetSshPublicKeyRequest>
    implements Built<GetSshPublicKeyRequest, GetSshPublicKeyRequestBuilder> {
  factory GetSshPublicKeyRequest({
    required String userName,
    required String sshPublicKeyId,
    required _i3.EncodingType encoding,
  }) {
    return _$GetSshPublicKeyRequest._(
      userName: userName,
      sshPublicKeyId: sshPublicKeyId,
      encoding: encoding,
    );
  }

  factory GetSshPublicKeyRequest.build(
          [void Function(GetSshPublicKeyRequestBuilder) updates]) =
      _$GetSshPublicKeyRequest;

  const GetSshPublicKeyRequest._();

  factory GetSshPublicKeyRequest.fromRequest(
    GetSshPublicKeyRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetSshPublicKeyRequest>> serializers =
      [GetSshPublicKeyRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetSshPublicKeyRequestBuilder b) {}

  /// The name of the IAM user associated with the SSH public key.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get userName;

  /// The unique identifier for the SSH public key.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters that can consist of any upper or lowercased letter or digit.
  String get sshPublicKeyId;

  /// Specifies the public key encoding format to use in the response. To retrieve the public key in ssh-rsa format, use `SSH`. To retrieve the public key in PEM format, use `PEM`.
  _i3.EncodingType get encoding;
  @override
  GetSshPublicKeyRequest getPayload() => this;
  @override
  List<Object?> get props => [
        userName,
        sshPublicKeyId,
        encoding,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetSshPublicKeyRequest')
      ..add(
        'userName',
        userName,
      )
      ..add(
        'sshPublicKeyId',
        sshPublicKeyId,
      )
      ..add(
        'encoding',
        encoding,
      );
    return helper.toString();
  }
}

class GetSshPublicKeyRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<GetSshPublicKeyRequest> {
  const GetSshPublicKeyRequestAwsQuerySerializer()
      : super('GetSshPublicKeyRequest');

  @override
  Iterable<Type> get types => const [
        GetSshPublicKeyRequest,
        _$GetSshPublicKeyRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetSshPublicKeyRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetSshPublicKeyRequestBuilder();
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
        case 'Encoding':
          result.encoding = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.EncodingType),
          ) as _i3.EncodingType);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetSshPublicKeyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetSshPublicKeyRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetSshPublicKeyRequest(:userName, :sshPublicKeyId, :encoding) =
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
      ..add(const _i1.XmlElementName('Encoding'))
      ..add(serializers.serialize(
        encoding,
        specifiedType: const FullType.nullable(_i3.EncodingType),
      ));
    return result$;
  }
}
