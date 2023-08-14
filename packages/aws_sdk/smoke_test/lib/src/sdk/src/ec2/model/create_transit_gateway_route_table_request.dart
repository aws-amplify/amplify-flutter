// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_transit_gateway_route_table_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_transit_gateway_route_table_request.g.dart';

abstract class CreateTransitGatewayRouteTableRequest
    with
        _i1.HttpInput<CreateTransitGatewayRouteTableRequest>,
        _i2.AWSEquatable<CreateTransitGatewayRouteTableRequest>
    implements
        Built<CreateTransitGatewayRouteTableRequest,
            CreateTransitGatewayRouteTableRequestBuilder> {
  factory CreateTransitGatewayRouteTableRequest({
    String? transitGatewayId,
    List<TagSpecification>? tagSpecifications,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$CreateTransitGatewayRouteTableRequest._(
      transitGatewayId: transitGatewayId,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      dryRun: dryRun,
    );
  }

  factory CreateTransitGatewayRouteTableRequest.build(
      [void Function(CreateTransitGatewayRouteTableRequestBuilder)
          updates]) = _$CreateTransitGatewayRouteTableRequest;

  const CreateTransitGatewayRouteTableRequest._();

  factory CreateTransitGatewayRouteTableRequest.fromRequest(
    CreateTransitGatewayRouteTableRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateTransitGatewayRouteTableRequest>>
      serializers = [CreateTransitGatewayRouteTableRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateTransitGatewayRouteTableRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the transit gateway.
  String? get transitGatewayId;

  /// The tags to apply to the transit gateway route table.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  CreateTransitGatewayRouteTableRequest getPayload() => this;
  @override
  List<Object?> get props => [
        transitGatewayId,
        tagSpecifications,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateTransitGatewayRouteTableRequest')
          ..add(
            'transitGatewayId',
            transitGatewayId,
          )
          ..add(
            'tagSpecifications',
            tagSpecifications,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class CreateTransitGatewayRouteTableRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<CreateTransitGatewayRouteTableRequest> {
  const CreateTransitGatewayRouteTableRequestEc2QuerySerializer()
      : super('CreateTransitGatewayRouteTableRequest');

  @override
  Iterable<Type> get types => const [
        CreateTransitGatewayRouteTableRequest,
        _$CreateTransitGatewayRouteTableRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTransitGatewayRouteTableRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTransitGatewayRouteTableRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TransitGatewayId':
          result.transitGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TagSpecifications':
          result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(TagSpecification)],
            ),
          ) as _i3.BuiltList<TagSpecification>));
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateTransitGatewayRouteTableRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateTransitGatewayRouteTableRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateTransitGatewayRouteTableRequest(
      :transitGatewayId,
      :tagSpecifications,
      :dryRun
    ) = object;
    if (transitGatewayId != null) {
      result$
        ..add(const _i1.XmlElementName('TransitGatewayId'))
        ..add(serializers.serialize(
          transitGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (tagSpecifications != null) {
      result$
        ..add(const _i1.XmlElementName('TagSpecifications'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tagSpecifications,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(TagSpecification)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
