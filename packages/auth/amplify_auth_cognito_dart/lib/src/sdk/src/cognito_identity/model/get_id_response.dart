// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_auth_cognito_dart.cognito_identity.model.get_id_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'get_id_response.g.dart';

/// Returned in response to a GetId request.
abstract class GetIdResponse
    with _i1.AWSEquatable<GetIdResponse>
    implements Built<GetIdResponse, GetIdResponseBuilder> {
  /// Returned in response to a GetId request.
  factory GetIdResponse({String? identityId}) {
    return _$GetIdResponse._(identityId: identityId);
  }

  /// Returned in response to a GetId request.
  factory GetIdResponse.build([void Function(GetIdResponseBuilder) updates]) =
      _$GetIdResponse;

  const GetIdResponse._();

  /// Constructs a [GetIdResponse] from a [payload] and [response].
  factory GetIdResponse.fromResponse(
    GetIdResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<GetIdResponse>> serializers = [
    GetIdResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetIdResponseBuilder b) {}

  /// A unique identifier in the format REGION:GUID.
  String? get identityId;
  @override
  List<Object?> get props => [identityId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetIdResponse')
      ..add(
        'identityId',
        identityId,
      );
    return helper.toString();
  }
}

class GetIdResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<GetIdResponse> {
  const GetIdResponseAwsJson11Serializer() : super('GetIdResponse');

  @override
  Iterable<Type> get types => const [
        GetIdResponse,
        _$GetIdResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetIdResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetIdResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'IdentityId':
          result.identityId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetIdResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetIdResponse(:identityId) = object;
    if (identityId != null) {
      result$
        ..add('IdentityId')
        ..add(serializers.serialize(
          identityId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
