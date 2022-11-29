// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.import_documentation_parts_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i2;

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/put_mode.dart' as _i4;

part 'import_documentation_parts_request.g.dart';

/// Import documentation parts from an external (e.g., OpenAPI) definition file.
abstract class ImportDocumentationPartsRequest
    with
        _i1.HttpInput<_i2.Uint8List>,
        _i3.AWSEquatable<ImportDocumentationPartsRequest>
    implements
        Built<ImportDocumentationPartsRequest,
            ImportDocumentationPartsRequestBuilder>,
        _i1.HasPayload<_i2.Uint8List> {
  /// Import documentation parts from an external (e.g., OpenAPI) definition file.
  factory ImportDocumentationPartsRequest({
    required _i2.Uint8List body,
    bool? failOnWarnings,
    _i4.PutMode? mode,
    required String restApiId,
  }) {
    return _$ImportDocumentationPartsRequest._(
      body: body,
      failOnWarnings: failOnWarnings,
      mode: mode,
      restApiId: restApiId,
    );
  }

  /// Import documentation parts from an external (e.g., OpenAPI) definition file.
  factory ImportDocumentationPartsRequest.build(
          [void Function(ImportDocumentationPartsRequestBuilder) updates]) =
      _$ImportDocumentationPartsRequest;

  const ImportDocumentationPartsRequest._();

  factory ImportDocumentationPartsRequest.fromRequest(
    _i2.Uint8List payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      ImportDocumentationPartsRequest.build((b) {
        b.body = payload;
        if (request.queryParameters['mode'] != null) {
          b.mode = _i4.PutMode.values.byValue(request.queryParameters['mode']!);
        }
        if (request.queryParameters['failonwarnings'] != null) {
          b.failOnWarnings =
              request.queryParameters['failonwarnings']! == 'true';
        }
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    ImportDocumentationPartsRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImportDocumentationPartsRequestBuilder b) {}

  /// Raw byte array representing the to-be-imported documentation parts. To import from an OpenAPI file, this is a JSON object.
  _i2.Uint8List get body;

  /// A query parameter to specify whether to rollback the documentation importation (`true`) or not (`false`) when a warning is encountered. The default value is `false`.
  bool? get failOnWarnings;

  /// A query parameter to indicate whether to overwrite (`OVERWRITE`) any existing DocumentationParts definition or to merge (`MERGE`) the new definition into the existing one. The default value is `MERGE`.
  _i4.PutMode? get mode;

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
  _i2.Uint8List getPayload() => body;
  @override
  List<Object?> get props => [
        body,
        failOnWarnings,
        mode,
        restApiId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ImportDocumentationPartsRequest');
    helper.add(
      'body',
      body,
    );
    helper.add(
      'failOnWarnings',
      failOnWarnings,
    );
    helper.add(
      'mode',
      mode,
    );
    helper.add(
      'restApiId',
      restApiId,
    );
    return helper.toString();
  }
}

class ImportDocumentationPartsRequestRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<_i2.Uint8List> {
  const ImportDocumentationPartsRequestRestJson1Serializer()
      : super('ImportDocumentationPartsRequest');

  @override
  Iterable<Type> get types => const [
        ImportDocumentationPartsRequest,
        _$ImportDocumentationPartsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i2.Uint8List deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return (serializers.deserialize(
      serialized,
      specifiedType: const FullType(_i2.Uint8List),
    ) as _i2.Uint8List);
  }

  @override
  Object serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = object is ImportDocumentationPartsRequest
        ? object.getPayload()
        : (object as _i2.Uint8List);
    return (serializers.serialize(
      payload,
      specifiedType: const FullType(_i2.Uint8List),
    ) as Object);
  }
}
