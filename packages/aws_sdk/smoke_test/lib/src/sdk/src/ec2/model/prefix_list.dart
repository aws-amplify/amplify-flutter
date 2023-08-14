// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.prefix_list; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'prefix_list.g.dart';

/// Describes prefixes for Amazon Web Services services.
abstract class PrefixList
    with _i1.AWSEquatable<PrefixList>
    implements Built<PrefixList, PrefixListBuilder> {
  /// Describes prefixes for Amazon Web Services services.
  factory PrefixList({
    List<String>? cidrs,
    String? prefixListId,
    String? prefixListName,
  }) {
    return _$PrefixList._(
      cidrs: cidrs == null ? null : _i2.BuiltList(cidrs),
      prefixListId: prefixListId,
      prefixListName: prefixListName,
    );
  }

  /// Describes prefixes for Amazon Web Services services.
  factory PrefixList.build([void Function(PrefixListBuilder) updates]) =
      _$PrefixList;

  const PrefixList._();

  static const List<_i3.SmithySerializer<PrefixList>> serializers = [
    PrefixListEc2QuerySerializer()
  ];

  /// The IP address range of the Amazon Web Service.
  _i2.BuiltList<String>? get cidrs;

  /// The ID of the prefix.
  String? get prefixListId;

  /// The name of the prefix.
  String? get prefixListName;
  @override
  List<Object?> get props => [
        cidrs,
        prefixListId,
        prefixListName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PrefixList')
      ..add(
        'cidrs',
        cidrs,
      )
      ..add(
        'prefixListId',
        prefixListId,
      )
      ..add(
        'prefixListName',
        prefixListName,
      );
    return helper.toString();
  }
}

class PrefixListEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<PrefixList> {
  const PrefixListEc2QuerySerializer() : super('PrefixList');

  @override
  Iterable<Type> get types => const [
        PrefixList,
        _$PrefixList,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PrefixList deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrefixListBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'cidrSet':
          result.cidrs.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'prefixListId':
          result.prefixListId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'prefixListName':
          result.prefixListName = (serializers.deserialize(
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
    PrefixList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'PrefixListResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final PrefixList(:cidrs, :prefixListId, :prefixListName) = object;
    if (cidrs != null) {
      result$
        ..add(const _i3.XmlElementName('CidrSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          cidrs,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (prefixListId != null) {
      result$
        ..add(const _i3.XmlElementName('PrefixListId'))
        ..add(serializers.serialize(
          prefixListId,
          specifiedType: const FullType(String),
        ));
    }
    if (prefixListName != null) {
      result$
        ..add(const _i3.XmlElementName('PrefixListName'))
        ..add(serializers.serialize(
          prefixListName,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
