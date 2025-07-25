// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library amplify_auth_cognito_dart.cognito_identity_provider.model.get_user_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_user_request.g.dart';

/// Represents the request to get information about the user.
abstract class GetUserRequest
    with _i1.HttpInput<GetUserRequest>, _i2.AWSEquatable<GetUserRequest>
    implements Built<GetUserRequest, GetUserRequestBuilder> {
  /// Represents the request to get information about the user.
  factory GetUserRequest({required String accessToken}) {
    return _$GetUserRequest._(accessToken: accessToken);
  }

  /// Represents the request to get information about the user.
  factory GetUserRequest.build([void Function(GetUserRequestBuilder) updates]) =
      _$GetUserRequest;

  const GetUserRequest._();

  factory GetUserRequest.fromRequest(
    GetUserRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) => payload;

  static const List<_i1.SmithySerializer<GetUserRequest>> serializers = [
    GetUserRequestAwsJson11Serializer(),
  ];

  /// A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for `aws.cognito.signin.user.admin`.
  String get accessToken;
  @override
  GetUserRequest getPayload() => this;

  @override
  List<Object?> get props => [accessToken];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetUserRequest')
      ..add('accessToken', '***SENSITIVE***');
    return helper.toString();
  }
}

class GetUserRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<GetUserRequest> {
  const GetUserRequestAwsJson11Serializer() : super('GetUserRequest');

  @override
  Iterable<Type> get types => const [GetUserRequest, _$GetUserRequest];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
    _i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
  ];

  @override
  GetUserRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetUserRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AccessToken':
          result.accessToken =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetUserRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetUserRequest(:accessToken) = object;
    result$.addAll([
      'AccessToken',
      serializers.serialize(accessToken, specifiedType: const FullType(String)),
    ]);
    return result$;
  }
}
