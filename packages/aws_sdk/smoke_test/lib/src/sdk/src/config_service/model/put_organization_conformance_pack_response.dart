// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.put_organization_conformance_pack_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'put_organization_conformance_pack_response.g.dart';

abstract class PutOrganizationConformancePackResponse
    with
        _i1.AWSEquatable<PutOrganizationConformancePackResponse>
    implements
        Built<PutOrganizationConformancePackResponse,
            PutOrganizationConformancePackResponseBuilder> {
  factory PutOrganizationConformancePackResponse(
      {String? organizationConformancePackArn}) {
    return _$PutOrganizationConformancePackResponse._(
        organizationConformancePackArn: organizationConformancePackArn);
  }

  factory PutOrganizationConformancePackResponse.build(
      [void Function(PutOrganizationConformancePackResponseBuilder)
          updates]) = _$PutOrganizationConformancePackResponse;

  const PutOrganizationConformancePackResponse._();

  /// Constructs a [PutOrganizationConformancePackResponse] from a [payload] and [response].
  factory PutOrganizationConformancePackResponse.fromResponse(
    PutOrganizationConformancePackResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    PutOrganizationConformancePackResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutOrganizationConformancePackResponseBuilder b) {}

  /// ARN of the organization conformance pack.
  String? get organizationConformancePackArn;
  @override
  List<Object?> get props => [organizationConformancePackArn];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutOrganizationConformancePackResponse');
    helper.add(
      'organizationConformancePackArn',
      organizationConformancePackArn,
    );
    return helper.toString();
  }
}

class PutOrganizationConformancePackResponseAwsJson11Serializer extends _i2
    .StructuredSmithySerializer<PutOrganizationConformancePackResponse> {
  const PutOrganizationConformancePackResponseAwsJson11Serializer()
      : super('PutOrganizationConformancePackResponse');

  @override
  Iterable<Type> get types => const [
        PutOrganizationConformancePackResponse,
        _$PutOrganizationConformancePackResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  PutOrganizationConformancePackResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutOrganizationConformancePackResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'OrganizationConformancePackArn':
          if (value != null) {
            result.organizationConformancePackArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as PutOrganizationConformancePackResponse);
    final result = <Object?>[];
    if (payload.organizationConformancePackArn != null) {
      result
        ..add('OrganizationConformancePackArn')
        ..add(serializers.serialize(
          payload.organizationConformancePackArn!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
