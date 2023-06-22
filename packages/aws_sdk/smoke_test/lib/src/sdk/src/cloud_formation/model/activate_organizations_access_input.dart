// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.activate_organizations_access_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'activate_organizations_access_input.g.dart';

abstract class ActivateOrganizationsAccessInput
    with
        _i1.HttpInput<ActivateOrganizationsAccessInput>,
        _i2.AWSEquatable<ActivateOrganizationsAccessInput>
    implements
        Built<ActivateOrganizationsAccessInput,
            ActivateOrganizationsAccessInputBuilder>,
        _i1.EmptyPayload {
  factory ActivateOrganizationsAccessInput() {
    return _$ActivateOrganizationsAccessInput._();
  }

  factory ActivateOrganizationsAccessInput.build(
          [void Function(ActivateOrganizationsAccessInputBuilder) updates]) =
      _$ActivateOrganizationsAccessInput;

  const ActivateOrganizationsAccessInput._();

  factory ActivateOrganizationsAccessInput.fromRequest(
    ActivateOrganizationsAccessInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ActivateOrganizationsAccessInput>>
      serializers = [ActivateOrganizationsAccessInputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ActivateOrganizationsAccessInputBuilder b) {}
  @override
  ActivateOrganizationsAccessInput getPayload() => this;
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ActivateOrganizationsAccessInput');
    return helper.toString();
  }
}

class ActivateOrganizationsAccessInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<ActivateOrganizationsAccessInput> {
  const ActivateOrganizationsAccessInputAwsQuerySerializer()
      : super('ActivateOrganizationsAccessInput');

  @override
  Iterable<Type> get types => const [
        ActivateOrganizationsAccessInput,
        _$ActivateOrganizationsAccessInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ActivateOrganizationsAccessInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return ActivateOrganizationsAccessInputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ActivateOrganizationsAccessInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ActivateOrganizationsAccessInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];

    return result$;
  }
}
