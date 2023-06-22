// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.reset_service_specific_credential_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'reset_service_specific_credential_request.g.dart';

abstract class ResetServiceSpecificCredentialRequest
    with
        _i1.HttpInput<ResetServiceSpecificCredentialRequest>,
        _i2.AWSEquatable<ResetServiceSpecificCredentialRequest>
    implements
        Built<ResetServiceSpecificCredentialRequest,
            ResetServiceSpecificCredentialRequestBuilder> {
  factory ResetServiceSpecificCredentialRequest({
    String? userName,
    required String serviceSpecificCredentialId,
  }) {
    return _$ResetServiceSpecificCredentialRequest._(
      userName: userName,
      serviceSpecificCredentialId: serviceSpecificCredentialId,
    );
  }

  factory ResetServiceSpecificCredentialRequest.build(
      [void Function(ResetServiceSpecificCredentialRequestBuilder)
          updates]) = _$ResetServiceSpecificCredentialRequest;

  const ResetServiceSpecificCredentialRequest._();

  factory ResetServiceSpecificCredentialRequest.fromRequest(
    ResetServiceSpecificCredentialRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ResetServiceSpecificCredentialRequest>>
      serializers = [ResetServiceSpecificCredentialRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResetServiceSpecificCredentialRequestBuilder b) {}

  /// The name of the IAM user associated with the service-specific credential. If this value is not specified, then the operation assumes the user whose credentials are used to call the operation.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String? get userName;

  /// The unique identifier of the service-specific credential.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters that can consist of any upper or lowercased letter or digit.
  String get serviceSpecificCredentialId;
  @override
  ResetServiceSpecificCredentialRequest getPayload() => this;
  @override
  List<Object?> get props => [
        userName,
        serviceSpecificCredentialId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ResetServiceSpecificCredentialRequest')
          ..add(
            'userName',
            userName,
          )
          ..add(
            'serviceSpecificCredentialId',
            serviceSpecificCredentialId,
          );
    return helper.toString();
  }
}

class ResetServiceSpecificCredentialRequestAwsQuerySerializer extends _i1
    .StructuredSmithySerializer<ResetServiceSpecificCredentialRequest> {
  const ResetServiceSpecificCredentialRequestAwsQuerySerializer()
      : super('ResetServiceSpecificCredentialRequest');

  @override
  Iterable<Type> get types => const [
        ResetServiceSpecificCredentialRequest,
        _$ResetServiceSpecificCredentialRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ResetServiceSpecificCredentialRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResetServiceSpecificCredentialRequestBuilder();
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
        case 'ServiceSpecificCredentialId':
          result.serviceSpecificCredentialId = (serializers.deserialize(
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
    ResetServiceSpecificCredentialRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ResetServiceSpecificCredentialRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final ResetServiceSpecificCredentialRequest(
      :userName,
      :serviceSpecificCredentialId
    ) = object;
    if (userName != null) {
      result$
        ..add(const _i1.XmlElementName('UserName'))
        ..add(serializers.serialize(
          userName,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('ServiceSpecificCredentialId'))
      ..add(serializers.serialize(
        serviceSpecificCredentialId,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
