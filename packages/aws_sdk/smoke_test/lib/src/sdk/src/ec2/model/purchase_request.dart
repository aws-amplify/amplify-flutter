// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.purchase_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'purchase_request.g.dart';

/// Describes a request to purchase Scheduled Instances.
abstract class PurchaseRequest
    with _i1.AWSEquatable<PurchaseRequest>
    implements Built<PurchaseRequest, PurchaseRequestBuilder> {
  /// Describes a request to purchase Scheduled Instances.
  factory PurchaseRequest({
    int? instanceCount,
    String? purchaseToken,
  }) {
    instanceCount ??= 0;
    return _$PurchaseRequest._(
      instanceCount: instanceCount,
      purchaseToken: purchaseToken,
    );
  }

  /// Describes a request to purchase Scheduled Instances.
  factory PurchaseRequest.build(
      [void Function(PurchaseRequestBuilder) updates]) = _$PurchaseRequest;

  const PurchaseRequest._();

  static const List<_i2.SmithySerializer<PurchaseRequest>> serializers = [
    PurchaseRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PurchaseRequestBuilder b) {
    b.instanceCount = 0;
  }

  /// The number of instances.
  int get instanceCount;

  /// The purchase token.
  String? get purchaseToken;
  @override
  List<Object?> get props => [
        instanceCount,
        purchaseToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PurchaseRequest')
      ..add(
        'instanceCount',
        instanceCount,
      )
      ..add(
        'purchaseToken',
        purchaseToken,
      );
    return helper.toString();
  }
}

class PurchaseRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<PurchaseRequest> {
  const PurchaseRequestEc2QuerySerializer() : super('PurchaseRequest');

  @override
  Iterable<Type> get types => const [
        PurchaseRequest,
        _$PurchaseRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PurchaseRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PurchaseRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'InstanceCount':
          result.instanceCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'PurchaseToken':
          result.purchaseToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PurchaseRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'PurchaseRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final PurchaseRequest(:instanceCount, :purchaseToken) = object;
    result$
      ..add(const _i2.XmlElementName('InstanceCount'))
      ..add(serializers.serialize(
        instanceCount,
        specifiedType: const FullType(int),
      ));
    if (purchaseToken != null) {
      result$
        ..add(const _i2.XmlElementName('PurchaseToken'))
        ..add(serializers.serialize(
          purchaseToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
