// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    required String restApiId,
    required _i3.DocumentationPartLocation location,
    required String properties,
  }) {
    return _$CreateDocumentationPartRequest._(
      restApiId: restApiId,
      location: location,
      properties: properties,
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

  static const List<_i1.SmithySerializer<CreateDocumentationPartRequestPayload>>
      serializers = [CreateDocumentationPartRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateDocumentationPartRequestBuilder b) {}

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The location of the targeted API entity of the to-be-created documentation part.
  _i3.DocumentationPartLocation get location;

  /// The new documentation content map of the targeted API entity. Enclosed key-value pairs are API-specific, but only OpenAPI-compliant key-value pairs can be exported and, hence, published.
  String get properties;
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
        restApiId,
        location,
        properties,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateDocumentationPartRequest')
      ..add(
        'restApiId',
        restApiId,
      )
      ..add(
        'location',
        location,
      )
      ..add(
        'properties',
        properties,
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
        newBuiltValueToStringHelper('CreateDocumentationPartRequestPayload')
          ..add(
            'location',
            location,
          )
          ..add(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'location':
          result.location.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.DocumentationPartLocation),
          ) as _i3.DocumentationPartLocation));
        case 'properties':
          result.properties = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateDocumentationPartRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final CreateDocumentationPartRequestPayload(:location, :properties) =
        object;
    result$.addAll([
      'location',
      serializers.serialize(
        location,
        specifiedType: const FullType(_i3.DocumentationPartLocation),
      ),
      'properties',
      serializers.serialize(
        properties,
        specifiedType: const FullType(String),
      ),
    ]);
    return result$;
  }
}
