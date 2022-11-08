// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.create_resource_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'create_resource_request.g.dart';

/// Requests API Gateway to create a Resource resource.
abstract class CreateResourceRequest
    with
        _i1.HttpInput<CreateResourceRequestPayload>,
        _i2.AWSEquatable<CreateResourceRequest>
    implements
        Built<CreateResourceRequest, CreateResourceRequestBuilder>,
        _i1.HasPayload<CreateResourceRequestPayload> {
  /// Requests API Gateway to create a Resource resource.
  factory CreateResourceRequest({
    required String parentId,
    required String pathPart,
    required String restApiId,
  }) {
    return _$CreateResourceRequest._(
      parentId: parentId,
      pathPart: pathPart,
      restApiId: restApiId,
    );
  }

  /// Requests API Gateway to create a Resource resource.
  factory CreateResourceRequest.build(
          [void Function(CreateResourceRequestBuilder) updates]) =
      _$CreateResourceRequest;

  const CreateResourceRequest._();

  factory CreateResourceRequest.fromRequest(
    CreateResourceRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      CreateResourceRequest.build((b) {
        b.pathPart = payload.pathPart;
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['parentId'] != null) {
          b.parentId = labels['parentId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    CreateResourceRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateResourceRequestBuilder b) {}

  /// The parent resource's identifier.
  String get parentId;

  /// The last path segment for this resource.
  String get pathPart;

  /// The string identifier of the associated RestApi.
  String get restApiId;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
      case 'parentId':
        return parentId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  CreateResourceRequestPayload getPayload() =>
      CreateResourceRequestPayload((b) {
        b.pathPart = pathPart;
      });
  @override
  List<Object?> get props => [
        parentId,
        pathPart,
        restApiId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateResourceRequest');
    helper.add(
      'parentId',
      parentId,
    );
    helper.add(
      'pathPart',
      pathPart,
    );
    helper.add(
      'restApiId',
      restApiId,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class CreateResourceRequestPayload
    with
        _i2.AWSEquatable<CreateResourceRequestPayload>
    implements
        Built<CreateResourceRequestPayload,
            CreateResourceRequestPayloadBuilder> {
  factory CreateResourceRequestPayload(
          [void Function(CreateResourceRequestPayloadBuilder) updates]) =
      _$CreateResourceRequestPayload;

  const CreateResourceRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateResourceRequestPayloadBuilder b) {}

  /// The last path segment for this resource.
  String get pathPart;
  @override
  List<Object?> get props => [pathPart];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateResourceRequestPayload');
    helper.add(
      'pathPart',
      pathPart,
    );
    return helper.toString();
  }
}

class CreateResourceRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<CreateResourceRequestPayload> {
  const CreateResourceRequestRestJson1Serializer()
      : super('CreateResourceRequest');

  @override
  Iterable<Type> get types => const [
        CreateResourceRequest,
        _$CreateResourceRequest,
        CreateResourceRequestPayload,
        _$CreateResourceRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  CreateResourceRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateResourceRequestPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'pathPart':
          result.pathPart = (serializers.deserialize(
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
    final payload = object is CreateResourceRequest
        ? object.getPayload()
        : (object as CreateResourceRequestPayload);
    final result = <Object?>[
      'pathPart',
      serializers.serialize(
        payload.pathPart,
        specifiedType: const FullType(String),
      ),
    ];
    return result;
  }
}
