// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.confirm_product_instance_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'confirm_product_instance_request.g.dart';

abstract class ConfirmProductInstanceRequest
    with
        _i1.HttpInput<ConfirmProductInstanceRequest>,
        _i2.AWSEquatable<ConfirmProductInstanceRequest>
    implements
        Built<ConfirmProductInstanceRequest,
            ConfirmProductInstanceRequestBuilder> {
  factory ConfirmProductInstanceRequest({
    String? instanceId,
    String? productCode,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$ConfirmProductInstanceRequest._(
      instanceId: instanceId,
      productCode: productCode,
      dryRun: dryRun,
    );
  }

  factory ConfirmProductInstanceRequest.build(
          [void Function(ConfirmProductInstanceRequestBuilder) updates]) =
      _$ConfirmProductInstanceRequest;

  const ConfirmProductInstanceRequest._();

  factory ConfirmProductInstanceRequest.fromRequest(
    ConfirmProductInstanceRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ConfirmProductInstanceRequest>>
      serializers = [ConfirmProductInstanceRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConfirmProductInstanceRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the instance.
  String? get instanceId;

  /// The product code. This must be a product code that you own.
  String? get productCode;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ConfirmProductInstanceRequest getPayload() => this;
  @override
  List<Object?> get props => [
        instanceId,
        productCode,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConfirmProductInstanceRequest')
      ..add(
        'instanceId',
        instanceId,
      )
      ..add(
        'productCode',
        productCode,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class ConfirmProductInstanceRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ConfirmProductInstanceRequest> {
  const ConfirmProductInstanceRequestEc2QuerySerializer()
      : super('ConfirmProductInstanceRequest');

  @override
  Iterable<Type> get types => const [
        ConfirmProductInstanceRequest,
        _$ConfirmProductInstanceRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ConfirmProductInstanceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConfirmProductInstanceRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'InstanceId':
          result.instanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ProductCode':
          result.productCode = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'dryRun':
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
    ConfirmProductInstanceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ConfirmProductInstanceRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ConfirmProductInstanceRequest(:instanceId, :productCode, :dryRun) =
        object;
    if (instanceId != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (productCode != null) {
      result$
        ..add(const _i1.XmlElementName('ProductCode'))
        ..add(serializers.serialize(
          productCode,
          specifiedType: const FullType(String),
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
