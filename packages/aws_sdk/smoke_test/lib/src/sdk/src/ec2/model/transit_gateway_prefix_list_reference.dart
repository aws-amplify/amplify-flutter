// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_prefix_list_reference; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_prefix_list_attachment.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_prefix_list_reference_state.dart';

part 'transit_gateway_prefix_list_reference.g.dart';

/// Describes a prefix list reference.
abstract class TransitGatewayPrefixListReference
    with
        _i1.AWSEquatable<TransitGatewayPrefixListReference>
    implements
        Built<TransitGatewayPrefixListReference,
            TransitGatewayPrefixListReferenceBuilder> {
  /// Describes a prefix list reference.
  factory TransitGatewayPrefixListReference({
    String? transitGatewayRouteTableId,
    String? prefixListId,
    String? prefixListOwnerId,
    TransitGatewayPrefixListReferenceState? state,
    bool? blackhole,
    TransitGatewayPrefixListAttachment? transitGatewayAttachment,
  }) {
    blackhole ??= false;
    return _$TransitGatewayPrefixListReference._(
      transitGatewayRouteTableId: transitGatewayRouteTableId,
      prefixListId: prefixListId,
      prefixListOwnerId: prefixListOwnerId,
      state: state,
      blackhole: blackhole,
      transitGatewayAttachment: transitGatewayAttachment,
    );
  }

  /// Describes a prefix list reference.
  factory TransitGatewayPrefixListReference.build(
          [void Function(TransitGatewayPrefixListReferenceBuilder) updates]) =
      _$TransitGatewayPrefixListReference;

  const TransitGatewayPrefixListReference._();

  static const List<_i2.SmithySerializer<TransitGatewayPrefixListReference>>
      serializers = [TransitGatewayPrefixListReferenceEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayPrefixListReferenceBuilder b) {
    b.blackhole = false;
  }

  /// The ID of the transit gateway route table.
  String? get transitGatewayRouteTableId;

  /// The ID of the prefix list.
  String? get prefixListId;

  /// The ID of the prefix list owner.
  String? get prefixListOwnerId;

  /// The state of the prefix list reference.
  TransitGatewayPrefixListReferenceState? get state;

  /// Indicates whether traffic that matches this route is dropped.
  bool get blackhole;

  /// Information about the transit gateway attachment.
  TransitGatewayPrefixListAttachment? get transitGatewayAttachment;
  @override
  List<Object?> get props => [
        transitGatewayRouteTableId,
        prefixListId,
        prefixListOwnerId,
        state,
        blackhole,
        transitGatewayAttachment,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TransitGatewayPrefixListReference')
          ..add(
            'transitGatewayRouteTableId',
            transitGatewayRouteTableId,
          )
          ..add(
            'prefixListId',
            prefixListId,
          )
          ..add(
            'prefixListOwnerId',
            prefixListOwnerId,
          )
          ..add(
            'state',
            state,
          )
          ..add(
            'blackhole',
            blackhole,
          )
          ..add(
            'transitGatewayAttachment',
            transitGatewayAttachment,
          );
    return helper.toString();
  }
}

class TransitGatewayPrefixListReferenceEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<TransitGatewayPrefixListReference> {
  const TransitGatewayPrefixListReferenceEc2QuerySerializer()
      : super('TransitGatewayPrefixListReference');

  @override
  Iterable<Type> get types => const [
        TransitGatewayPrefixListReference,
        _$TransitGatewayPrefixListReference,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayPrefixListReference deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayPrefixListReferenceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayRouteTableId':
          result.transitGatewayRouteTableId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'prefixListId':
          result.prefixListId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'prefixListOwnerId':
          result.prefixListOwnerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType:
                const FullType(TransitGatewayPrefixListReferenceState),
          ) as TransitGatewayPrefixListReferenceState);
        case 'blackhole':
          result.blackhole = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'transitGatewayAttachment':
          result.transitGatewayAttachment.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGatewayPrefixListAttachment),
          ) as TransitGatewayPrefixListAttachment));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TransitGatewayPrefixListReference object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'TransitGatewayPrefixListReferenceResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayPrefixListReference(
      :transitGatewayRouteTableId,
      :prefixListId,
      :prefixListOwnerId,
      :state,
      :blackhole,
      :transitGatewayAttachment
    ) = object;
    if (transitGatewayRouteTableId != null) {
      result$
        ..add(const _i2.XmlElementName('TransitGatewayRouteTableId'))
        ..add(serializers.serialize(
          transitGatewayRouteTableId,
          specifiedType: const FullType(String),
        ));
    }
    if (prefixListId != null) {
      result$
        ..add(const _i2.XmlElementName('PrefixListId'))
        ..add(serializers.serialize(
          prefixListId,
          specifiedType: const FullType(String),
        ));
    }
    if (prefixListOwnerId != null) {
      result$
        ..add(const _i2.XmlElementName('PrefixListOwnerId'))
        ..add(serializers.serialize(
          prefixListOwnerId,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i2.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(TransitGatewayPrefixListReferenceState),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('Blackhole'))
      ..add(serializers.serialize(
        blackhole,
        specifiedType: const FullType(bool),
      ));
    if (transitGatewayAttachment != null) {
      result$
        ..add(const _i2.XmlElementName('TransitGatewayAttachment'))
        ..add(serializers.serialize(
          transitGatewayAttachment,
          specifiedType: const FullType(TransitGatewayPrefixListAttachment),
        ));
    }
    return result$;
  }
}
