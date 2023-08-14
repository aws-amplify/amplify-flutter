// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_connect; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_connect_options.dart';

part 'transit_gateway_connect.g.dart';

/// Describes a transit gateway Connect attachment.
abstract class TransitGatewayConnect
    with _i1.AWSEquatable<TransitGatewayConnect>
    implements Built<TransitGatewayConnect, TransitGatewayConnectBuilder> {
  /// Describes a transit gateway Connect attachment.
  factory TransitGatewayConnect({
    String? transitGatewayAttachmentId,
    String? transportTransitGatewayAttachmentId,
    String? transitGatewayId,
    TransitGatewayAttachmentState? state,
    DateTime? creationTime,
    TransitGatewayConnectOptions? options,
    List<Tag>? tags,
  }) {
    return _$TransitGatewayConnect._(
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      transportTransitGatewayAttachmentId: transportTransitGatewayAttachmentId,
      transitGatewayId: transitGatewayId,
      state: state,
      creationTime: creationTime,
      options: options,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Describes a transit gateway Connect attachment.
  factory TransitGatewayConnect.build(
          [void Function(TransitGatewayConnectBuilder) updates]) =
      _$TransitGatewayConnect;

  const TransitGatewayConnect._();

  static const List<_i3.SmithySerializer<TransitGatewayConnect>> serializers = [
    TransitGatewayConnectEc2QuerySerializer()
  ];

  /// The ID of the Connect attachment.
  String? get transitGatewayAttachmentId;

  /// The ID of the attachment from which the Connect attachment was created.
  String? get transportTransitGatewayAttachmentId;

  /// The ID of the transit gateway.
  String? get transitGatewayId;

  /// The state of the attachment.
  TransitGatewayAttachmentState? get state;

  /// The creation time.
  DateTime? get creationTime;

  /// The Connect attachment options.
  TransitGatewayConnectOptions? get options;

  /// The tags for the attachment.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        transitGatewayAttachmentId,
        transportTransitGatewayAttachmentId,
        transitGatewayId,
        state,
        creationTime,
        options,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransitGatewayConnect')
      ..add(
        'transitGatewayAttachmentId',
        transitGatewayAttachmentId,
      )
      ..add(
        'transportTransitGatewayAttachmentId',
        transportTransitGatewayAttachmentId,
      )
      ..add(
        'transitGatewayId',
        transitGatewayId,
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

class TransitGatewayConnectEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<TransitGatewayConnect> {
  const TransitGatewayConnectEc2QuerySerializer()
      : super('TransitGatewayConnect');

  @override
  Iterable<Type> get types => const [
        TransitGatewayConnect,
        _$TransitGatewayConnect,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayConnect deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayConnectBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayAttachmentId':
          result.transitGatewayAttachmentId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'transportTransitGatewayAttachmentId':
          result.transportTransitGatewayAttachmentId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'transitGatewayId':
          result.transitGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGatewayAttachmentState),
          ) as TransitGatewayAttachmentState);
        case 'creationTime':
          result.creationTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'options':
          result.options.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGatewayConnectOptions),
          ) as TransitGatewayConnectOptions));
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
    TransitGatewayConnect object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'TransitGatewayConnectResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayConnect(
      :transitGatewayAttachmentId,
      :transportTransitGatewayAttachmentId,
      :transitGatewayId,
      :state,
      :creationTime,
      :options,
      :tags
    ) = object;
    if (transitGatewayAttachmentId != null) {
      result$
        ..add(const _i3.XmlElementName('TransitGatewayAttachmentId'))
        ..add(serializers.serialize(
          transitGatewayAttachmentId,
          specifiedType: const FullType(String),
        ));
    }
    if (transportTransitGatewayAttachmentId != null) {
      result$
        ..add(const _i3.XmlElementName('TransportTransitGatewayAttachmentId'))
        ..add(serializers.serialize(
          transportTransitGatewayAttachmentId,
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
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType.nullable(TransitGatewayAttachmentState),
        ));
    }
    if (creationTime != null) {
      result$
        ..add(const _i3.XmlElementName('CreationTime'))
        ..add(serializers.serialize(
          creationTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (options != null) {
      result$
        ..add(const _i3.XmlElementName('Options'))
        ..add(serializers.serialize(
          options,
          specifiedType: const FullType(TransitGatewayConnectOptions),
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
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
