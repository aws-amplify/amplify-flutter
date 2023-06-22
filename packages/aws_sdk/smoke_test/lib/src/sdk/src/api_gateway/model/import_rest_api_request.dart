// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.import_rest_api_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i2;

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'import_rest_api_request.g.dart';

/// A POST request to import an API to API Gateway using an input of an API definition file.
abstract class ImportRestApiRequest
    with _i1.HttpInput<_i2.Uint8List>, _i3.AWSEquatable<ImportRestApiRequest>
    implements
        Built<ImportRestApiRequest, ImportRestApiRequestBuilder>,
        _i1.HasPayload<_i2.Uint8List> {
  /// A POST request to import an API to API Gateway using an input of an API definition file.
  factory ImportRestApiRequest({
    bool? failOnWarnings,
    Map<String, String>? parameters,
    required _i2.Uint8List body,
  }) {
    failOnWarnings ??= false;
    return _$ImportRestApiRequest._(
      failOnWarnings: failOnWarnings,
      parameters: parameters == null ? null : _i4.BuiltMap(parameters),
      body: body,
    );
  }

  /// A POST request to import an API to API Gateway using an input of an API definition file.
  factory ImportRestApiRequest.build(
          [void Function(ImportRestApiRequestBuilder) updates]) =
      _$ImportRestApiRequest;

  const ImportRestApiRequest._();

  factory ImportRestApiRequest.fromRequest(
    _i2.Uint8List payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      ImportRestApiRequest.build((b) {
        b.body = payload;
        if (request.queryParameters['failonwarnings'] != null) {
          b.failOnWarnings =
              request.queryParameters['failonwarnings']! == 'true';
        }
      });

  static const List<_i1.SmithySerializer<_i2.Uint8List>> serializers = [
    ImportRestApiRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImportRestApiRequestBuilder b) {
    b.failOnWarnings = false;
  }

  /// A query parameter to indicate whether to rollback the API creation (`true`) or not (`false`) when a warning is encountered. The default value is `false`.
  bool get failOnWarnings;

  /// A key-value map of context-specific query string parameters specifying the behavior of different API importing operations. The following shows operation-specific parameters and their supported values.
  ///
  /// To exclude DocumentationParts from the import, set `parameters` as `ignore=documentation`.
  ///
  /// To configure the endpoint type, set `parameters` as `endpointConfigurationTypes=EDGE`, `endpointConfigurationTypes=REGIONAL`, or `endpointConfigurationTypes=PRIVATE`. The default endpoint type is `EDGE`.
  ///
  /// To handle imported `basepath`, set `parameters` as `basepath=ignore`, `basepath=prepend` or `basepath=split`.
  ///
  /// For example, the AWS CLI command to exclude documentation from the imported API is:
  ///
  /// The AWS CLI command to set the regional endpoint on the imported API is:
  _i4.BuiltMap<String, String>? get parameters;

  /// The POST request body containing external API definitions. Currently, only OpenAPI definition JSON/YAML files are supported. The maximum size of the API definition file is 6MB.
  _i2.Uint8List get body;
  @override
  _i2.Uint8List getPayload() => body;
  @override
  List<Object?> get props => [
        failOnWarnings,
        parameters,
        body,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImportRestApiRequest')
      ..add(
        'failOnWarnings',
        failOnWarnings,
      )
      ..add(
        'parameters',
        parameters,
      )
      ..add(
        'body',
        body,
      );
    return helper.toString();
  }
}

class ImportRestApiRequestRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<_i2.Uint8List> {
  const ImportRestApiRequestRestJson1Serializer()
      : super('ImportRestApiRequest');

  @override
  Iterable<Type> get types => const [
        ImportRestApiRequest,
        _$ImportRestApiRequest,
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
