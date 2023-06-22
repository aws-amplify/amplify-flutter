// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.delete_base_path_mapping_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_base_path_mapping_request.g.dart';

/// A request to delete the BasePathMapping resource.
abstract class DeleteBasePathMappingRequest
    with
        _i1.HttpInput<DeleteBasePathMappingRequestPayload>,
        _i2.AWSEquatable<DeleteBasePathMappingRequest>
    implements
        Built<DeleteBasePathMappingRequest,
            DeleteBasePathMappingRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeleteBasePathMappingRequestPayload> {
  /// A request to delete the BasePathMapping resource.
  factory DeleteBasePathMappingRequest({
    required String domainName,
    required String basePath,
  }) {
    return _$DeleteBasePathMappingRequest._(
      domainName: domainName,
      basePath: basePath,
    );
  }

  /// A request to delete the BasePathMapping resource.
  factory DeleteBasePathMappingRequest.build(
          [void Function(DeleteBasePathMappingRequestBuilder) updates]) =
      _$DeleteBasePathMappingRequest;

  const DeleteBasePathMappingRequest._();

  factory DeleteBasePathMappingRequest.fromRequest(
    DeleteBasePathMappingRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteBasePathMappingRequest.build((b) {
        if (labels['domainName'] != null) {
          b.domainName = labels['domainName']!;
        }
        if (labels['basePath'] != null) {
          b.basePath = labels['basePath']!;
        }
      });

  static const List<_i1.SmithySerializer<DeleteBasePathMappingRequestPayload>>
      serializers = [DeleteBasePathMappingRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteBasePathMappingRequestBuilder b) {}

  /// The domain name of the BasePathMapping resource to delete.
  String get domainName;

  /// The base path name of the BasePathMapping resource to delete.
  ///
  /// To specify an empty base path, set this parameter to `'(none)'`.
  String get basePath;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'domainName':
        return domainName;
      case 'basePath':
        return basePath;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  DeleteBasePathMappingRequestPayload getPayload() =>
      DeleteBasePathMappingRequestPayload();
  @override
  List<Object?> get props => [
        domainName,
        basePath,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteBasePathMappingRequest')
      ..add(
        'domainName',
        domainName,
      )
      ..add(
        'basePath',
        basePath,
      );
    return helper.toString();
  }
}

@_i3.internal
abstract class DeleteBasePathMappingRequestPayload
    with
        _i2.AWSEquatable<DeleteBasePathMappingRequestPayload>
    implements
        Built<DeleteBasePathMappingRequestPayload,
            DeleteBasePathMappingRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteBasePathMappingRequestPayload(
          [void Function(DeleteBasePathMappingRequestPayloadBuilder) updates]) =
      _$DeleteBasePathMappingRequestPayload;

  const DeleteBasePathMappingRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteBasePathMappingRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteBasePathMappingRequestPayload');
    return helper.toString();
  }
}

class DeleteBasePathMappingRequestRestJson1Serializer extends _i1
    .StructuredSmithySerializer<DeleteBasePathMappingRequestPayload> {
  const DeleteBasePathMappingRequestRestJson1Serializer()
      : super('DeleteBasePathMappingRequest');

  @override
  Iterable<Type> get types => const [
        DeleteBasePathMappingRequest,
        _$DeleteBasePathMappingRequest,
        DeleteBasePathMappingRequestPayload,
        _$DeleteBasePathMappingRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  DeleteBasePathMappingRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteBasePathMappingRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteBasePathMappingRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
