// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.create_service_linked_role_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/role.dart' as _i2;

part 'create_service_linked_role_response.g.dart';

abstract class CreateServiceLinkedRoleResponse
    with
        _i1.AWSEquatable<CreateServiceLinkedRoleResponse>
    implements
        Built<CreateServiceLinkedRoleResponse,
            CreateServiceLinkedRoleResponseBuilder> {
  factory CreateServiceLinkedRoleResponse({_i2.Role? role}) {
    return _$CreateServiceLinkedRoleResponse._(role: role);
  }

  factory CreateServiceLinkedRoleResponse.build(
          [void Function(CreateServiceLinkedRoleResponseBuilder) updates]) =
      _$CreateServiceLinkedRoleResponse;

  const CreateServiceLinkedRoleResponse._();

  /// Constructs a [CreateServiceLinkedRoleResponse] from a [payload] and [response].
  factory CreateServiceLinkedRoleResponse.fromResponse(
    CreateServiceLinkedRoleResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<CreateServiceLinkedRoleResponse>>
      serializers = [CreateServiceLinkedRoleResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateServiceLinkedRoleResponseBuilder b) {}

  /// A Role object that contains details about the newly created role.
  _i2.Role? get role;
  @override
  List<Object?> get props => [role];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateServiceLinkedRoleResponse')
          ..add(
            'role',
            role,
          );
    return helper.toString();
  }
}

class CreateServiceLinkedRoleResponseAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<CreateServiceLinkedRoleResponse> {
  const CreateServiceLinkedRoleResponseAwsQuerySerializer()
      : super('CreateServiceLinkedRoleResponse');

  @override
  Iterable<Type> get types => const [
        CreateServiceLinkedRoleResponse,
        _$CreateServiceLinkedRoleResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CreateServiceLinkedRoleResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateServiceLinkedRoleResponseBuilder();
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
    CreateServiceLinkedRoleResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'CreateServiceLinkedRoleResponseResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final CreateServiceLinkedRoleResponse(:role) = object;
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
