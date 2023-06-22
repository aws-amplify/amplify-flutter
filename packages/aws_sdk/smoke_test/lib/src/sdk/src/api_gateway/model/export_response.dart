// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.export_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i3;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'export_response.g.dart';

/// The binary blob response to GetExport, which contains the generated SDK.
abstract class ExportResponse
    with _i1.AWSEquatable<ExportResponse>
    implements
        Built<ExportResponse, ExportResponseBuilder>,
        _i2.HasPayload<_i3.Uint8List> {
  /// The binary blob response to GetExport, which contains the generated SDK.
  factory ExportResponse({
    String? contentType,
    String? contentDisposition,
    _i3.Uint8List? body,
  }) {
    return _$ExportResponse._(
      contentType: contentType,
      contentDisposition: contentDisposition,
      body: body,
    );
  }

  /// The binary blob response to GetExport, which contains the generated SDK.
  factory ExportResponse.build([void Function(ExportResponseBuilder) updates]) =
      _$ExportResponse;

  const ExportResponse._();

  /// Constructs a [ExportResponse] from a [payload] and [response].
  factory ExportResponse.fromResponse(
    _i3.Uint8List? payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      ExportResponse.build((b) {
        b.body = payload;
        if (response.headers['Content-Type'] != null) {
          b.contentType = response.headers['Content-Type']!;
        }
        if (response.headers['Content-Disposition'] != null) {
          b.contentDisposition = response.headers['Content-Disposition']!;
        }
      });

  static const List<_i2.SmithySerializer<_i3.Uint8List?>> serializers = [
    ExportResponseRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExportResponseBuilder b) {}

  /// The content-type header value in the HTTP response. This will correspond to a valid 'accept' type in the request.
  String? get contentType;

  /// The content-disposition header value in the HTTP response.
  String? get contentDisposition;

  /// The binary blob response to GetExport, which contains the export.
  _i3.Uint8List? get body;
  @override
  _i3.Uint8List? getPayload() => body;
  @override
  List<Object?> get props => [
        contentType,
        contentDisposition,
        body,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ExportResponse')
      ..add(
        'contentType',
        contentType,
      )
      ..add(
        'contentDisposition',
        contentDisposition,
      )
      ..add(
        'body',
        body,
      );
    return helper.toString();
  }
}

class ExportResponseRestJson1Serializer
    extends _i2.PrimitiveSmithySerializer<_i3.Uint8List> {
  const ExportResponseRestJson1Serializer() : super('ExportResponse');

  @override
  Iterable<Type> get types => const [
        ExportResponse,
        _$ExportResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i3.Uint8List deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return (serializers.deserialize(
      serialized,
      specifiedType: const FullType(_i3.Uint8List),
    ) as _i3.Uint8List);
  }

  @override
  Object serialize(
    Serializers serializers,
    _i3.Uint8List object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(
      object,
      specifiedType: const FullType(_i3.Uint8List),
    )!;
  }
}
