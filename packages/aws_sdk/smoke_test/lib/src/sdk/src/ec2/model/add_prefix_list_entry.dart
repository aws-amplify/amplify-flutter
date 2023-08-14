// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.add_prefix_list_entry; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'add_prefix_list_entry.g.dart';

/// An entry for a prefix list.
abstract class AddPrefixListEntry
    with _i1.AWSEquatable<AddPrefixListEntry>
    implements Built<AddPrefixListEntry, AddPrefixListEntryBuilder> {
  /// An entry for a prefix list.
  factory AddPrefixListEntry({
    String? cidr,
    String? description,
  }) {
    return _$AddPrefixListEntry._(
      cidr: cidr,
      description: description,
    );
  }

  /// An entry for a prefix list.
  factory AddPrefixListEntry.build(
          [void Function(AddPrefixListEntryBuilder) updates]) =
      _$AddPrefixListEntry;

  const AddPrefixListEntry._();

  static const List<_i2.SmithySerializer<AddPrefixListEntry>> serializers = [
    AddPrefixListEntryEc2QuerySerializer()
  ];

  /// The CIDR block.
  String? get cidr;

  /// A description for the entry.
  ///
  /// Constraints: Up to 255 characters in length.
  String? get description;
  @override
  List<Object?> get props => [
        cidr,
        description,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AddPrefixListEntry')
      ..add(
        'cidr',
        cidr,
      )
      ..add(
        'description',
        description,
      );
    return helper.toString();
  }
}

class AddPrefixListEntryEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<AddPrefixListEntry> {
  const AddPrefixListEntryEc2QuerySerializer() : super('AddPrefixListEntry');

  @override
  Iterable<Type> get types => const [
        AddPrefixListEntry,
        _$AddPrefixListEntry,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AddPrefixListEntry deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddPrefixListEntryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Cidr':
          result.cidr = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Description':
          result.description = (serializers.deserialize(
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
    AddPrefixListEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AddPrefixListEntryResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AddPrefixListEntry(:cidr, :description) = object;
    if (cidr != null) {
      result$
        ..add(const _i2.XmlElementName('Cidr'))
        ..add(serializers.serialize(
          cidr,
          specifiedType: const FullType(String),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i2.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
