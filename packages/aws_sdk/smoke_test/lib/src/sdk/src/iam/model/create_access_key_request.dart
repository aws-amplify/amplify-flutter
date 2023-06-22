// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.create_access_key_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'create_access_key_request.g.dart';

abstract class CreateAccessKeyRequest
    with
        _i1.HttpInput<CreateAccessKeyRequest>,
        _i2.AWSEquatable<CreateAccessKeyRequest>
    implements Built<CreateAccessKeyRequest, CreateAccessKeyRequestBuilder> {
  factory CreateAccessKeyRequest({String? userName}) {
    return _$CreateAccessKeyRequest._(userName: userName);
  }

  factory CreateAccessKeyRequest.build(
          [void Function(CreateAccessKeyRequestBuilder) updates]) =
      _$CreateAccessKeyRequest;

  const CreateAccessKeyRequest._();

  factory CreateAccessKeyRequest.fromRequest(
    CreateAccessKeyRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateAccessKeyRequest>> serializers =
      [CreateAccessKeyRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateAccessKeyRequestBuilder b) {}

  /// The name of the IAM user that the new key will belong to.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String? get userName;
  @override
  CreateAccessKeyRequest getPayload() => this;
  @override
  List<Object?> get props => [userName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateAccessKeyRequest')
      ..add(
        'userName',
        userName,
      );
    return helper.toString();
  }
}

class CreateAccessKeyRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<CreateAccessKeyRequest> {
  const CreateAccessKeyRequestAwsQuerySerializer()
      : super('CreateAccessKeyRequest');

  @override
  Iterable<Type> get types => const [
        CreateAccessKeyRequest,
        _$CreateAccessKeyRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CreateAccessKeyRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateAccessKeyRequestBuilder();
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
    CreateAccessKeyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateAccessKeyRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final CreateAccessKeyRequest(:userName) = object;
    if (userName != null) {
      result$
        ..add(const _i1.XmlElementName('UserName'))
        ..add(serializers.serialize(
          userName,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
