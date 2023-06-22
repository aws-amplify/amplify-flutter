// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.create_service_specific_credential_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'create_service_specific_credential_request.g.dart';

abstract class CreateServiceSpecificCredentialRequest
    with
        _i1.HttpInput<CreateServiceSpecificCredentialRequest>,
        _i2.AWSEquatable<CreateServiceSpecificCredentialRequest>
    implements
        Built<CreateServiceSpecificCredentialRequest,
            CreateServiceSpecificCredentialRequestBuilder> {
  factory CreateServiceSpecificCredentialRequest({
    required String userName,
    required String serviceName,
  }) {
    return _$CreateServiceSpecificCredentialRequest._(
      userName: userName,
      serviceName: serviceName,
    );
  }

  factory CreateServiceSpecificCredentialRequest.build(
      [void Function(CreateServiceSpecificCredentialRequestBuilder)
          updates]) = _$CreateServiceSpecificCredentialRequest;

  const CreateServiceSpecificCredentialRequest._();

  factory CreateServiceSpecificCredentialRequest.fromRequest(
    CreateServiceSpecificCredentialRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<CreateServiceSpecificCredentialRequest>>
      serializers = [
    CreateServiceSpecificCredentialRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateServiceSpecificCredentialRequestBuilder b) {}

  /// The name of the IAM user that is to be associated with the credentials. The new service-specific credentials have the same permissions as the associated user except that they can be used only to access the specified service.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get userName;

  /// The name of the Amazon Web Services service that is to be associated with the credentials. The service you specify here is the only service that can be accessed using these credentials.
  String get serviceName;
  @override
  CreateServiceSpecificCredentialRequest getPayload() => this;
  @override
  List<Object?> get props => [
        userName,
        serviceName,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateServiceSpecificCredentialRequest')
          ..add(
            'userName',
            userName,
          )
          ..add(
            'serviceName',
            serviceName,
          );
    return helper.toString();
  }
}

class CreateServiceSpecificCredentialRequestAwsQuerySerializer extends _i1
    .StructuredSmithySerializer<CreateServiceSpecificCredentialRequest> {
  const CreateServiceSpecificCredentialRequestAwsQuerySerializer()
      : super('CreateServiceSpecificCredentialRequest');

  @override
  Iterable<Type> get types => const [
        CreateServiceSpecificCredentialRequest,
        _$CreateServiceSpecificCredentialRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CreateServiceSpecificCredentialRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateServiceSpecificCredentialRequestBuilder();
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
        case 'ServiceName':
          result.serviceName = (serializers.deserialize(
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
    CreateServiceSpecificCredentialRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateServiceSpecificCredentialRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final CreateServiceSpecificCredentialRequest(:userName, :serviceName) =
        object;
    result$
      ..add(const _i1.XmlElementName('UserName'))
      ..add(serializers.serialize(
        userName,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('ServiceName'))
      ..add(serializers.serialize(
        serviceName,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
