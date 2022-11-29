// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library amplify_auth_cognito_dart.cognito_identity_provider.model.change_password_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'change_password_response.g.dart';

/// The response from the server to the change password request.
abstract class ChangePasswordResponse
    with _i1.AWSEquatable<ChangePasswordResponse>
    implements
        Built<ChangePasswordResponse, ChangePasswordResponseBuilder>,
        _i2.EmptyPayload {
  /// The response from the server to the change password request.
  factory ChangePasswordResponse() {
    return _$ChangePasswordResponse._();
  }

  /// The response from the server to the change password request.
  factory ChangePasswordResponse.build(
          [void Function(ChangePasswordResponseBuilder) updates]) =
      _$ChangePasswordResponse;

  const ChangePasswordResponse._();

  /// Constructs a [ChangePasswordResponse] from a [payload] and [response].
  factory ChangePasswordResponse.fromResponse(
    ChangePasswordResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    ChangePasswordResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ChangePasswordResponseBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ChangePasswordResponse');
    return helper.toString();
  }
}

class ChangePasswordResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<ChangePasswordResponse> {
  const ChangePasswordResponseAwsJson11Serializer()
      : super('ChangePasswordResponse');

  @override
  Iterable<Type> get types => const [
        ChangePasswordResponse,
        _$ChangePasswordResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ChangePasswordResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return ChangePasswordResponseBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
