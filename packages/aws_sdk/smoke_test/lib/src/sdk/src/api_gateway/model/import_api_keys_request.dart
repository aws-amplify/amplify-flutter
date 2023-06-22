// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.import_api_keys_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i2;

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/api_keys_format.dart'
    as _i4;

part 'import_api_keys_request.g.dart';

/// The POST request to import API keys from an external source, such as a CSV-formatted file.
abstract class ImportApiKeysRequest
    with _i1.HttpInput<_i2.Uint8List>, _i3.AWSEquatable<ImportApiKeysRequest>
    implements
        Built<ImportApiKeysRequest, ImportApiKeysRequestBuilder>,
        _i1.HasPayload<_i2.Uint8List> {
  /// The POST request to import API keys from an external source, such as a CSV-formatted file.
  factory ImportApiKeysRequest({
    required _i2.Uint8List body,
    required _i4.ApiKeysFormat format,
    bool? failOnWarnings,
  }) {
    failOnWarnings ??= false;
    return _$ImportApiKeysRequest._(
      body: body,
      format: format,
      failOnWarnings: failOnWarnings,
    );
  }

  /// The POST request to import API keys from an external source, such as a CSV-formatted file.
  factory ImportApiKeysRequest.build(
          [void Function(ImportApiKeysRequestBuilder) updates]) =
      _$ImportApiKeysRequest;

  const ImportApiKeysRequest._();

  factory ImportApiKeysRequest.fromRequest(
    _i2.Uint8List payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      ImportApiKeysRequest.build((b) {
        b.body = payload;
        if (request.queryParameters['format'] != null) {
          b.format = _i4.ApiKeysFormat.values
              .byValue(request.queryParameters['format']!);
        }
        if (request.queryParameters['failonwarnings'] != null) {
          b.failOnWarnings =
              request.queryParameters['failonwarnings']! == 'true';
        }
      });

  static const List<_i1.SmithySerializer<_i2.Uint8List>> serializers = [
    ImportApiKeysRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImportApiKeysRequestBuilder b) {
    b.failOnWarnings = false;
  }

  /// The payload of the POST request to import API keys. For the payload format, see API Key File Format.
  _i2.Uint8List get body;

  /// A query parameter to specify the input format to imported API keys. Currently, only the `csv` format is supported.
  _i4.ApiKeysFormat get format;

  /// A query parameter to indicate whether to rollback ApiKey importation (`true`) or not (`false`) when error is encountered.
  bool get failOnWarnings;
  @override
  _i2.Uint8List getPayload() => body;
  @override
  List<Object?> get props => [
        body,
        format,
        failOnWarnings,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImportApiKeysRequest')
      ..add(
        'body',
        body,
      )
      ..add(
        'format',
        format,
      )
      ..add(
        'failOnWarnings',
        failOnWarnings,
      );
    return helper.toString();
  }
}

class ImportApiKeysRequestRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<_i2.Uint8List> {
  const ImportApiKeysRequestRestJson1Serializer()
      : super('ImportApiKeysRequest');

  @override
  Iterable<Type> get types => const [
        ImportApiKeysRequest,
        _$ImportApiKeysRequest,
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
