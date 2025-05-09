// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library rest_xml_v2.rest_xml_protocol.model.xml_namespaces_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/xml_namespace_nested.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'xml_namespaces_input_output.g.dart';

abstract class XmlNamespacesInputOutput
    with
        _i1.HttpInput<XmlNamespacesInputOutput>,
        _i2.AWSEquatable<XmlNamespacesInputOutput>
    implements
        Built<XmlNamespacesInputOutput, XmlNamespacesInputOutputBuilder> {
  factory XmlNamespacesInputOutput({XmlNamespaceNested? nested}) {
    return _$XmlNamespacesInputOutput._(nested: nested);
  }

  factory XmlNamespacesInputOutput.build([
    void Function(XmlNamespacesInputOutputBuilder) updates,
  ]) = _$XmlNamespacesInputOutput;

  const XmlNamespacesInputOutput._();

  factory XmlNamespacesInputOutput.fromRequest(
    XmlNamespacesInputOutput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) => payload;

  /// Constructs a [XmlNamespacesInputOutput] from a [payload] and [response].
  factory XmlNamespacesInputOutput.fromResponse(
    XmlNamespacesInputOutput payload,
    _i2.AWSBaseHttpResponse response,
  ) => payload;

  static const List<_i1.SmithySerializer<XmlNamespacesInputOutput>>
  serializers = [XmlNamespacesInputOutputRestXmlSerializer()];

  XmlNamespaceNested? get nested;
  @override
  XmlNamespacesInputOutput getPayload() => this;

  @override
  List<Object?> get props => [nested];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('XmlNamespacesInputOutput')
      ..add('nested', nested);
    return helper.toString();
  }
}

class XmlNamespacesInputOutputRestXmlSerializer
    extends _i1.StructuredSmithySerializer<XmlNamespacesInputOutput> {
  const XmlNamespacesInputOutputRestXmlSerializer()
    : super('XmlNamespacesInputOutput');

  @override
  Iterable<Type> get types => const [
    XmlNamespacesInputOutput,
    _$XmlNamespacesInputOutput,
  ];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
    _i1.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
  ];

  @override
  XmlNamespacesInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlNamespacesInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'nested':
          result.nested.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(XmlNamespaceNested),
                )
                as XmlNamespaceNested),
          );
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    XmlNamespacesInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'XmlNamespacesInputOutput',
        _i1.XmlNamespace('http://foo.com'),
      ),
    ];
    final XmlNamespacesInputOutput(:nested) = object;
    if (nested != null) {
      result$
        ..add(const _i1.XmlElementName('nested'))
        ..add(
          serializers.serialize(
            nested,
            specifiedType: const FullType(XmlNamespaceNested),
          ),
        );
    }
    return result$;
  }
}
