// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.reset_service_specific_credential_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/service_specific_credential.dart';

part 'reset_service_specific_credential_response.g.dart';

abstract class ResetServiceSpecificCredentialResponse
    with
        _i1.AWSEquatable<ResetServiceSpecificCredentialResponse>
    implements
        Built<ResetServiceSpecificCredentialResponse,
            ResetServiceSpecificCredentialResponseBuilder> {
  factory ResetServiceSpecificCredentialResponse(
      {ServiceSpecificCredential? serviceSpecificCredential}) {
    return _$ResetServiceSpecificCredentialResponse._(
        serviceSpecificCredential: serviceSpecificCredential);
  }

  factory ResetServiceSpecificCredentialResponse.build(
      [void Function(ResetServiceSpecificCredentialResponseBuilder)
          updates]) = _$ResetServiceSpecificCredentialResponse;

  const ResetServiceSpecificCredentialResponse._();

  /// Constructs a [ResetServiceSpecificCredentialResponse] from a [payload] and [response].
  factory ResetServiceSpecificCredentialResponse.fromResponse(
    ResetServiceSpecificCredentialResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<ResetServiceSpecificCredentialResponse>>
      serializers = [
    ResetServiceSpecificCredentialResponseAwsQuerySerializer()
  ];

  /// A structure with details about the updated service-specific credential, including the new password.
  ///
  /// This is the **only** time that you can access the password. You cannot recover the password later, but you can reset it again.
  ServiceSpecificCredential? get serviceSpecificCredential;
  @override
  List<Object?> get props => [serviceSpecificCredential];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ResetServiceSpecificCredentialResponse')
          ..add(
            'serviceSpecificCredential',
            serviceSpecificCredential,
          );
    return helper.toString();
  }
}

class ResetServiceSpecificCredentialResponseAwsQuerySerializer extends _i2
    .StructuredSmithySerializer<ResetServiceSpecificCredentialResponse> {
  const ResetServiceSpecificCredentialResponseAwsQuerySerializer()
      : super('ResetServiceSpecificCredentialResponse');

  @override
  Iterable<Type> get types => const [
        ResetServiceSpecificCredentialResponse,
        _$ResetServiceSpecificCredentialResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ResetServiceSpecificCredentialResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResetServiceSpecificCredentialResponseBuilder();
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
    ResetServiceSpecificCredentialResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ResetServiceSpecificCredentialResponseResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final ResetServiceSpecificCredentialResponse(:serviceSpecificCredential) =
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
