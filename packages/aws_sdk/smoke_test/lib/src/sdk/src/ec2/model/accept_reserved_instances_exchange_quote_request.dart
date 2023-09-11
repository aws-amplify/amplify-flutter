// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.accept_reserved_instances_exchange_quote_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/target_configuration_request.dart';

part 'accept_reserved_instances_exchange_quote_request.g.dart';

/// Contains the parameters for accepting the quote.
abstract class AcceptReservedInstancesExchangeQuoteRequest
    with
        _i1.HttpInput<AcceptReservedInstancesExchangeQuoteRequest>,
        _i2.AWSEquatable<AcceptReservedInstancesExchangeQuoteRequest>
    implements
        Built<AcceptReservedInstancesExchangeQuoteRequest,
            AcceptReservedInstancesExchangeQuoteRequestBuilder> {
  /// Contains the parameters for accepting the quote.
  factory AcceptReservedInstancesExchangeQuoteRequest({
    bool? dryRun,
    List<String>? reservedInstanceIds,
    List<TargetConfigurationRequest>? targetConfigurations,
  }) {
    dryRun ??= false;
    return _$AcceptReservedInstancesExchangeQuoteRequest._(
      dryRun: dryRun,
      reservedInstanceIds: reservedInstanceIds == null
          ? null
          : _i3.BuiltList(reservedInstanceIds),
      targetConfigurations: targetConfigurations == null
          ? null
          : _i3.BuiltList(targetConfigurations),
    );
  }

  /// Contains the parameters for accepting the quote.
  factory AcceptReservedInstancesExchangeQuoteRequest.build(
      [void Function(AcceptReservedInstancesExchangeQuoteRequestBuilder)
          updates]) = _$AcceptReservedInstancesExchangeQuoteRequest;

  const AcceptReservedInstancesExchangeQuoteRequest._();

  factory AcceptReservedInstancesExchangeQuoteRequest.fromRequest(
    AcceptReservedInstancesExchangeQuoteRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<AcceptReservedInstancesExchangeQuoteRequest>>
      serializers = [
    AcceptReservedInstancesExchangeQuoteRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AcceptReservedInstancesExchangeQuoteRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The IDs of the Convertible Reserved Instances to exchange for another Convertible Reserved Instance of the same or higher value.
  _i3.BuiltList<String>? get reservedInstanceIds;

  /// The configuration of the target Convertible Reserved Instance to exchange for your current Convertible Reserved Instances.
  _i3.BuiltList<TargetConfigurationRequest>? get targetConfigurations;
  @override
  AcceptReservedInstancesExchangeQuoteRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        reservedInstanceIds,
        targetConfigurations,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'AcceptReservedInstancesExchangeQuoteRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'reservedInstanceIds',
        reservedInstanceIds,
      )
      ..add(
        'targetConfigurations',
        targetConfigurations,
      );
    return helper.toString();
  }
}

class AcceptReservedInstancesExchangeQuoteRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<AcceptReservedInstancesExchangeQuoteRequest> {
  const AcceptReservedInstancesExchangeQuoteRequestEc2QuerySerializer()
      : super('AcceptReservedInstancesExchangeQuoteRequest');

  @override
  Iterable<Type> get types => const [
        AcceptReservedInstancesExchangeQuoteRequest,
        _$AcceptReservedInstancesExchangeQuoteRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AcceptReservedInstancesExchangeQuoteRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AcceptReservedInstancesExchangeQuoteRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'ReservedInstanceId':
          result.reservedInstanceIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'ReservedInstanceId',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'TargetConfiguration':
          result.targetConfigurations.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'TargetConfigurationRequest',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(TargetConfigurationRequest)],
            ),
          ) as _i3.BuiltList<TargetConfigurationRequest>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AcceptReservedInstancesExchangeQuoteRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'AcceptReservedInstancesExchangeQuoteRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AcceptReservedInstancesExchangeQuoteRequest(
      :dryRun,
      :reservedInstanceIds,
      :targetConfigurations
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (reservedInstanceIds != null) {
      result$
        ..add(const _i1.XmlElementName('ReservedInstanceId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'ReservedInstanceId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          reservedInstanceIds,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (targetConfigurations != null) {
      result$
        ..add(const _i1.XmlElementName('TargetConfiguration'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'TargetConfigurationRequest',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          targetConfigurations,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(TargetConfigurationRequest)],
          ),
        ));
    }
    return result$;
  }
}
