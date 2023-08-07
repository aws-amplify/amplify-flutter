// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.create_login_profile_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/login_profile.dart';

part 'create_login_profile_response.g.dart';

/// Contains the response to a successful CreateLoginProfile request.
abstract class CreateLoginProfileResponse
    with _i1.AWSEquatable<CreateLoginProfileResponse>
    implements
        Built<CreateLoginProfileResponse, CreateLoginProfileResponseBuilder> {
  /// Contains the response to a successful CreateLoginProfile request.
  factory CreateLoginProfileResponse({required LoginProfile loginProfile}) {
    return _$CreateLoginProfileResponse._(loginProfile: loginProfile);
  }

  /// Contains the response to a successful CreateLoginProfile request.
  factory CreateLoginProfileResponse.build(
          [void Function(CreateLoginProfileResponseBuilder) updates]) =
      _$CreateLoginProfileResponse;

  const CreateLoginProfileResponse._();

  /// Constructs a [CreateLoginProfileResponse] from a [payload] and [response].
  factory CreateLoginProfileResponse.fromResponse(
    CreateLoginProfileResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateLoginProfileResponse>>
      serializers = [CreateLoginProfileResponseAwsQuerySerializer()];

  /// A structure containing the user name and password create date.
  LoginProfile get loginProfile;
  @override
  List<Object?> get props => [loginProfile];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateLoginProfileResponse')
      ..add(
        'loginProfile',
        loginProfile,
      );
    return helper.toString();
  }
}

class CreateLoginProfileResponseAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<CreateLoginProfileResponse> {
  const CreateLoginProfileResponseAwsQuerySerializer()
      : super('CreateLoginProfileResponse');

  @override
  Iterable<Type> get types => const [
        CreateLoginProfileResponse,
        _$CreateLoginProfileResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CreateLoginProfileResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateLoginProfileResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'LoginProfile':
          result.loginProfile.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(LoginProfile),
          ) as LoginProfile));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateLoginProfileResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateLoginProfileResponseResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final CreateLoginProfileResponse(:loginProfile) = object;
    result$
      ..add(const _i2.XmlElementName('LoginProfile'))
      ..add(serializers.serialize(
        loginProfile,
        specifiedType: const FullType(LoginProfile),
      ));
    return result$;
  }
}
