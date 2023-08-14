// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_local_gateway_route_table_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route_table_mode.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_local_gateway_route_table_request.g.dart';

abstract class CreateLocalGatewayRouteTableRequest
    with
        _i1.HttpInput<CreateLocalGatewayRouteTableRequest>,
        _i2.AWSEquatable<CreateLocalGatewayRouteTableRequest>
    implements
        Built<CreateLocalGatewayRouteTableRequest,
            CreateLocalGatewayRouteTableRequestBuilder> {
  factory CreateLocalGatewayRouteTableRequest({
    String? localGatewayId,
    LocalGatewayRouteTableMode? mode,
    List<TagSpecification>? tagSpecifications,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$CreateLocalGatewayRouteTableRequest._(
      localGatewayId: localGatewayId,
      mode: mode,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      dryRun: dryRun,
    );
  }

  factory CreateLocalGatewayRouteTableRequest.build(
          [void Function(CreateLocalGatewayRouteTableRequestBuilder) updates]) =
      _$CreateLocalGatewayRouteTableRequest;

  const CreateLocalGatewayRouteTableRequest._();

  factory CreateLocalGatewayRouteTableRequest.fromRequest(
    CreateLocalGatewayRouteTableRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateLocalGatewayRouteTableRequest>>
      serializers = [CreateLocalGatewayRouteTableRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateLocalGatewayRouteTableRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the local gateway.
  String? get localGatewayId;

  /// The mode of the local gateway route table.
  LocalGatewayRouteTableMode? get mode;

  /// The tags assigned to the local gateway route table.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  CreateLocalGatewayRouteTableRequest getPayload() => this;
  @override
  List<Object?> get props => [
        localGatewayId,
        mode,
        tagSpecifications,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateLocalGatewayRouteTableRequest')
          ..add(
            'localGatewayId',
            localGatewayId,
          )
          ..add(
            'mode',
            mode,
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

class CreateLocalGatewayRouteTableRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<CreateLocalGatewayRouteTableRequest> {
  const CreateLocalGatewayRouteTableRequestEc2QuerySerializer()
      : super('CreateLocalGatewayRouteTableRequest');

  @override
  Iterable<Type> get types => const [
        CreateLocalGatewayRouteTableRequest,
        _$CreateLocalGatewayRouteTableRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateLocalGatewayRouteTableRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateLocalGatewayRouteTableRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'LocalGatewayId':
          result.localGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Mode':
          result.mode = (serializers.deserialize(
            value,
            specifiedType: const FullType(LocalGatewayRouteTableMode),
          ) as LocalGatewayRouteTableMode);
        case 'TagSpecification':
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
    CreateLocalGatewayRouteTableRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateLocalGatewayRouteTableRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateLocalGatewayRouteTableRequest(
      :localGatewayId,
      :mode,
      :tagSpecifications,
      :dryRun
    ) = object;
    if (localGatewayId != null) {
      result$
        ..add(const _i1.XmlElementName('LocalGatewayId'))
        ..add(serializers.serialize(
          localGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (mode != null) {
      result$
        ..add(const _i1.XmlElementName('Mode'))
        ..add(serializers.serialize(
          mode,
          specifiedType: const FullType.nullable(LocalGatewayRouteTableMode),
        ));
    }
    if (tagSpecifications != null) {
      result$
        ..add(const _i1.XmlElementName('TagSpecification'))
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
