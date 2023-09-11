// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.local_gateway; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'local_gateway.g.dart';

/// Describes a local gateway.
abstract class LocalGateway
    with _i1.AWSEquatable<LocalGateway>
    implements Built<LocalGateway, LocalGatewayBuilder> {
  /// Describes a local gateway.
  factory LocalGateway({
    String? localGatewayId,
    String? outpostArn,
    String? ownerId,
    String? state,
    List<Tag>? tags,
  }) {
    return _$LocalGateway._(
      localGatewayId: localGatewayId,
      outpostArn: outpostArn,
      ownerId: ownerId,
      state: state,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Describes a local gateway.
  factory LocalGateway.build([void Function(LocalGatewayBuilder) updates]) =
      _$LocalGateway;

  const LocalGateway._();

  static const List<_i3.SmithySerializer<LocalGateway>> serializers = [
    LocalGatewayEc2QuerySerializer()
  ];

  /// The ID of the local gateway.
  String? get localGatewayId;

  /// The Amazon Resource Name (ARN) of the Outpost.
  String? get outpostArn;

  /// The ID of the Amazon Web Services account that owns the local gateway.
  String? get ownerId;

  /// The state of the local gateway.
  String? get state;

  /// The tags assigned to the local gateway.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        localGatewayId,
        outpostArn,
        ownerId,
        state,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LocalGateway')
      ..add(
        'localGatewayId',
        localGatewayId,
      )
      ..add(
        'outpostArn',
        outpostArn,
      )
      ..add(
        'ownerId',
        ownerId,
      )
      ..add(
        'state',
        state,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class LocalGatewayEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<LocalGateway> {
  const LocalGatewayEc2QuerySerializer() : super('LocalGateway');

  @override
  Iterable<Type> get types => const [
        LocalGateway,
        _$LocalGateway,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LocalGateway deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LocalGatewayBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'localGatewayId':
          result.localGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'outpostArn':
          result.outpostArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'tagSet':
          result.tags.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i2.BuiltList<Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    LocalGateway object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'LocalGatewayResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LocalGateway(:localGatewayId, :outpostArn, :ownerId, :state, :tags) =
        object;
    if (localGatewayId != null) {
      result$
        ..add(const _i3.XmlElementName('LocalGatewayId'))
        ..add(serializers.serialize(
          localGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (outpostArn != null) {
      result$
        ..add(const _i3.XmlElementName('OutpostArn'))
        ..add(serializers.serialize(
          outpostArn,
          specifiedType: const FullType(String),
        ));
    }
    if (ownerId != null) {
      result$
        ..add(const _i3.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          ownerId,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(String),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i3.XmlElementName('TagSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
