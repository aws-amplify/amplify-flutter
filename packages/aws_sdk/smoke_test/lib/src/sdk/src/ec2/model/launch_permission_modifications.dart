// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.launch_permission_modifications; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_permission.dart';

part 'launch_permission_modifications.g.dart';

/// Describes a launch permission modification.
abstract class LaunchPermissionModifications
    with
        _i1.AWSEquatable<LaunchPermissionModifications>
    implements
        Built<LaunchPermissionModifications,
            LaunchPermissionModificationsBuilder> {
  /// Describes a launch permission modification.
  factory LaunchPermissionModifications({
    List<LaunchPermission>? add,
    List<LaunchPermission>? remove,
  }) {
    return _$LaunchPermissionModifications._(
      add: add == null ? null : _i2.BuiltList(add),
      remove: remove == null ? null : _i2.BuiltList(remove),
    );
  }

  /// Describes a launch permission modification.
  factory LaunchPermissionModifications.build(
          [void Function(LaunchPermissionModificationsBuilder) updates]) =
      _$LaunchPermissionModifications;

  const LaunchPermissionModifications._();

  static const List<_i3.SmithySerializer<LaunchPermissionModifications>>
      serializers = [LaunchPermissionModificationsEc2QuerySerializer()];

  /// The Amazon Web Services account ID, organization ARN, or OU ARN to add to the list of launch permissions for the AMI.
  _i2.BuiltList<LaunchPermission>? get add;

  /// The Amazon Web Services account ID, organization ARN, or OU ARN to remove from the list of launch permissions for the AMI.
  _i2.BuiltList<LaunchPermission>? get remove;
  @override
  List<Object?> get props => [
        add,
        remove,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LaunchPermissionModifications')
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

class LaunchPermissionModificationsEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<LaunchPermissionModifications> {
  const LaunchPermissionModificationsEc2QuerySerializer()
      : super('LaunchPermissionModifications');

  @override
  Iterable<Type> get types => const [
        LaunchPermissionModifications,
        _$LaunchPermissionModifications,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchPermissionModifications deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchPermissionModificationsBuilder();
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
              [FullType(LaunchPermission)],
            ),
          ) as _i2.BuiltList<LaunchPermission>));
        case 'Remove':
          result.remove.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(LaunchPermission)],
            ),
          ) as _i2.BuiltList<LaunchPermission>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    LaunchPermissionModifications object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'LaunchPermissionModificationsResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LaunchPermissionModifications(:add, :remove) = object;
    if (add != null) {
      result$
        ..add(const _i3.XmlElementName('Add'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          add,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(LaunchPermission)],
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
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(LaunchPermission)],
          ),
        ));
    }
    return result$;
  }
}
