// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.activate_organizations_access_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'activate_organizations_access_output.g.dart';

abstract class ActivateOrganizationsAccessOutput
    with
        _i1.AWSEquatable<ActivateOrganizationsAccessOutput>
    implements
        Built<ActivateOrganizationsAccessOutput,
            ActivateOrganizationsAccessOutputBuilder>,
        _i2.EmptyPayload {
  factory ActivateOrganizationsAccessOutput() {
    return _$ActivateOrganizationsAccessOutput._();
  }

  factory ActivateOrganizationsAccessOutput.build(
          [void Function(ActivateOrganizationsAccessOutputBuilder) updates]) =
      _$ActivateOrganizationsAccessOutput;

  const ActivateOrganizationsAccessOutput._();

  /// Constructs a [ActivateOrganizationsAccessOutput] from a [payload] and [response].
  factory ActivateOrganizationsAccessOutput.fromResponse(
    ActivateOrganizationsAccessOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ActivateOrganizationsAccessOutput>>
      serializers = [ActivateOrganizationsAccessOutputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ActivateOrganizationsAccessOutputBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ActivateOrganizationsAccessOutput');
    return helper.toString();
  }
}

class ActivateOrganizationsAccessOutputAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<ActivateOrganizationsAccessOutput> {
  const ActivateOrganizationsAccessOutputAwsQuerySerializer()
      : super('ActivateOrganizationsAccessOutput');

  @override
  Iterable<Type> get types => const [
        ActivateOrganizationsAccessOutput,
        _$ActivateOrganizationsAccessOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ActivateOrganizationsAccessOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return ActivateOrganizationsAccessOutputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ActivateOrganizationsAccessOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ActivateOrganizationsAccessOutputResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];

    return result$;
  }
}
