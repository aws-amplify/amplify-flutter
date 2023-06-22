// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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

  static const List<_i2.SmithySerializer<MetadataEntry>> serializers = [
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
    final helper = newBuiltValueToStringHelper('MetadataEntry')
      ..add(
        'name',
        name,
      )
      ..add(
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Value':
          result.value = (serializers.deserialize(
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
    MetadataEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'MetadataEntry',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final MetadataEntry(:name, :value) = object;
    if (name != null) {
      result$
        ..add(const _i2.XmlElementName('Name'))
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType(String),
        ));
    }
    if (value != null) {
      result$
        ..add(const _i2.XmlElementName('Value'))
        ..add(serializers.serialize(
          value,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
