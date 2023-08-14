// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.create_service_specific_credential_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/service_specific_credential.dart';

part 'create_service_specific_credential_response.g.dart';

abstract class CreateServiceSpecificCredentialResponse
    with
        _i1.AWSEquatable<CreateServiceSpecificCredentialResponse>
    implements
        Built<CreateServiceSpecificCredentialResponse,
            CreateServiceSpecificCredentialResponseBuilder> {
  factory CreateServiceSpecificCredentialResponse(
      {ServiceSpecificCredential? serviceSpecificCredential}) {
    return _$CreateServiceSpecificCredentialResponse._(
        serviceSpecificCredential: serviceSpecificCredential);
  }

  factory CreateServiceSpecificCredentialResponse.build(
      [void Function(CreateServiceSpecificCredentialResponseBuilder)
          updates]) = _$CreateServiceSpecificCredentialResponse;

  const CreateServiceSpecificCredentialResponse._();

  /// Constructs a [CreateServiceSpecificCredentialResponse] from a [payload] and [response].
  factory CreateServiceSpecificCredentialResponse.fromResponse(
    CreateServiceSpecificCredentialResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<CreateServiceSpecificCredentialResponse>>
      serializers = [
    CreateServiceSpecificCredentialResponseAwsQuerySerializer()
  ];

  /// A structure that contains information about the newly created service-specific credential.
  ///
  /// This is the only time that the password for this credential set is available. It cannot be recovered later. Instead, you must reset the password with ResetServiceSpecificCredential.
  ServiceSpecificCredential? get serviceSpecificCredential;
  @override
  List<Object?> get props => [serviceSpecificCredential];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateServiceSpecificCredentialResponse')
          ..add(
            'serviceSpecificCredential',
            serviceSpecificCredential,
          );
    return helper.toString();
  }
}

class CreateServiceSpecificCredentialResponseAwsQuerySerializer extends _i2
    .StructuredSmithySerializer<CreateServiceSpecificCredentialResponse> {
  const CreateServiceSpecificCredentialResponseAwsQuerySerializer()
      : super('CreateServiceSpecificCredentialResponse');

  @override
  Iterable<Type> get types => const [
        CreateServiceSpecificCredentialResponse,
        _$CreateServiceSpecificCredentialResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CreateServiceSpecificCredentialResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateServiceSpecificCredentialResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ServiceSpecificCredential':
          result.serviceSpecificCredential.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ServiceSpecificCredential),
          ) as ServiceSpecificCredential));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateServiceSpecificCredentialResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateServiceSpecificCredentialResponseResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final CreateServiceSpecificCredentialResponse(:serviceSpecificCredential) =
        object;
    if (serviceSpecificCredential != null) {
      result$
        ..add(const _i2.XmlElementName('ServiceSpecificCredential'))
        ..add(serializers.serialize(
          serviceSpecificCredential,
          specifiedType: const FullType(ServiceSpecificCredential),
        ));
    }
    return result$;
  }
}
