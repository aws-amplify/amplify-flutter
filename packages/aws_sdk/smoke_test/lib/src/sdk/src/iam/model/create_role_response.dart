// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.create_role_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/role.dart' as _i2;

part 'create_role_response.g.dart';

/// Contains the response to a successful CreateRole request.
abstract class CreateRoleResponse
    with _i1.AWSEquatable<CreateRoleResponse>
    implements Built<CreateRoleResponse, CreateRoleResponseBuilder> {
  /// Contains the response to a successful CreateRole request.
  factory CreateRoleResponse({required _i2.Role role}) {
    return _$CreateRoleResponse._(role: role);
  }

  /// Contains the response to a successful CreateRole request.
  factory CreateRoleResponse.build(
          [void Function(CreateRoleResponseBuilder) updates]) =
      _$CreateRoleResponse;

  const CreateRoleResponse._();

  /// Constructs a [CreateRoleResponse] from a [payload] and [response].
  factory CreateRoleResponse.fromResponse(
    CreateRoleResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<CreateRoleResponse>> serializers = [
    CreateRoleResponseAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateRoleResponseBuilder b) {}

  /// A structure containing details about the new role.
  _i2.Role get role;
  @override
  List<Object?> get props => [role];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateRoleResponse')
      ..add(
        'role',
        role,
      );
    return helper.toString();
  }
}

class CreateRoleResponseAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<CreateRoleResponse> {
  const CreateRoleResponseAwsQuerySerializer() : super('CreateRoleResponse');

  @override
  Iterable<Type> get types => const [
        CreateRoleResponse,
        _$CreateRoleResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CreateRoleResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateRoleResponseBuilder();
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
    CreateRoleResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'CreateRoleResponseResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final CreateRoleResponse(:role) = object;
    result$
      ..add(const _i3.XmlElementName('Role'))
      ..add(serializers.serialize(
        role,
        specifiedType: const FullType(_i2.Role),
      ));
    return result$;
  }
}
