// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library aws_query_v1.query_protocol.model.xml_blobs_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i2;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'xml_blobs_output.g.dart';

abstract class XmlBlobsOutput
    with _i1.AWSEquatable<XmlBlobsOutput>
    implements Built<XmlBlobsOutput, XmlBlobsOutputBuilder> {
  factory XmlBlobsOutput({_i2.Uint8List? data}) {
    return _$XmlBlobsOutput._(data: data);
  }

  factory XmlBlobsOutput.build([void Function(XmlBlobsOutputBuilder) updates]) =
      _$XmlBlobsOutput;

  const XmlBlobsOutput._();

  /// Constructs a [XmlBlobsOutput] from a [payload] and [response].
  factory XmlBlobsOutput.fromResponse(
    XmlBlobsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<XmlBlobsOutput>> serializers = [
    XmlBlobsOutputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(XmlBlobsOutputBuilder b) {}
  _i2.Uint8List? get data;
  @override
  List<Object?> get props => [data];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('XmlBlobsOutput')
      ..add(
        'data',
        data,
      );
    return helper.toString();
  }
}

class XmlBlobsOutputAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<XmlBlobsOutput> {
  const XmlBlobsOutputAwsQuerySerializer() : super('XmlBlobsOutput');

  @override
  Iterable<Type> get types => const [
        XmlBlobsOutput,
        _$XmlBlobsOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  XmlBlobsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlBlobsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'data':
          result.data = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Uint8List),
          ) as _i2.Uint8List);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    XmlBlobsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'XmlBlobsOutputResponse',
        _i3.XmlNamespace('https://example.com/'),
      )
    ];
    final XmlBlobsOutput(:data) = object;
    if (data != null) {
      result$
        ..add(const _i3.XmlElementName('data'))
        ..add(serializers.serialize(
          data,
          specifiedType: const FullType.nullable(_i2.Uint8List),
        ));
    }
    return result$;
  }
}
