// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.update_role_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'update_role_request.g.dart';

abstract class UpdateRoleRequest
    with _i1.HttpInput<UpdateRoleRequest>, _i2.AWSEquatable<UpdateRoleRequest>
    implements Built<UpdateRoleRequest, UpdateRoleRequestBuilder> {
  factory UpdateRoleRequest({
    required String roleName,
    String? description,
    int? maxSessionDuration,
  }) {
    return _$UpdateRoleRequest._(
      roleName: roleName,
      description: description,
      maxSessionDuration: maxSessionDuration,
    );
  }

  factory UpdateRoleRequest.build(
      [void Function(UpdateRoleRequestBuilder) updates]) = _$UpdateRoleRequest;

  const UpdateRoleRequest._();

  factory UpdateRoleRequest.fromRequest(
    UpdateRoleRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<UpdateRoleRequest>> serializers = [
    UpdateRoleRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateRoleRequestBuilder b) {}

  /// The name of the role that you want to modify.
  String get roleName;

  /// The new description that you want to apply to the specified role.
  String? get description;

  /// The maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default value of one hour is applied. This setting can have a value from 1 hour to 12 hours.
  ///
  /// Anyone who assumes the role from the CLI or API can use the `DurationSeconds` API parameter or the `duration-seconds` CLI parameter to request a longer session. The `MaxSessionDuration` setting determines the maximum duration that can be requested using the `DurationSeconds` parameter. If users don't specify a value for the `DurationSeconds` parameter, their security credentials are valid for one hour by default. This applies when you use the `AssumeRole*` API operations or the `assume-role*` CLI operations but does not apply when you use those operations to create a console URL. For more information, see [Using IAM roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html) in the _IAM User Guide_.
  int? get maxSessionDuration;
  @override
  UpdateRoleRequest getPayload() => this;
  @override
  List<Object?> get props => [
        roleName,
        description,
        maxSessionDuration,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateRoleRequest')
      ..add(
        'roleName',
        roleName,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'maxSessionDuration',
        maxSessionDuration,
      );
    return helper.toString();
  }
}

class UpdateRoleRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<UpdateRoleRequest> {
  const UpdateRoleRequestAwsQuerySerializer() : super('UpdateRoleRequest');

  @override
  Iterable<Type> get types => const [
        UpdateRoleRequest,
        _$UpdateRoleRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  UpdateRoleRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateRoleRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'RoleName':
          result.roleName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'MaxSessionDuration':
          result.maxSessionDuration = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UpdateRoleRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'UpdateRoleRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final UpdateRoleRequest(:roleName, :description, :maxSessionDuration) =
        object;
    result$
      ..add(const _i1.XmlElementName('RoleName'))
      ..add(serializers.serialize(
        roleName,
        specifiedType: const FullType(String),
      ));
    if (description != null) {
      result$
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (maxSessionDuration != null) {
      result$
        ..add(const _i1.XmlElementName('MaxSessionDuration'))
        ..add(serializers.serialize(
          maxSessionDuration,
          specifiedType: const FullType.nullable(int),
        ));
    }
    return result$;
  }
}
