// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_multicast_domain; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_domain_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_domain_state.dart';

part 'transit_gateway_multicast_domain.g.dart';

/// Describes the transit gateway multicast domain.
abstract class TransitGatewayMulticastDomain
    with
        _i1.AWSEquatable<TransitGatewayMulticastDomain>
    implements
        Built<TransitGatewayMulticastDomain,
            TransitGatewayMulticastDomainBuilder> {
  /// Describes the transit gateway multicast domain.
  factory TransitGatewayMulticastDomain({
    String? transitGatewayMulticastDomainId,
    String? transitGatewayId,
    String? transitGatewayMulticastDomainArn,
    String? ownerId,
    TransitGatewayMulticastDomainOptions? options,
    TransitGatewayMulticastDomainState? state,
    DateTime? creationTime,
    List<Tag>? tags,
  }) {
    return _$TransitGatewayMulticastDomain._(
      transitGatewayMulticastDomainId: transitGatewayMulticastDomainId,
      transitGatewayId: transitGatewayId,
      transitGatewayMulticastDomainArn: transitGatewayMulticastDomainArn,
      ownerId: ownerId,
      options: options,
      state: state,
      creationTime: creationTime,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Describes the transit gateway multicast domain.
  factory TransitGatewayMulticastDomain.build(
          [void Function(TransitGatewayMulticastDomainBuilder) updates]) =
      _$TransitGatewayMulticastDomain;

  const TransitGatewayMulticastDomain._();

  static const List<_i3.SmithySerializer<TransitGatewayMulticastDomain>>
      serializers = [TransitGatewayMulticastDomainEc2QuerySerializer()];

  /// The ID of the transit gateway multicast domain.
  String? get transitGatewayMulticastDomainId;

  /// The ID of the transit gateway.
  String? get transitGatewayId;

  /// The Amazon Resource Name (ARN) of the transit gateway multicast domain.
  String? get transitGatewayMulticastDomainArn;

  /// The ID of the Amazon Web Services account that owns the transit gateway multicast domain.
  String? get ownerId;

  /// The options for the transit gateway multicast domain.
  TransitGatewayMulticastDomainOptions? get options;

  /// The state of the transit gateway multicast domain.
  TransitGatewayMulticastDomainState? get state;

  /// The time the transit gateway multicast domain was created.
  DateTime? get creationTime;

  /// The tags for the transit gateway multicast domain.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        transitGatewayMulticastDomainId,
        transitGatewayId,
        transitGatewayMulticastDomainArn,
        ownerId,
        options,
        state,
        creationTime,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransitGatewayMulticastDomain')
      ..add(
        'transitGatewayMulticastDomainId',
        transitGatewayMulticastDomainId,
      )
      ..add(
        'transitGatewayId',
        transitGatewayId,
      )
      ..add(
        'transitGatewayMulticastDomainArn',
        transitGatewayMulticastDomainArn,
      )
      ..add(
        'ownerId',
        ownerId,
      )
      ..add(
        'options',
        options,
      )
      ..add(
        'state',
        state,
      )
      ..add(
        'creationTime',
        creationTime,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class TransitGatewayMulticastDomainEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<TransitGatewayMulticastDomain> {
  const TransitGatewayMulticastDomainEc2QuerySerializer()
      : super('TransitGatewayMulticastDomain');

  @override
  Iterable<Type> get types => const [
        TransitGatewayMulticastDomain,
        _$TransitGatewayMulticastDomain,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayMulticastDomain deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayMulticastDomainBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayMulticastDomainId':
          result.transitGatewayMulticastDomainId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'transitGatewayId':
          result.transitGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'transitGatewayMulticastDomainArn':
          result.transitGatewayMulticastDomainArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'options':
          result.options.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGatewayMulticastDomainOptions),
          ) as TransitGatewayMulticastDomainOptions));
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGatewayMulticastDomainState),
          ) as TransitGatewayMulticastDomainState);
        case 'creationTime':
          result.creationTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
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
    TransitGatewayMulticastDomain object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'TransitGatewayMulticastDomainResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayMulticastDomain(
      :transitGatewayMulticastDomainId,
      :transitGatewayId,
      :transitGatewayMulticastDomainArn,
      :ownerId,
      :options,
      :state,
      :creationTime,
      :tags
    ) = object;
    if (transitGatewayMulticastDomainId != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayMulticastDomainId'))
        ..add(serializers.serialize(
          transitGatewayMulticastDomainId,
          specifiedType: const FullType(String),
        ));
    }
    if (transitGatewayId != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayId'))
        ..add(serializers.serialize(
          transitGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (transitGatewayMulticastDomainArn != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayMulticastDomainArn'))
        ..add(serializers.serialize(
          transitGatewayMulticastDomainArn,
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
    if (options != null) {
      result$
        ..add(const _i3.XmlElementName('Options'))
        ..add(serializers.serialize(
          options,
          specifiedType: const FullType(TransitGatewayMulticastDomainOptions),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(TransitGatewayMulticastDomainState),
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
