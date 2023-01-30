// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.inventory_filter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'inventory_filter.g.dart';

/// Specifies an inventory filter. The inventory only includes objects that meet the filter's criteria.
abstract class InventoryFilter
    with _i1.AWSEquatable<InventoryFilter>
    implements Built<InventoryFilter, InventoryFilterBuilder> {
  /// Specifies an inventory filter. The inventory only includes objects that meet the filter's criteria.
  factory InventoryFilter({required String prefix}) {
    return _$InventoryFilter._(prefix: prefix);
  }

  /// Specifies an inventory filter. The inventory only includes objects that meet the filter's criteria.
  factory InventoryFilter.build(
      [void Function(InventoryFilterBuilder) updates]) = _$InventoryFilter;

  const InventoryFilter._();

  static const List<_i2.SmithySerializer> serializers = [
    InventoryFilterRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InventoryFilterBuilder b) {}

  /// The prefix that an object must have to be included in the inventory results.
  String get prefix;
  @override
  List<Object?> get props => [prefix];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InventoryFilter');
    helper.add(
      'prefix',
      prefix,
    );
    return helper.toString();
  }
}

class InventoryFilterRestXmlSerializer
    extends _i2.StructuredSmithySerializer<InventoryFilter> {
  const InventoryFilterRestXmlSerializer() : super('InventoryFilter');

  @override
  Iterable<Type> get types => const [
        InventoryFilter,
        _$InventoryFilter,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  InventoryFilter deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InventoryFilterBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Prefix':
          result.prefix = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as InventoryFilter);
    final result = <Object?>[
      const _i2.XmlElementName(
        'InventoryFilter',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('Prefix'))
      ..add(serializers.serialize(
        payload.prefix,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
