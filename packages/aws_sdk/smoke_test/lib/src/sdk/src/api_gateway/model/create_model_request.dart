// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.create_model_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'create_model_request.g.dart';

/// Request to add a new Model to an existing RestApi resource.
abstract class CreateModelRequest
    with
        _i1.HttpInput<CreateModelRequestPayload>,
        _i2.AWSEquatable<CreateModelRequest>
    implements
        Built<CreateModelRequest, CreateModelRequestBuilder>,
        _i1.HasPayload<CreateModelRequestPayload> {
  /// Request to add a new Model to an existing RestApi resource.
  factory CreateModelRequest({
    required String contentType,
    String? description,
    required String name,
    required String restApiId,
    String? schema,
  }) {
    return _$CreateModelRequest._(
      contentType: contentType,
      description: description,
      name: name,
      restApiId: restApiId,
      schema: schema,
    );
  }

  /// Request to add a new Model to an existing RestApi resource.
  factory CreateModelRequest.build(
          [void Function(CreateModelRequestBuilder) updates]) =
      _$CreateModelRequest;

  const CreateModelRequest._();

  factory CreateModelRequest.fromRequest(
    CreateModelRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      CreateModelRequest.build((b) {
        b.contentType = payload.contentType;
        b.description = payload.description;
        b.name = payload.name;
        b.schema = payload.schema;
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    CreateModelRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateModelRequestBuilder b) {}

  /// The content-type for the model.
  String get contentType;

  /// The description of the model.
  String? get description;

  /// The name of the model. Must be alphanumeric.
  String get name;

  /// The RestApi identifier under which the Model will be created.
  String get restApiId;

  /// The schema for the model. For `application/json` models, this should be JSON schema draft 4 model.
  String? get schema;
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
  CreateModelRequestPayload getPayload() => CreateModelRequestPayload((b) {
        b.contentType = contentType;
        b.description = description;
        b.name = name;
        b.schema = schema;
      });
  @override
  List<Object?> get props => [
        contentType,
        description,
        name,
        restApiId,
        schema,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateModelRequest');
    helper.add(
      'contentType',
      contentType,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'name',
      name,
    );
    helper.add(
      'restApiId',
      restApiId,
    );
    helper.add(
      'schema',
      schema,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class CreateModelRequestPayload
    with _i2.AWSEquatable<CreateModelRequestPayload>
    implements
        Built<CreateModelRequestPayload, CreateModelRequestPayloadBuilder> {
  factory CreateModelRequestPayload(
          [void Function(CreateModelRequestPayloadBuilder) updates]) =
      _$CreateModelRequestPayload;

  const CreateModelRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateModelRequestPayloadBuilder b) {}

  /// The content-type for the model.
  String get contentType;

  /// The description of the model.
  String? get description;

  /// The name of the model. Must be alphanumeric.
  String get name;

  /// The schema for the model. For `application/json` models, this should be JSON schema draft 4 model.
  String? get schema;
  @override
  List<Object?> get props => [
        contentType,
        description,
        name,
        schema,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateModelRequestPayload');
    helper.add(
      'contentType',
      contentType,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'name',
      name,
    );
    helper.add(
      'schema',
      schema,
    );
    return helper.toString();
  }
}

class CreateModelRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<CreateModelRequestPayload> {
  const CreateModelRequestRestJson1Serializer() : super('CreateModelRequest');

  @override
  Iterable<Type> get types => const [
        CreateModelRequest,
        _$CreateModelRequest,
        CreateModelRequestPayload,
        _$CreateModelRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  CreateModelRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateModelRequestPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'contentType':
          result.contentType = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'name':
          result.name = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'schema':
          if (value != null) {
            result.schema = (serializers.deserialize(
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
    final payload = object is CreateModelRequest
        ? object.getPayload()
        : (object as CreateModelRequestPayload);
    final result = <Object?>[
      'contentType',
      serializers.serialize(
        payload.contentType,
        specifiedType: const FullType(String),
      ),
      'name',
      serializers.serialize(
        payload.name,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.schema != null) {
      result
        ..add('schema')
        ..add(serializers.serialize(
          payload.schema!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
