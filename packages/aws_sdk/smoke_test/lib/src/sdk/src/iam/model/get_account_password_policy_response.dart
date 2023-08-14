// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.get_account_password_policy_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/password_policy.dart';

part 'get_account_password_policy_response.g.dart';

/// Contains the response to a successful GetAccountPasswordPolicy request.
abstract class GetAccountPasswordPolicyResponse
    with
        _i1.AWSEquatable<GetAccountPasswordPolicyResponse>
    implements
        Built<GetAccountPasswordPolicyResponse,
            GetAccountPasswordPolicyResponseBuilder> {
  /// Contains the response to a successful GetAccountPasswordPolicy request.
  factory GetAccountPasswordPolicyResponse(
      {required PasswordPolicy passwordPolicy}) {
    return _$GetAccountPasswordPolicyResponse._(passwordPolicy: passwordPolicy);
  }

  /// Contains the response to a successful GetAccountPasswordPolicy request.
  factory GetAccountPasswordPolicyResponse.build(
          [void Function(GetAccountPasswordPolicyResponseBuilder) updates]) =
      _$GetAccountPasswordPolicyResponse;

  const GetAccountPasswordPolicyResponse._();

  /// Constructs a [GetAccountPasswordPolicyResponse] from a [payload] and [response].
  factory GetAccountPasswordPolicyResponse.fromResponse(
    GetAccountPasswordPolicyResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<GetAccountPasswordPolicyResponse>>
      serializers = [GetAccountPasswordPolicyResponseAwsQuerySerializer()];

  /// A structure that contains details about the account's password policy.
  PasswordPolicy get passwordPolicy;
  @override
  List<Object?> get props => [passwordPolicy];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetAccountPasswordPolicyResponse')
          ..add(
            'passwordPolicy',
            passwordPolicy,
          );
    return helper.toString();
  }
}

class GetAccountPasswordPolicyResponseAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<GetAccountPasswordPolicyResponse> {
  const GetAccountPasswordPolicyResponseAwsQuerySerializer()
      : super('GetAccountPasswordPolicyResponse');

  @override
  Iterable<Type> get types => const [
        GetAccountPasswordPolicyResponse,
        _$GetAccountPasswordPolicyResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetAccountPasswordPolicyResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAccountPasswordPolicyResponseBuilder();
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
        case 'PasswordPolicy':
          result.passwordPolicy.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(PasswordPolicy),
          ) as PasswordPolicy));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetAccountPasswordPolicyResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'GetAccountPasswordPolicyResponseResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetAccountPasswordPolicyResponse(:passwordPolicy) = object;
    result$
      ..add(const _i2.XmlElementName('PasswordPolicy'))
      ..add(serializers.serialize(
        passwordPolicy,
        specifiedType: const FullType(PasswordPolicy),
      ));
    return result$;
  }
}
