// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_xml_v1.rest_xml_protocol.model.http_request_with_float_labels_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'http_request_with_float_labels_input.g.dart';

abstract class HttpRequestWithFloatLabelsInput
    with
        _i1.HttpInput<HttpRequestWithFloatLabelsInputPayload>,
        _i2.AWSEquatable<HttpRequestWithFloatLabelsInput>
    implements
        Built<HttpRequestWithFloatLabelsInput,
            HttpRequestWithFloatLabelsInputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<HttpRequestWithFloatLabelsInputPayload> {
  factory HttpRequestWithFloatLabelsInput({
    double? float,
    double? double_,
  }) {
    float ??= 0;
    double_ ??= 0;
    return _$HttpRequestWithFloatLabelsInput._(
      float: float,
      double_: double_,
    );
  }

  factory HttpRequestWithFloatLabelsInput.build(
          [void Function(HttpRequestWithFloatLabelsInputBuilder) updates]) =
      _$HttpRequestWithFloatLabelsInput;

  const HttpRequestWithFloatLabelsInput._();

  factory HttpRequestWithFloatLabelsInput.fromRequest(
    HttpRequestWithFloatLabelsInputPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      HttpRequestWithFloatLabelsInput.build((b) {
        if (labels['float'] != null) {
          b.float = double.parse(labels['float']!);
        }
        if (labels['double_'] != null) {
          b.double_ = double.parse(labels['double_']!);
        }
      });

  static const List<
          _i1.SmithySerializer<HttpRequestWithFloatLabelsInputPayload>>
      serializers = [HttpRequestWithFloatLabelsInputRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpRequestWithFloatLabelsInputBuilder b) {
    b.float = 0;
    b.double_ = 0;
  }

  double get float;
  double get double_;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'float':
        return float.toString();
      case 'double':
        return double_.toString();
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  HttpRequestWithFloatLabelsInputPayload getPayload() =>
      HttpRequestWithFloatLabelsInputPayload();
  @override
  List<Object?> get props => [
        float,
        double_,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('HttpRequestWithFloatLabelsInput')
          ..add(
            'float',
            float,
          )
          ..add(
            'double_',
            double_,
          );
    return helper.toString();
  }
}

@_i3.internal
abstract class HttpRequestWithFloatLabelsInputPayload
    with
        _i2.AWSEquatable<HttpRequestWithFloatLabelsInputPayload>
    implements
        Built<HttpRequestWithFloatLabelsInputPayload,
            HttpRequestWithFloatLabelsInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory HttpRequestWithFloatLabelsInputPayload(
      [void Function(HttpRequestWithFloatLabelsInputPayloadBuilder)
          updates]) = _$HttpRequestWithFloatLabelsInputPayload;

  const HttpRequestWithFloatLabelsInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HttpRequestWithFloatLabelsInputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('HttpRequestWithFloatLabelsInputPayload');
    return helper.toString();
  }
}

class HttpRequestWithFloatLabelsInputRestXmlSerializer extends _i1
    .StructuredSmithySerializer<HttpRequestWithFloatLabelsInputPayload> {
  const HttpRequestWithFloatLabelsInputRestXmlSerializer()
      : super('HttpRequestWithFloatLabelsInput');

  @override
  Iterable<Type> get types => const [
        HttpRequestWithFloatLabelsInput,
        _$HttpRequestWithFloatLabelsInput,
        HttpRequestWithFloatLabelsInputPayload,
        _$HttpRequestWithFloatLabelsInputPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  HttpRequestWithFloatLabelsInputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return HttpRequestWithFloatLabelsInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    HttpRequestWithFloatLabelsInputPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName('HttpRequestWithFloatLabelsInput')
    ];

    return result$;
  }
}
