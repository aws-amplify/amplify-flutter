// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.deactivate_organizations_access_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'deactivate_organizations_access_output.g.dart';

abstract class DeactivateOrganizationsAccessOutput
    with
        _i1.AWSEquatable<DeactivateOrganizationsAccessOutput>
    implements
        Built<DeactivateOrganizationsAccessOutput,
            DeactivateOrganizationsAccessOutputBuilder>,
        _i2.EmptyPayload {
  factory DeactivateOrganizationsAccessOutput() {
    return _$DeactivateOrganizationsAccessOutput._();
  }

  factory DeactivateOrganizationsAccessOutput.build(
          [void Function(DeactivateOrganizationsAccessOutputBuilder) updates]) =
      _$DeactivateOrganizationsAccessOutput;

  const DeactivateOrganizationsAccessOutput._();

  /// Constructs a [DeactivateOrganizationsAccessOutput] from a [payload] and [response].
  factory DeactivateOrganizationsAccessOutput.fromResponse(
    DeactivateOrganizationsAccessOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DeactivateOrganizationsAccessOutput>>
      serializers = [DeactivateOrganizationsAccessOutputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeactivateOrganizationsAccessOutputBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeactivateOrganizationsAccessOutput');
    return helper.toString();
  }
}

class DeactivateOrganizationsAccessOutputAwsQuerySerializer extends _i2
    .StructuredSmithySerializer<DeactivateOrganizationsAccessOutput> {
  const DeactivateOrganizationsAccessOutputAwsQuerySerializer()
      : super('DeactivateOrganizationsAccessOutput');

  @override
  Iterable<Type> get types => const [
        DeactivateOrganizationsAccessOutput,
        _$DeactivateOrganizationsAccessOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeactivateOrganizationsAccessOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeactivateOrganizationsAccessOutputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeactivateOrganizationsAccessOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeactivateOrganizationsAccessOutputResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];

    return result$;
  }
}
