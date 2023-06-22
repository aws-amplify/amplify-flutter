// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.add_role_to_instance_profile_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'add_role_to_instance_profile_request.g.dart';

abstract class AddRoleToInstanceProfileRequest
    with
        _i1.HttpInput<AddRoleToInstanceProfileRequest>,
        _i2.AWSEquatable<AddRoleToInstanceProfileRequest>
    implements
        Built<AddRoleToInstanceProfileRequest,
            AddRoleToInstanceProfileRequestBuilder> {
  factory AddRoleToInstanceProfileRequest({
    required String instanceProfileName,
    required String roleName,
  }) {
    return _$AddRoleToInstanceProfileRequest._(
      instanceProfileName: instanceProfileName,
      roleName: roleName,
    );
  }

  factory AddRoleToInstanceProfileRequest.build(
          [void Function(AddRoleToInstanceProfileRequestBuilder) updates]) =
      _$AddRoleToInstanceProfileRequest;

  const AddRoleToInstanceProfileRequest._();

  factory AddRoleToInstanceProfileRequest.fromRequest(
    AddRoleToInstanceProfileRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<AddRoleToInstanceProfileRequest>>
      serializers = [AddRoleToInstanceProfileRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AddRoleToInstanceProfileRequestBuilder b) {}

  /// The name of the instance profile to update.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get instanceProfileName;

  /// The name of the role to add.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get roleName;
  @override
  AddRoleToInstanceProfileRequest getPayload() => this;
  @override
  List<Object?> get props => [
        instanceProfileName,
        roleName,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AddRoleToInstanceProfileRequest')
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

class AddRoleToInstanceProfileRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<AddRoleToInstanceProfileRequest> {
  const AddRoleToInstanceProfileRequestAwsQuerySerializer()
      : super('AddRoleToInstanceProfileRequest');

  @override
  Iterable<Type> get types => const [
        AddRoleToInstanceProfileRequest,
        _$AddRoleToInstanceProfileRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  AddRoleToInstanceProfileRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddRoleToInstanceProfileRequestBuilder();
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
    AddRoleToInstanceProfileRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'AddRoleToInstanceProfileRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final AddRoleToInstanceProfileRequest(:instanceProfileName, :roleName) =
        object;
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
