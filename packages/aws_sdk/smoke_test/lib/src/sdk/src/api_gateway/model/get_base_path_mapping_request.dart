// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.get_base_path_mapping_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_base_path_mapping_request.g.dart';

/// Request to describe a BasePathMapping resource.
abstract class GetBasePathMappingRequest
    with
        _i1.HttpInput<GetBasePathMappingRequestPayload>,
        _i2.AWSEquatable<GetBasePathMappingRequest>
    implements
        Built<GetBasePathMappingRequest, GetBasePathMappingRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetBasePathMappingRequestPayload> {
  /// Request to describe a BasePathMapping resource.
  factory GetBasePathMappingRequest({
    required String basePath,
    required String domainName,
  }) {
    return _$GetBasePathMappingRequest._(
      basePath: basePath,
      domainName: domainName,
    );
  }

  /// Request to describe a BasePathMapping resource.
  factory GetBasePathMappingRequest.build(
          [void Function(GetBasePathMappingRequestBuilder) updates]) =
      _$GetBasePathMappingRequest;

  const GetBasePathMappingRequest._();

  factory GetBasePathMappingRequest.fromRequest(
    GetBasePathMappingRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetBasePathMappingRequest.build((b) {
        if (labels['domainName'] != null) {
          b.domainName = labels['domainName']!;
        }
        if (labels['basePath'] != null) {
          b.basePath = labels['basePath']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    GetBasePathMappingRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBasePathMappingRequestBuilder b) {}

  /// The base path name that callers of the API must provide as part of the URL after the domain name. This value must be unique for all of the mappings across a single API. Specify '(none)' if you do not want callers to specify any base path name after the domain name.
  String get basePath;

  /// The domain name of the BasePathMapping resource to be described.
  String get domainName;
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
  GetBasePathMappingRequestPayload getPayload() =>
      GetBasePathMappingRequestPayload();
  @override
  List<Object?> get props => [
        basePath,
        domainName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetBasePathMappingRequest');
    helper.add(
      'basePath',
      basePath,
    );
    helper.add(
      'domainName',
      domainName,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetBasePathMappingRequestPayload
    with
        _i2.AWSEquatable<GetBasePathMappingRequestPayload>
    implements
        Built<GetBasePathMappingRequestPayload,
            GetBasePathMappingRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetBasePathMappingRequestPayload(
          [void Function(GetBasePathMappingRequestPayloadBuilder) updates]) =
      _$GetBasePathMappingRequestPayload;

  const GetBasePathMappingRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBasePathMappingRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetBasePathMappingRequestPayload');
    return helper.toString();
  }
}

class GetBasePathMappingRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetBasePathMappingRequestPayload> {
  const GetBasePathMappingRequestRestJson1Serializer()
      : super('GetBasePathMappingRequest');

  @override
  Iterable<Type> get types => const [
        GetBasePathMappingRequest,
        _$GetBasePathMappingRequest,
        GetBasePathMappingRequestPayload,
        _$GetBasePathMappingRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetBasePathMappingRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetBasePathMappingRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
