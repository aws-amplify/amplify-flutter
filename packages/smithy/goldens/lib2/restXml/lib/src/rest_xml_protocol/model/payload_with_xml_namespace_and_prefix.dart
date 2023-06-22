// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_xml_v2.rest_xml_protocol.model.payload_with_xml_namespace_and_prefix; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'payload_with_xml_namespace_and_prefix.g.dart';

abstract class PayloadWithXmlNamespaceAndPrefix
    with
        _i1.AWSEquatable<PayloadWithXmlNamespaceAndPrefix>
    implements
        Built<PayloadWithXmlNamespaceAndPrefix,
            PayloadWithXmlNamespaceAndPrefixBuilder> {
  factory PayloadWithXmlNamespaceAndPrefix({String? name}) {
    return _$PayloadWithXmlNamespaceAndPrefix._(name: name);
  }

  factory PayloadWithXmlNamespaceAndPrefix.build(
          [void Function(PayloadWithXmlNamespaceAndPrefixBuilder) updates]) =
      _$PayloadWithXmlNamespaceAndPrefix;

  const PayloadWithXmlNamespaceAndPrefix._();

  static const List<_i2.SmithySerializer<PayloadWithXmlNamespaceAndPrefix>>
      serializers = [PayloadWithXmlNamespaceAndPrefixRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PayloadWithXmlNamespaceAndPrefixBuilder b) {}
  String? get name;
  @override
  List<Object?> get props => [name];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PayloadWithXmlNamespaceAndPrefix')
          ..add(
            'name',
            name,
          );
    return helper.toString();
  }
}

class PayloadWithXmlNamespaceAndPrefixRestXmlSerializer
    extends _i2.StructuredSmithySerializer<PayloadWithXmlNamespaceAndPrefix> {
  const PayloadWithXmlNamespaceAndPrefixRestXmlSerializer()
      : super('PayloadWithXmlNamespaceAndPrefix');

  @override
  Iterable<Type> get types => const [
        PayloadWithXmlNamespaceAndPrefix,
        _$PayloadWithXmlNamespaceAndPrefix,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  PayloadWithXmlNamespaceAndPrefix deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PayloadWithXmlNamespaceAndPrefixBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'name':
          result.name = (serializers.deserialize(
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
    PayloadWithXmlNamespaceAndPrefix object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'PayloadWithXmlNamespaceAndPrefix',
        _i2.XmlNamespace(
          'http://foo.com',
          'baz',
        ),
      )
    ];
    final PayloadWithXmlNamespaceAndPrefix(:name) = object;
    if (name != null) {
      result$
        ..add(const _i2.XmlElementName('name'))
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
