// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_transit_gateway_policy_table_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_transit_gateway_policy_table_request.g.dart';

abstract class CreateTransitGatewayPolicyTableRequest
    with
        _i1.HttpInput<CreateTransitGatewayPolicyTableRequest>,
        _i2.AWSEquatable<CreateTransitGatewayPolicyTableRequest>
    implements
        Built<CreateTransitGatewayPolicyTableRequest,
            CreateTransitGatewayPolicyTableRequestBuilder> {
  factory CreateTransitGatewayPolicyTableRequest({
    String? transitGatewayId,
    List<TagSpecification>? tagSpecifications,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$CreateTransitGatewayPolicyTableRequest._(
      transitGatewayId: transitGatewayId,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      dryRun: dryRun,
    );
  }

  factory CreateTransitGatewayPolicyTableRequest.build(
      [void Function(CreateTransitGatewayPolicyTableRequestBuilder)
          updates]) = _$CreateTransitGatewayPolicyTableRequest;

  const CreateTransitGatewayPolicyTableRequest._();

  factory CreateTransitGatewayPolicyTableRequest.fromRequest(
    CreateTransitGatewayPolicyTableRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<CreateTransitGatewayPolicyTableRequest>>
      serializers = [
    CreateTransitGatewayPolicyTableRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateTransitGatewayPolicyTableRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the transit gateway used for the policy table.
  String? get transitGatewayId;

  /// The tags specification for the transit gateway policy table created during the request.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  CreateTransitGatewayPolicyTableRequest getPayload() => this;
  @override
  List<Object?> get props => [
        transitGatewayId,
        tagSpecifications,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateTransitGatewayPolicyTableRequest')
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

class CreateTransitGatewayPolicyTableRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<CreateTransitGatewayPolicyTableRequest> {
  const CreateTransitGatewayPolicyTableRequestEc2QuerySerializer()
      : super('CreateTransitGatewayPolicyTableRequest');

  @override
  Iterable<Type> get types => const [
        CreateTransitGatewayPolicyTableRequest,
        _$CreateTransitGatewayPolicyTableRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTransitGatewayPolicyTableRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTransitGatewayPolicyTableRequestBuilder();
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
    CreateTransitGatewayPolicyTableRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateTransitGatewayPolicyTableRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateTransitGatewayPolicyTableRequest(
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
          specifiedType: const FullType(
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
