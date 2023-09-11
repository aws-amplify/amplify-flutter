// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.load_permission_modifications; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/load_permission_request.dart';

part 'load_permission_modifications.g.dart';

/// Describes modifications to the load permissions of an Amazon FPGA image (AFI).
abstract class LoadPermissionModifications
    with _i1.AWSEquatable<LoadPermissionModifications>
    implements
        Built<LoadPermissionModifications, LoadPermissionModificationsBuilder> {
  /// Describes modifications to the load permissions of an Amazon FPGA image (AFI).
  factory LoadPermissionModifications({
    List<LoadPermissionRequest>? add,
    List<LoadPermissionRequest>? remove,
  }) {
    return _$LoadPermissionModifications._(
      add: add == null ? null : _i2.BuiltList(add),
      remove: remove == null ? null : _i2.BuiltList(remove),
    );
  }

  /// Describes modifications to the load permissions of an Amazon FPGA image (AFI).
  factory LoadPermissionModifications.build(
          [void Function(LoadPermissionModificationsBuilder) updates]) =
      _$LoadPermissionModifications;

  const LoadPermissionModifications._();

  static const List<_i3.SmithySerializer<LoadPermissionModifications>>
      serializers = [LoadPermissionModificationsEc2QuerySerializer()];

  /// The load permissions to add.
  _i2.BuiltList<LoadPermissionRequest>? get add;

  /// The load permissions to remove.
  _i2.BuiltList<LoadPermissionRequest>? get remove;
  @override
  List<Object?> get props => [
        add,
        remove,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LoadPermissionModifications')
      ..add(
        'add',
        add,
      )
      ..add(
        'remove',
        remove,
      );
    return helper.toString();
  }
}

class LoadPermissionModificationsEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<LoadPermissionModifications> {
  const LoadPermissionModificationsEc2QuerySerializer()
      : super('LoadPermissionModifications');

  @override
  Iterable<Type> get types => const [
        LoadPermissionModifications,
        _$LoadPermissionModifications,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LoadPermissionModifications deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LoadPermissionModificationsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Add':
          result.add.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(LoadPermissionRequest)],
            ),
          ) as _i2.BuiltList<LoadPermissionRequest>));
        case 'Remove':
          result.remove.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(LoadPermissionRequest)],
            ),
          ) as _i2.BuiltList<LoadPermissionRequest>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    LoadPermissionModifications object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'LoadPermissionModificationsResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LoadPermissionModifications(:add, :remove) = object;
    if (add != null) {
      result$
        ..add(const _i3.XmlElementName('Add'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          add,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(LoadPermissionRequest)],
          ),
        ));
    }
    if (remove != null) {
      result$
        ..add(const _i3.XmlElementName('Remove'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          remove,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(LoadPermissionRequest)],
          ),
        ));
    }
    return result$;
  }
}
