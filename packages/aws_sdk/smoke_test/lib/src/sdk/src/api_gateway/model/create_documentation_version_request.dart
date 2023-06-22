// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.create_documentation_version_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'create_documentation_version_request.g.dart';

/// Creates a new documentation version of a given API.
abstract class CreateDocumentationVersionRequest
    with
        _i1.HttpInput<CreateDocumentationVersionRequestPayload>,
        _i2.AWSEquatable<CreateDocumentationVersionRequest>
    implements
        Built<CreateDocumentationVersionRequest,
            CreateDocumentationVersionRequestBuilder>,
        _i1.HasPayload<CreateDocumentationVersionRequestPayload> {
  /// Creates a new documentation version of a given API.
  factory CreateDocumentationVersionRequest({
    required String restApiId,
    required String documentationVersion,
    String? stageName,
    String? description,
  }) {
    return _$CreateDocumentationVersionRequest._(
      restApiId: restApiId,
      documentationVersion: documentationVersion,
      stageName: stageName,
      description: description,
    );
  }

  /// Creates a new documentation version of a given API.
  factory CreateDocumentationVersionRequest.build(
          [void Function(CreateDocumentationVersionRequestBuilder) updates]) =
      _$CreateDocumentationVersionRequest;

  const CreateDocumentationVersionRequest._();

  factory CreateDocumentationVersionRequest.fromRequest(
    CreateDocumentationVersionRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      CreateDocumentationVersionRequest.build((b) {
        b.description = payload.description;
        b.documentationVersion = payload.documentationVersion;
        b.stageName = payload.stageName;
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
      });

  static const List<
          _i1.SmithySerializer<CreateDocumentationVersionRequestPayload>>
      serializers = [CreateDocumentationVersionRequestRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateDocumentationVersionRequestBuilder b) {}

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The version identifier of the new snapshot.
  String get documentationVersion;

  /// The stage name to be associated with the new documentation snapshot.
  String? get stageName;

  /// A description about the new documentation snapshot.
  String? get description;
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
  CreateDocumentationVersionRequestPayload getPayload() =>
      CreateDocumentationVersionRequestPayload((b) {
        b.description = description;
        b.documentationVersion = documentationVersion;
        b.stageName = stageName;
      });
  @override
  List<Object?> get props => [
        restApiId,
        documentationVersion,
        stageName,
        description,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateDocumentationVersionRequest')
          ..add(
            'restApiId',
            restApiId,
          )
          ..add(
            'documentationVersion',
            documentationVersion,
          )
          ..add(
            'stageName',
            stageName,
          )
          ..add(
            'description',
            description,
          );
    return helper.toString();
  }
}

@_i3.internal
abstract class CreateDocumentationVersionRequestPayload
    with
        _i2.AWSEquatable<CreateDocumentationVersionRequestPayload>
    implements
        Built<CreateDocumentationVersionRequestPayload,
            CreateDocumentationVersionRequestPayloadBuilder> {
  factory CreateDocumentationVersionRequestPayload(
      [void Function(CreateDocumentationVersionRequestPayloadBuilder)
          updates]) = _$CreateDocumentationVersionRequestPayload;

  const CreateDocumentationVersionRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateDocumentationVersionRequestPayloadBuilder b) {}

  /// A description about the new documentation snapshot.
  String? get description;

  /// The version identifier of the new snapshot.
  String get documentationVersion;

  /// The stage name to be associated with the new documentation snapshot.
  String? get stageName;
  @override
  List<Object?> get props => [
        description,
        documentationVersion,
        stageName,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateDocumentationVersionRequestPayload')
          ..add(
            'description',
            description,
          )
          ..add(
            'documentationVersion',
            documentationVersion,
          )
          ..add(
            'stageName',
            stageName,
          );
    return helper.toString();
  }
}

class CreateDocumentationVersionRequestRestJson1Serializer extends _i1
    .StructuredSmithySerializer<CreateDocumentationVersionRequestPayload> {
  const CreateDocumentationVersionRequestRestJson1Serializer()
      : super('CreateDocumentationVersionRequest');

  @override
  Iterable<Type> get types => const [
        CreateDocumentationVersionRequest,
        _$CreateDocumentationVersionRequest,
        CreateDocumentationVersionRequestPayload,
        _$CreateDocumentationVersionRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  CreateDocumentationVersionRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateDocumentationVersionRequestPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'documentationVersion':
          result.documentationVersion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'stageName':
          result.stageName = (serializers.deserialize(
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
    CreateDocumentationVersionRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final CreateDocumentationVersionRequestPayload(
      :description,
      :documentationVersion,
      :stageName
    ) = object;
    result$.addAll([
      'documentationVersion',
      serializers.serialize(
        documentationVersion,
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
    if (stageName != null) {
      result$
        ..add('stageName')
        ..add(serializers.serialize(
          stageName,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
