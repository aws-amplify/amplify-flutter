// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.get_login_profile_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/login_profile.dart';

part 'get_login_profile_response.g.dart';

/// Contains the response to a successful GetLoginProfile request.
abstract class GetLoginProfileResponse
    with _i1.AWSEquatable<GetLoginProfileResponse>
    implements Built<GetLoginProfileResponse, GetLoginProfileResponseBuilder> {
  /// Contains the response to a successful GetLoginProfile request.
  factory GetLoginProfileResponse({required LoginProfile loginProfile}) {
    return _$GetLoginProfileResponse._(loginProfile: loginProfile);
  }

  /// Contains the response to a successful GetLoginProfile request.
  factory GetLoginProfileResponse.build(
          [void Function(GetLoginProfileResponseBuilder) updates]) =
      _$GetLoginProfileResponse;

  const GetLoginProfileResponse._();

  /// Constructs a [GetLoginProfileResponse] from a [payload] and [response].
  factory GetLoginProfileResponse.fromResponse(
    GetLoginProfileResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<GetLoginProfileResponse>> serializers =
      [GetLoginProfileResponseAwsQuerySerializer()];

  /// A structure containing the user name and the profile creation date for the user.
  LoginProfile get loginProfile;
  @override
  List<Object?> get props => [loginProfile];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetLoginProfileResponse')
      ..add(
        'loginProfile',
        loginProfile,
      );
    return helper.toString();
  }
}

class GetLoginProfileResponseAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<GetLoginProfileResponse> {
  const GetLoginProfileResponseAwsQuerySerializer()
      : super('GetLoginProfileResponse');

  @override
  Iterable<Type> get types => const [
        GetLoginProfileResponse,
        _$GetLoginProfileResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetLoginProfileResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetLoginProfileResponseBuilder();
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
    GetLoginProfileResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'GetLoginProfileResponseResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetLoginProfileResponse(:loginProfile) = object;
    result$
      ..add(const _i2.XmlElementName('LoginProfile'))
      ..add(serializers.serialize(
        loginProfile,
        specifiedType: const FullType(LoginProfile),
      ));
    return result$;
  }
}
