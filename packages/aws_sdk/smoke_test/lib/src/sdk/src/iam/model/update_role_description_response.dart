// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.update_role_description_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/role.dart' as _i2;

part 'update_role_description_response.g.dart';

abstract class UpdateRoleDescriptionResponse
    with
        _i1.AWSEquatable<UpdateRoleDescriptionResponse>
    implements
        Built<UpdateRoleDescriptionResponse,
            UpdateRoleDescriptionResponseBuilder> {
  factory UpdateRoleDescriptionResponse({_i2.Role? role}) {
    return _$UpdateRoleDescriptionResponse._(role: role);
  }

  factory UpdateRoleDescriptionResponse.build(
          [void Function(UpdateRoleDescriptionResponseBuilder) updates]) =
      _$UpdateRoleDescriptionResponse;

  const UpdateRoleDescriptionResponse._();

  /// Constructs a [UpdateRoleDescriptionResponse] from a [payload] and [response].
  factory UpdateRoleDescriptionResponse.fromResponse(
    UpdateRoleDescriptionResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<UpdateRoleDescriptionResponse>>
      serializers = [UpdateRoleDescriptionResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateRoleDescriptionResponseBuilder b) {}

  /// A structure that contains details about the modified role.
  _i2.Role? get role;
  @override
  List<Object?> get props => [role];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateRoleDescriptionResponse')
      ..add(
        'role',
        role,
      );
    return helper.toString();
  }
}

class UpdateRoleDescriptionResponseAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<UpdateRoleDescriptionResponse> {
  const UpdateRoleDescriptionResponseAwsQuerySerializer()
      : super('UpdateRoleDescriptionResponse');

  @override
  Iterable<Type> get types => const [
        UpdateRoleDescriptionResponse,
        _$UpdateRoleDescriptionResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  UpdateRoleDescriptionResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateRoleDescriptionResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Role':
          result.role.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Role),
          ) as _i2.Role));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UpdateRoleDescriptionResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'UpdateRoleDescriptionResponseResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final UpdateRoleDescriptionResponse(:role) = object;
    if (role != null) {
      result$
        ..add(const _i3.XmlElementName('Role'))
        ..add(serializers.serialize(
          role,
          specifiedType: const FullType(_i2.Role),
        ));
    }
    return result$;
  }
}
