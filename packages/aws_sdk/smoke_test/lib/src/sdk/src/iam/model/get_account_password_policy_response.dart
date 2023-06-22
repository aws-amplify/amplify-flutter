// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.get_account_password_policy_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/password_policy.dart' as _i2;

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
      {required _i2.PasswordPolicy passwordPolicy}) {
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

  static const List<_i3.SmithySerializer<GetAccountPasswordPolicyResponse>>
      serializers = [GetAccountPasswordPolicyResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetAccountPasswordPolicyResponseBuilder b) {}

  /// A structure that contains details about the account's password policy.
  _i2.PasswordPolicy get passwordPolicy;
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
    extends _i3.StructuredSmithySerializer<GetAccountPasswordPolicyResponse> {
  const GetAccountPasswordPolicyResponseAwsQuerySerializer()
      : super('GetAccountPasswordPolicyResponse');

  @override
  Iterable<Type> get types => const [
        GetAccountPasswordPolicyResponse,
        _$GetAccountPasswordPolicyResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
            specifiedType: const FullType(_i2.PasswordPolicy),
          ) as _i2.PasswordPolicy));
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
      const _i3.XmlElementName(
        'GetAccountPasswordPolicyResponseResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetAccountPasswordPolicyResponse(:passwordPolicy) = object;
    result$
      ..add(const _i3.XmlElementName('PasswordPolicy'))
      ..add(serializers.serialize(
        passwordPolicy,
        specifiedType: const FullType(_i2.PasswordPolicy),
      ));
    return result$;
  }
}
