// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    required String restApiId,
    required String name,
    String? description,
    String? schema,
    required String contentType,
  }) {
    return _$CreateModelRequest._(
      restApiId: restApiId,
      name: name,
      description: description,
      schema: schema,
      contentType: contentType,
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

  static const List<_i1.SmithySerializer<CreateModelRequestPayload>>
      serializers = [CreateModelRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateModelRequestBuilder b) {}

  /// The RestApi identifier under which the Model will be created.
  String get restApiId;

  /// The name of the model. Must be alphanumeric.
  String get name;

  /// The description of the model.
  String? get description;

  /// The schema for the model. For `application/json` models, this should be JSON schema draft 4 model.
  String? get schema;

  /// The content-type for the model.
  String get contentType;
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
        restApiId,
        name,
        description,
        schema,
        contentType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateModelRequest')
      ..add(
        'restApiId',
        restApiId,
      )
      ..add(
        'name',
        name,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'schema',
        schema,
      )
      ..add(
        'contentType',
        contentType,
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
    final helper = newBuiltValueToStringHelper('CreateModelRequestPayload')
      ..add(
        'contentType',
        contentType,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'name',
        name,
      )
      ..add(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'contentType':
          result.contentType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'schema':
          result.schema = (serializers.deserialize(
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
    CreateModelRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final CreateModelRequestPayload(
      :contentType,
      :description,
      :name,
      :schema
    ) = object;
    result$.addAll([
      'contentType',
      serializers.serialize(
        contentType,
        specifiedType: const FullType(String),
      ),
      'name',
      serializers.serialize(
        name,
        specifiedType: const FullType(String),
      ),
    ]);
    if (description != null) {
      result$
        ..add('description')
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (schema != null) {
      result$
        ..add('schema')
        ..add(serializers.serialize(
          schema,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
