// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.get_user_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/user.dart' as _i2;

part 'get_user_response.g.dart';

/// Contains the response to a successful GetUser request.
abstract class GetUserResponse
    with _i1.AWSEquatable<GetUserResponse>
    implements Built<GetUserResponse, GetUserResponseBuilder> {
  /// Contains the response to a successful GetUser request.
  factory GetUserResponse({required _i2.User user}) {
    return _$GetUserResponse._(user: user);
  }

  /// Contains the response to a successful GetUser request.
  factory GetUserResponse.build(
      [void Function(GetUserResponseBuilder) updates]) = _$GetUserResponse;

  const GetUserResponse._();

  /// Constructs a [GetUserResponse] from a [payload] and [response].
  factory GetUserResponse.fromResponse(
    GetUserResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<GetUserResponse>> serializers = [
    GetUserResponseAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetUserResponseBuilder b) {}

  /// A structure containing details about the IAM user.
  ///
  /// Due to a service issue, password last used data does not include password use from May 3, 2018 22:50 PDT to May 23, 2018 14:08 PDT. This affects [last sign-in](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_finding-unused.html) dates shown in the IAM console and password last used dates in the [IAM credential report](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_getting-report.html), and returned by this operation. If users signed in during the affected time, the password last used date that is returned is the date the user last signed in before May 3, 2018. For users that signed in after May 23, 2018 14:08 PDT, the returned password last used date is accurate.
  ///
  /// You can use password last used information to identify unused credentials for deletion. For example, you might delete users who did not sign in to Amazon Web Services in the last 90 days. In cases like this, we recommend that you adjust your evaluation window to include dates after May 23, 2018. Alternatively, if your users use access keys to access Amazon Web Services programmatically you can refer to access key last used information because it is accurate for all dates.
  _i2.User get user;
  @override
  List<Object?> get props => [user];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetUserResponse')
      ..add(
        'user',
        user,
      );
    return helper.toString();
  }
}

class GetUserResponseAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<GetUserResponse> {
  const GetUserResponseAwsQuerySerializer() : super('GetUserResponse');

  @override
  Iterable<Type> get types => const [
        GetUserResponse,
        _$GetUserResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetUserResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetUserResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'User':
          result.user.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.User),
          ) as _i2.User));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetUserResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'GetUserResponseResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetUserResponse(:user) = object;
    result$
      ..add(const _i3.XmlElementName('User'))
      ..add(serializers.serialize(
        user,
        specifiedType: const FullType(_i2.User),
      ));
    return result$;
  }
}
