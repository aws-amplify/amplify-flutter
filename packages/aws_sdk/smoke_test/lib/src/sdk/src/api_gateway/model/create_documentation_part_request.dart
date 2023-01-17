// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.create_documentation_part_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/documentation_part_location.dart'
    as _i3;

part 'create_documentation_part_request.g.dart';

/// Creates a new documentation part of a given API.
abstract class CreateDocumentationPartRequest
    with
        _i1.HttpInput<CreateDocumentationPartRequestPayload>,
        _i2.AWSEquatable<CreateDocumentationPartRequest>
    implements
        Built<CreateDocumentationPartRequest,
            CreateDocumentationPartRequestBuilder>,
        _i1.HasPayload<CreateDocumentationPartRequestPayload> {
  /// Creates a new documentation part of a given API.
  factory CreateDocumentationPartRequest({
    required _i3.DocumentationPartLocation location,
    required String properties,
    required String restApiId,
  }) {
    return _$CreateDocumentationPartRequest._(
      location: location,
      properties: properties,
      restApiId: restApiId,
    );
  }

  /// Creates a new documentation part of a given API.
  factory CreateDocumentationPartRequest.build(
          [void Function(CreateDocumentationPartRequestBuilder) updates]) =
      _$CreateDocumentationPartRequest;

  const CreateDocumentationPartRequest._();

  factory CreateDocumentationPartRequest.fromRequest(
    CreateDocumentationPartRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      CreateDocumentationPartRequest.build((b) {
        b.location.replace(payload.location);
        b.properties = payload.properties;
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    CreateDocumentationPartRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateDocumentationPartRequestBuilder b) {}

  /// The location of the targeted API entity of the to-be-created documentation part.
  _i3.DocumentationPartLocation get location;

  /// The new documentation content map of the targeted API entity. Enclosed key-value pairs are API-specific, but only OpenAPI-compliant key-value pairs can be exported and, hence, published.
  String get properties;

  /// The string identifier of the associated RestApi.
  String get restApiId;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  CreateDocumentationPartRequestPayload getPayload() =>
      CreateDocumentationPartRequestPayload((b) {
        b.location.replace(location);
        b.properties = properties;
      });
  @override
  List<Object?> get props => [
        location,
        properties,
        restApiId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateDocumentationPartRequest');
    helper.add(
      'location',
      location,
    );
    helper.add(
      'properties',
      properties,
    );
    helper.add(
      'restApiId',
      restApiId,
    );
    return helper.toString();
  }
}

@_i4.internal
abstract class CreateDocumentationPartRequestPayload
    with
        _i2.AWSEquatable<CreateDocumentationPartRequestPayload>
    implements
        Built<CreateDocumentationPartRequestPayload,
            CreateDocumentationPartRequestPayloadBuilder> {
  factory CreateDocumentationPartRequestPayload(
      [void Function(CreateDocumentationPartRequestPayloadBuilder)
          updates]) = _$CreateDocumentationPartRequestPayload;

  const CreateDocumentationPartRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateDocumentationPartRequestPayloadBuilder b) {}

  /// The location of the targeted API entity of the to-be-created documentation part.
  _i3.DocumentationPartLocation get location;

  /// The new documentation content map of the targeted API entity. Enclosed key-value pairs are API-specific, but only OpenAPI-compliant key-value pairs can be exported and, hence, published.
  String get properties;
  @override
  List<Object?> get props => [
        location,
        properties,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateDocumentationPartRequestPayload');
    helper.add(
      'location',
      location,
    );
    helper.add(
      'properties',
      properties,
    );
    return helper.toString();
  }
}

class CreateDocumentationPartRequestRestJson1Serializer extends _i1
    .StructuredSmithySerializer<CreateDocumentationPartRequestPayload> {
  const CreateDocumentationPartRequestRestJson1Serializer()
      : super('CreateDocumentationPartRequest');

  @override
  Iterable<Type> get types => const [
        CreateDocumentationPartRequest,
        _$CreateDocumentationPartRequest,
        CreateDocumentationPartRequestPayload,
        _$CreateDocumentationPartRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  CreateDocumentationPartRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateDocumentationPartRequestPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'location':
          result.location.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.DocumentationPartLocation),
          ) as _i3.DocumentationPartLocation));
          break;
        case 'properties':
          result.properties = (serializers.deserialize(
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
    final payload = object is CreateDocumentationPartRequest
        ? object.getPayload()
        : (object as CreateDocumentationPartRequestPayload);
    final result = <Object?>[
      'location',
      serializers.serialize(
        payload.location,
        specifiedType: const FullType(_i3.DocumentationPartLocation),
      ),
      'properties',
      serializers.serialize(
        payload.properties,
        specifiedType: const FullType(String),
      ),
    ];
    return result;
  }
}
