// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.create_login_profile_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/login_profile.dart' as _i2;

part 'create_login_profile_response.g.dart';

/// Contains the response to a successful CreateLoginProfile request.
abstract class CreateLoginProfileResponse
    with _i1.AWSEquatable<CreateLoginProfileResponse>
    implements
        Built<CreateLoginProfileResponse, CreateLoginProfileResponseBuilder> {
  /// Contains the response to a successful CreateLoginProfile request.
  factory CreateLoginProfileResponse({required _i2.LoginProfile loginProfile}) {
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

  static const List<_i3.SmithySerializer<CreateLoginProfileResponse>>
      serializers = [CreateLoginProfileResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateLoginProfileResponseBuilder b) {}

  /// A structure containing the user name and password create date.
  _i2.LoginProfile get loginProfile;
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
    extends _i3.StructuredSmithySerializer<CreateLoginProfileResponse> {
  const CreateLoginProfileResponseAwsQuerySerializer()
      : super('CreateLoginProfileResponse');

  @override
  Iterable<Type> get types => const [
        CreateLoginProfileResponse,
        _$CreateLoginProfileResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
            specifiedType: const FullType(_i2.LoginProfile),
          ) as _i2.LoginProfile));
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
      const _i3.XmlElementName(
        'CreateLoginProfileResponseResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final CreateLoginProfileResponse(:loginProfile) = object;
    result$
      ..add(const _i3.XmlElementName('LoginProfile'))
      ..add(serializers.serialize(
        loginProfile,
        specifiedType: const FullType(_i2.LoginProfile),
      ));
    return result$;
  }
}
