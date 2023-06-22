// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    required String restApiId,
    _i4.PutMode? mode,
    bool? failOnWarnings,
    required _i2.Uint8List body,
  }) {
    failOnWarnings ??= false;
    return _$ImportDocumentationPartsRequest._(
      restApiId: restApiId,
      mode: mode,
      failOnWarnings: failOnWarnings,
      body: body,
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

  static const List<_i1.SmithySerializer<_i2.Uint8List>> serializers = [
    ImportDocumentationPartsRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImportDocumentationPartsRequestBuilder b) {
    b.failOnWarnings = false;
  }

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// A query parameter to indicate whether to overwrite (`OVERWRITE`) any existing DocumentationParts definition or to merge (`MERGE`) the new definition into the existing one. The default value is `MERGE`.
  _i4.PutMode? get mode;

  /// A query parameter to specify whether to rollback the documentation importation (`true`) or not (`false`) when a warning is encountered. The default value is `false`.
  bool get failOnWarnings;

  /// Raw byte array representing the to-be-imported documentation parts. To import from an OpenAPI file, this is a JSON object.
  _i2.Uint8List get body;
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
        restApiId,
        mode,
        failOnWarnings,
        body,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ImportDocumentationPartsRequest')
          ..add(
            'restApiId',
            restApiId,
          )
          ..add(
            'mode',
            mode,
          )
          ..add(
            'failOnWarnings',
            failOnWarnings,
          )
          ..add(
            'body',
            body,
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
    _i2.Uint8List object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(
      object,
      specifiedType: const FullType(_i2.Uint8List),
    )!;
  }
}
