// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_state.dart';

part 'transit_gateway.g.dart';

/// Describes a transit gateway.
abstract class TransitGateway
    with _i1.AWSEquatable<TransitGateway>
    implements Built<TransitGateway, TransitGatewayBuilder> {
  /// Describes a transit gateway.
  factory TransitGateway({
    String? transitGatewayId,
    String? transitGatewayArn,
    TransitGatewayState? state,
    String? ownerId,
    String? description,
    DateTime? creationTime,
    TransitGatewayOptions? options,
    List<Tag>? tags,
  }) {
    return _$TransitGateway._(
      transitGatewayId: transitGatewayId,
      transitGatewayArn: transitGatewayArn,
      state: state,
      ownerId: ownerId,
      description: description,
      creationTime: creationTime,
      options: options,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Describes a transit gateway.
  factory TransitGateway.build([void Function(TransitGatewayBuilder) updates]) =
      _$TransitGateway;

  const TransitGateway._();

  static const List<_i3.SmithySerializer<TransitGateway>> serializers = [
    TransitGatewayEc2QuerySerializer()
  ];

  /// The ID of the transit gateway.
  String? get transitGatewayId;

  /// The Amazon Resource Name (ARN) of the transit gateway.
  String? get transitGatewayArn;

  /// The state of the transit gateway.
  TransitGatewayState? get state;

  /// The ID of the Amazon Web Services account that owns the transit gateway.
  String? get ownerId;

  /// The description of the transit gateway.
  String? get description;

  /// The creation time.
  DateTime? get creationTime;

  /// The transit gateway options.
  TransitGatewayOptions? get options;

  /// The tags for the transit gateway.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        transitGatewayId,
        transitGatewayArn,
        state,
        ownerId,
        description,
        creationTime,
        options,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransitGateway')
      ..add(
        'transitGatewayId',
        transitGatewayId,
      )
      ..add(
        'transitGatewayArn',
        transitGatewayArn,
      )
      ..add(
        'state',
        state,
      )
      ..add(
        'ownerId',
        ownerId,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'creationTime',
        creationTime,
      )
      ..add(
        'options',
        options,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class TransitGatewayEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<TransitGateway> {
  const TransitGatewayEc2QuerySerializer() : super('TransitGateway');

  @override
  Iterable<Type> get types => const [
        TransitGateway,
        _$TransitGateway,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGateway deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayId':
          result.transitGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'transitGatewayArn':
          result.transitGatewayArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGatewayState),
          ) as TransitGatewayState);
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'creationTime':
          result.creationTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'options':
          result.options.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGatewayOptions),
          ) as TransitGatewayOptions));
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
    TransitGateway object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'TransitGatewayResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGateway(
      :transitGatewayId,
      :transitGatewayArn,
      :state,
      :ownerId,
      :description,
      :creationTime,
      :options,
      :tags
    ) = object;
    if (transitGatewayId != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayId'))
        ..add(serializers.serialize(
          transitGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (transitGatewayArn != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayArn'))
        ..add(serializers.serialize(
          transitGatewayArn,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(TransitGatewayState),
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
    if (description != null) {
      result$
        ..add(const _i3.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (creationTime != null) {
      result$
        ..add(const _i3.XmlElementName('CreationTime'))
        ..add(serializers.serialize(
          creationTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (options != null) {
      result$
        ..add(const _i3.XmlElementName('Options'))
        ..add(serializers.serialize(
          options,
          specifiedType: const FullType(TransitGatewayOptions),
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
