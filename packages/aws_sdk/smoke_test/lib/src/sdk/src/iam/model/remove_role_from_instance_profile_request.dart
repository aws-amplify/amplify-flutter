// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.remove_role_from_instance_profile_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'remove_role_from_instance_profile_request.g.dart';

abstract class RemoveRoleFromInstanceProfileRequest
    with
        _i1.HttpInput<RemoveRoleFromInstanceProfileRequest>,
        _i2.AWSEquatable<RemoveRoleFromInstanceProfileRequest>
    implements
        Built<RemoveRoleFromInstanceProfileRequest,
            RemoveRoleFromInstanceProfileRequestBuilder> {
  factory RemoveRoleFromInstanceProfileRequest({
    required String instanceProfileName,
    required String roleName,
  }) {
    return _$RemoveRoleFromInstanceProfileRequest._(
      instanceProfileName: instanceProfileName,
      roleName: roleName,
    );
  }

  factory RemoveRoleFromInstanceProfileRequest.build(
      [void Function(RemoveRoleFromInstanceProfileRequestBuilder)
          updates]) = _$RemoveRoleFromInstanceProfileRequest;

  const RemoveRoleFromInstanceProfileRequest._();

  factory RemoveRoleFromInstanceProfileRequest.fromRequest(
    RemoveRoleFromInstanceProfileRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<RemoveRoleFromInstanceProfileRequest>>
      serializers = [RemoveRoleFromInstanceProfileRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RemoveRoleFromInstanceProfileRequestBuilder b) {}

  /// The name of the instance profile to update.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get instanceProfileName;

  /// The name of the role to remove.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get roleName;
  @override
  RemoveRoleFromInstanceProfileRequest getPayload() => this;
  @override
  List<Object?> get props => [
        instanceProfileName,
        roleName,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('RemoveRoleFromInstanceProfileRequest')
          ..add(
            'instanceProfileName',
            instanceProfileName,
          )
          ..add(
            'roleName',
            roleName,
          );
    return helper.toString();
  }
}

class RemoveRoleFromInstanceProfileRequestAwsQuerySerializer extends _i1
    .StructuredSmithySerializer<RemoveRoleFromInstanceProfileRequest> {
  const RemoveRoleFromInstanceProfileRequestAwsQuerySerializer()
      : super('RemoveRoleFromInstanceProfileRequest');

  @override
  Iterable<Type> get types => const [
        RemoveRoleFromInstanceProfileRequest,
        _$RemoveRoleFromInstanceProfileRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  RemoveRoleFromInstanceProfileRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RemoveRoleFromInstanceProfileRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'InstanceProfileName':
          result.instanceProfileName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'RoleName':
          result.roleName = (serializers.deserialize(
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
    RemoveRoleFromInstanceProfileRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'RemoveRoleFromInstanceProfileRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final RemoveRoleFromInstanceProfileRequest(
      :instanceProfileName,
      :roleName
    ) = object;
    result$
      ..add(const _i1.XmlElementName('InstanceProfileName'))
      ..add(serializers.serialize(
        instanceProfileName,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('RoleName'))
      ..add(serializers.serialize(
        roleName,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
