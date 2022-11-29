// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.metadata_entry; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'metadata_entry.g.dart';

/// A metadata key-value pair to store with an object.
abstract class MetadataEntry
    with _i1.AWSEquatable<MetadataEntry>
    implements Built<MetadataEntry, MetadataEntryBuilder> {
  /// A metadata key-value pair to store with an object.
  factory MetadataEntry({
    String? name,
    String? value,
  }) {
    return _$MetadataEntry._(
      name: name,
      value: value,
    );
  }

  /// A metadata key-value pair to store with an object.
  factory MetadataEntry.build([void Function(MetadataEntryBuilder) updates]) =
      _$MetadataEntry;

  const MetadataEntry._();

  static const List<_i2.SmithySerializer> serializers = [
    MetadataEntryRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MetadataEntryBuilder b) {}

  /// Name of the Object.
  String? get name;

  /// Value of the Object.
  String? get value;
  @override
  List<Object?> get props => [
        name,
        value,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MetadataEntry');
    helper.add(
      'name',
      name,
    );
    helper.add(
      'value',
      value,
    );
    return helper.toString();
  }
}

class MetadataEntryRestXmlSerializer
    extends _i2.StructuredSmithySerializer<MetadataEntry> {
  const MetadataEntryRestXmlSerializer() : super('MetadataEntry');

  @override
  Iterable<Type> get types => const [
        MetadataEntry,
        _$MetadataEntry,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  MetadataEntry deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MetadataEntryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Name':
          if (value != null) {
            result.name = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Value':
          if (value != null) {
            result.value = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as MetadataEntry);
    final result = <Object?>[
      const _i2.XmlElementName(
        'MetadataEntry',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.name != null) {
      result
        ..add(const _i2.XmlElementName('Name'))
        ..add(serializers.serialize(
          payload.name!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.value != null) {
      result
        ..add(const _i2.XmlElementName('Value'))
        ..add(serializers.serialize(
          payload.value!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
