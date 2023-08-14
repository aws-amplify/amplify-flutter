// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_transit_gateway_route_table_announcement_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table_announcement.dart';

part 'create_transit_gateway_route_table_announcement_result.g.dart';

abstract class CreateTransitGatewayRouteTableAnnouncementResult
    with
        _i1.AWSEquatable<CreateTransitGatewayRouteTableAnnouncementResult>
    implements
        Built<CreateTransitGatewayRouteTableAnnouncementResult,
            CreateTransitGatewayRouteTableAnnouncementResultBuilder> {
  factory CreateTransitGatewayRouteTableAnnouncementResult(
      {TransitGatewayRouteTableAnnouncement?
          transitGatewayRouteTableAnnouncement}) {
    return _$CreateTransitGatewayRouteTableAnnouncementResult._(
        transitGatewayRouteTableAnnouncement:
            transitGatewayRouteTableAnnouncement);
  }

  factory CreateTransitGatewayRouteTableAnnouncementResult.build(
      [void Function(CreateTransitGatewayRouteTableAnnouncementResultBuilder)
          updates]) = _$CreateTransitGatewayRouteTableAnnouncementResult;

  const CreateTransitGatewayRouteTableAnnouncementResult._();

  /// Constructs a [CreateTransitGatewayRouteTableAnnouncementResult] from a [payload] and [response].
  factory CreateTransitGatewayRouteTableAnnouncementResult.fromResponse(
    CreateTransitGatewayRouteTableAnnouncementResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
      _i2.SmithySerializer<
          CreateTransitGatewayRouteTableAnnouncementResult>> serializers = [
    CreateTransitGatewayRouteTableAnnouncementResultEc2QuerySerializer()
  ];

  /// Provides details about the transit gateway route table announcement.
  TransitGatewayRouteTableAnnouncement?
      get transitGatewayRouteTableAnnouncement;
  @override
  List<Object?> get props => [transitGatewayRouteTableAnnouncement];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'CreateTransitGatewayRouteTableAnnouncementResult')
      ..add(
        'transitGatewayRouteTableAnnouncement',
        transitGatewayRouteTableAnnouncement,
      );
    return helper.toString();
  }
}

class CreateTransitGatewayRouteTableAnnouncementResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        CreateTransitGatewayRouteTableAnnouncementResult> {
  const CreateTransitGatewayRouteTableAnnouncementResultEc2QuerySerializer()
      : super('CreateTransitGatewayRouteTableAnnouncementResult');

  @override
  Iterable<Type> get types => const [
        CreateTransitGatewayRouteTableAnnouncementResult,
        _$CreateTransitGatewayRouteTableAnnouncementResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTransitGatewayRouteTableAnnouncementResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTransitGatewayRouteTableAnnouncementResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayRouteTableAnnouncement':
          result.transitGatewayRouteTableAnnouncement
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGatewayRouteTableAnnouncement),
          ) as TransitGatewayRouteTableAnnouncement));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateTransitGatewayRouteTableAnnouncementResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateTransitGatewayRouteTableAnnouncementResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateTransitGatewayRouteTableAnnouncementResult(
      :transitGatewayRouteTableAnnouncement
    ) = object;
    if (transitGatewayRouteTableAnnouncement != null) {
      result$
        ..add(const _i2.XmlElementName('TransitGatewayRouteTableAnnouncement'))
        ..add(serializers.serialize(
          transitGatewayRouteTableAnnouncement,
          specifiedType: const FullType(TransitGatewayRouteTableAnnouncement),
        ));
    }
    return result$;
  }
}
