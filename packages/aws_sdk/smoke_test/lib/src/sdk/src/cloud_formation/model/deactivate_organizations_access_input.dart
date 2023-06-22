// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.deactivate_organizations_access_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'deactivate_organizations_access_input.g.dart';

abstract class DeactivateOrganizationsAccessInput
    with
        _i1.HttpInput<DeactivateOrganizationsAccessInput>,
        _i2.AWSEquatable<DeactivateOrganizationsAccessInput>
    implements
        Built<DeactivateOrganizationsAccessInput,
            DeactivateOrganizationsAccessInputBuilder>,
        _i1.EmptyPayload {
  factory DeactivateOrganizationsAccessInput() {
    return _$DeactivateOrganizationsAccessInput._();
  }

  factory DeactivateOrganizationsAccessInput.build(
          [void Function(DeactivateOrganizationsAccessInputBuilder) updates]) =
      _$DeactivateOrganizationsAccessInput;

  const DeactivateOrganizationsAccessInput._();

  factory DeactivateOrganizationsAccessInput.fromRequest(
    DeactivateOrganizationsAccessInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeactivateOrganizationsAccessInput>>
      serializers = [DeactivateOrganizationsAccessInputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeactivateOrganizationsAccessInputBuilder b) {}
  @override
  DeactivateOrganizationsAccessInput getPayload() => this;
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeactivateOrganizationsAccessInput');
    return helper.toString();
  }
}

class DeactivateOrganizationsAccessInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DeactivateOrganizationsAccessInput> {
  const DeactivateOrganizationsAccessInputAwsQuerySerializer()
      : super('DeactivateOrganizationsAccessInput');

  @override
  Iterable<Type> get types => const [
        DeactivateOrganizationsAccessInput,
        _$DeactivateOrganizationsAccessInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeactivateOrganizationsAccessInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeactivateOrganizationsAccessInputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeactivateOrganizationsAccessInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeactivateOrganizationsAccessInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];

    return result$;
  }
}
