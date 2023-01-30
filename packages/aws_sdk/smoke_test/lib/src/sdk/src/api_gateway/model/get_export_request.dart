// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.get_export_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'get_export_request.g.dart';

/// Request a new export of a RestApi for a particular Stage.
abstract class GetExportRequest
    with
        _i1.HttpInput<GetExportRequestPayload>,
        _i2.AWSEquatable<GetExportRequest>
    implements
        Built<GetExportRequest, GetExportRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetExportRequestPayload> {
  /// Request a new export of a RestApi for a particular Stage.
  factory GetExportRequest({
    String? accepts,
    required String exportType,
    Map<String, String>? parameters,
    required String restApiId,
    required String stageName,
  }) {
    return _$GetExportRequest._(
      accepts: accepts,
      exportType: exportType,
      parameters: parameters == null ? null : _i3.BuiltMap(parameters),
      restApiId: restApiId,
      stageName: stageName,
    );
  }

  /// Request a new export of a RestApi for a particular Stage.
  factory GetExportRequest.build(
      [void Function(GetExportRequestBuilder) updates]) = _$GetExportRequest;

  const GetExportRequest._();

  factory GetExportRequest.fromRequest(
    GetExportRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetExportRequest.build((b) {
        if (request.headers['Accept'] != null) {
          b.accepts = request.headers['Accept']!;
        }
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['stageName'] != null) {
          b.stageName = labels['stageName']!;
        }
        if (labels['exportType'] != null) {
          b.exportType = labels['exportType']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    GetExportRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetExportRequestBuilder b) {}

  /// The content-type of the export, for example `application/json`. Currently `application/json` and `application/yaml` are supported for `exportType` of`oas30` and `swagger`. This should be specified in the `Accept` header for direct API requests.
  String? get accepts;

  /// The type of export. Acceptable values are 'oas30' for OpenAPI 3.0.x and 'swagger' for Swagger/OpenAPI 2.0.
  String get exportType;

  /// A key-value map of query string parameters that specify properties of the export, depending on the requested `exportType`. For `exportType` `oas30` and `swagger`, any combination of the following parameters are supported: `extensions='integrations'` or `extensions='apigateway'` will export the API with x-amazon-apigateway-integration extensions. `extensions='authorizers'` will export the API with x-amazon-apigateway-authorizer extensions. `postman` will export the API with Postman extensions, allowing for import to the Postman tool
  _i3.BuiltMap<String, String>? get parameters;

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The name of the Stage that will be exported.
  String get stageName;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
      case 'stageName':
        return stageName;
      case 'exportType':
        return exportType;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  GetExportRequestPayload getPayload() => GetExportRequestPayload();
  @override
  List<Object?> get props => [
        accepts,
        exportType,
        parameters,
        restApiId,
        stageName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetExportRequest');
    helper.add(
      'accepts',
      accepts,
    );
    helper.add(
      'exportType',
      exportType,
    );
    helper.add(
      'parameters',
      parameters,
    );
    helper.add(
      'restApiId',
      restApiId,
    );
    helper.add(
      'stageName',
      stageName,
    );
    return helper.toString();
  }
}

@_i4.internal
abstract class GetExportRequestPayload
    with _i2.AWSEquatable<GetExportRequestPayload>
    implements
        Built<GetExportRequestPayload, GetExportRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetExportRequestPayload(
          [void Function(GetExportRequestPayloadBuilder) updates]) =
      _$GetExportRequestPayload;

  const GetExportRequestPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetExportRequestPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetExportRequestPayload');
    return helper.toString();
  }
}

class GetExportRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetExportRequestPayload> {
  const GetExportRequestRestJson1Serializer() : super('GetExportRequest');

  @override
  Iterable<Type> get types => const [
        GetExportRequest,
        _$GetExportRequest,
        GetExportRequestPayload,
        _$GetExportRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetExportRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetExportRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
