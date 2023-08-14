// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_transit_gateway_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_transit_gateway_options.dart';

part 'modify_transit_gateway_request.g.dart';

abstract class ModifyTransitGatewayRequest
    with
        _i1.HttpInput<ModifyTransitGatewayRequest>,
        _i2.AWSEquatable<ModifyTransitGatewayRequest>
    implements
        Built<ModifyTransitGatewayRequest, ModifyTransitGatewayRequestBuilder> {
  factory ModifyTransitGatewayRequest({
    String? transitGatewayId,
    String? description,
    ModifyTransitGatewayOptions? options,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$ModifyTransitGatewayRequest._(
      transitGatewayId: transitGatewayId,
      description: description,
      options: options,
      dryRun: dryRun,
    );
  }

  factory ModifyTransitGatewayRequest.build(
          [void Function(ModifyTransitGatewayRequestBuilder) updates]) =
      _$ModifyTransitGatewayRequest;

  const ModifyTransitGatewayRequest._();

  factory ModifyTransitGatewayRequest.fromRequest(
    ModifyTransitGatewayRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ModifyTransitGatewayRequest>>
      serializers = [ModifyTransitGatewayRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyTransitGatewayRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the transit gateway.
  String? get transitGatewayId;

  /// The description for the transit gateway.
  String? get description;

  /// The options to modify.
  ModifyTransitGatewayOptions? get options;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ModifyTransitGatewayRequest getPayload() => this;
  @override
  List<Object?> get props => [
        transitGatewayId,
        description,
        options,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyTransitGatewayRequest')
      ..add(
        'transitGatewayId',
        transitGatewayId,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'options',
        options,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class ModifyTransitGatewayRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyTransitGatewayRequest> {
  const ModifyTransitGatewayRequestEc2QuerySerializer()
      : super('ModifyTransitGatewayRequest');

  @override
  Iterable<Type> get types => const [
        ModifyTransitGatewayRequest,
        _$ModifyTransitGatewayRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyTransitGatewayRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyTransitGatewayRequestBuilder();
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
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Options':
          result.options.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ModifyTransitGatewayOptions),
          ) as ModifyTransitGatewayOptions));
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
    ModifyTransitGatewayRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyTransitGatewayRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyTransitGatewayRequest(
      :transitGatewayId,
      :description,
      :options,
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
    if (description != null) {
      result$
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (options != null) {
      result$
        ..add(const _i1.XmlElementName('Options'))
        ..add(serializers.serialize(
          options,
          specifiedType: const FullType(ModifyTransitGatewayOptions),
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
