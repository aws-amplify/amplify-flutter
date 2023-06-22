// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.update_role_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'update_role_response.g.dart';

abstract class UpdateRoleResponse
    with _i1.AWSEquatable<UpdateRoleResponse>
    implements
        Built<UpdateRoleResponse, UpdateRoleResponseBuilder>,
        _i2.EmptyPayload {
  factory UpdateRoleResponse() {
    return _$UpdateRoleResponse._();
  }

  factory UpdateRoleResponse.build(
          [void Function(UpdateRoleResponseBuilder) updates]) =
      _$UpdateRoleResponse;

  const UpdateRoleResponse._();

  /// Constructs a [UpdateRoleResponse] from a [payload] and [response].
  factory UpdateRoleResponse.fromResponse(
    UpdateRoleResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<UpdateRoleResponse>> serializers = [
    UpdateRoleResponseAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateRoleResponseBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateRoleResponse');
    return helper.toString();
  }
}

class UpdateRoleResponseAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<UpdateRoleResponse> {
  const UpdateRoleResponseAwsQuerySerializer() : super('UpdateRoleResponse');

  @override
  Iterable<Type> get types => const [
        UpdateRoleResponse,
        _$UpdateRoleResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  UpdateRoleResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return UpdateRoleResponseBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UpdateRoleResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'UpdateRoleResponseResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];

    return result$;
  }
}
