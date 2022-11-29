// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.delete_organization_conformance_pack_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_organization_conformance_pack_request.g.dart';

abstract class DeleteOrganizationConformancePackRequest
    with
        _i1.HttpInput<DeleteOrganizationConformancePackRequest>,
        _i2.AWSEquatable<DeleteOrganizationConformancePackRequest>
    implements
        Built<DeleteOrganizationConformancePackRequest,
            DeleteOrganizationConformancePackRequestBuilder> {
  factory DeleteOrganizationConformancePackRequest(
      {required String organizationConformancePackName}) {
    return _$DeleteOrganizationConformancePackRequest._(
        organizationConformancePackName: organizationConformancePackName);
  }

  factory DeleteOrganizationConformancePackRequest.build(
      [void Function(DeleteOrganizationConformancePackRequestBuilder)
          updates]) = _$DeleteOrganizationConformancePackRequest;

  const DeleteOrganizationConformancePackRequest._();

  factory DeleteOrganizationConformancePackRequest.fromRequest(
    DeleteOrganizationConformancePackRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteOrganizationConformancePackRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteOrganizationConformancePackRequestBuilder b) {}

  /// The name of organization conformance pack that you want to delete.
  String get organizationConformancePackName;
  @override
  DeleteOrganizationConformancePackRequest getPayload() => this;
  @override
  List<Object?> get props => [organizationConformancePackName];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteOrganizationConformancePackRequest');
    helper.add(
      'organizationConformancePackName',
      organizationConformancePackName,
    );
    return helper.toString();
  }
}

class DeleteOrganizationConformancePackRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<DeleteOrganizationConformancePackRequest> {
  const DeleteOrganizationConformancePackRequestAwsJson11Serializer()
      : super('DeleteOrganizationConformancePackRequest');

  @override
  Iterable<Type> get types => const [
        DeleteOrganizationConformancePackRequest,
        _$DeleteOrganizationConformancePackRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DeleteOrganizationConformancePackRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteOrganizationConformancePackRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'OrganizationConformancePackName':
          result.organizationConformancePackName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as DeleteOrganizationConformancePackRequest);
    final result = <Object?>[
      'OrganizationConformancePackName',
      serializers.serialize(
        payload.organizationConformancePackName,
        specifiedType: const FullType(String),
      ),
    ];
    return result;
  }
}
