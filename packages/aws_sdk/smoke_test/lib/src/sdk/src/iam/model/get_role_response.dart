// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.get_role_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/role.dart' as _i2;

part 'get_role_response.g.dart';

/// Contains the response to a successful GetRole request.
abstract class GetRoleResponse
    with _i1.AWSEquatable<GetRoleResponse>
    implements Built<GetRoleResponse, GetRoleResponseBuilder> {
  /// Contains the response to a successful GetRole request.
  factory GetRoleResponse({required _i2.Role role}) {
    return _$GetRoleResponse._(role: role);
  }

  /// Contains the response to a successful GetRole request.
  factory GetRoleResponse.build(
      [void Function(GetRoleResponseBuilder) updates]) = _$GetRoleResponse;

  const GetRoleResponse._();

  /// Constructs a [GetRoleResponse] from a [payload] and [response].
  factory GetRoleResponse.fromResponse(
    GetRoleResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<GetRoleResponse>> serializers = [
    GetRoleResponseAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetRoleResponseBuilder b) {}

  /// A structure containing details about the IAM role.
  _i2.Role get role;
  @override
  List<Object?> get props => [role];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetRoleResponse')
      ..add(
        'role',
        role,
      );
    return helper.toString();
  }
}

class GetRoleResponseAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<GetRoleResponse> {
  const GetRoleResponseAwsQuerySerializer() : super('GetRoleResponse');

  @override
  Iterable<Type> get types => const [
        GetRoleResponse,
        _$GetRoleResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetRoleResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetRoleResponseBuilder();
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
    GetRoleResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'GetRoleResponseResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetRoleResponse(:role) = object;
    result$
      ..add(const _i3.XmlElementName('Role'))
      ..add(serializers.serialize(
        role,
        specifiedType: const FullType(_i2.Role),
      ));
    return result$;
  }
}
