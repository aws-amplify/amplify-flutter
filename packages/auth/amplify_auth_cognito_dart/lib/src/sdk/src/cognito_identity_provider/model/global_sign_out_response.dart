// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_auth_cognito_dart.cognito_identity_provider.model.global_sign_out_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'global_sign_out_response.g.dart';

/// The response to the request to sign out all devices.
abstract class GlobalSignOutResponse
    with _i1.AWSEquatable<GlobalSignOutResponse>
    implements
        Built<GlobalSignOutResponse, GlobalSignOutResponseBuilder>,
        _i2.EmptyPayload {
  /// The response to the request to sign out all devices.
  factory GlobalSignOutResponse() {
    return _$GlobalSignOutResponse._();
  }

  /// The response to the request to sign out all devices.
  factory GlobalSignOutResponse.build(
          [void Function(GlobalSignOutResponseBuilder) updates]) =
      _$GlobalSignOutResponse;

  const GlobalSignOutResponse._();

  /// Constructs a [GlobalSignOutResponse] from a [payload] and [response].
  factory GlobalSignOutResponse.fromResponse(
    GlobalSignOutResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<GlobalSignOutResponse>> serializers = [
    GlobalSignOutResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GlobalSignOutResponseBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GlobalSignOutResponse');
    return helper.toString();
  }
}

class GlobalSignOutResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<GlobalSignOutResponse> {
  const GlobalSignOutResponseAwsJson11Serializer()
      : super('GlobalSignOutResponse');

  @override
  Iterable<Type> get types => const [
        GlobalSignOutResponse,
        _$GlobalSignOutResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GlobalSignOutResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GlobalSignOutResponseBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GlobalSignOutResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
