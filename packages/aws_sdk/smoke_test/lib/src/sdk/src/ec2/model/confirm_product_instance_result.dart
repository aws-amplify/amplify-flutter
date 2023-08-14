// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.confirm_product_instance_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'confirm_product_instance_result.g.dart';

abstract class ConfirmProductInstanceResult
    with
        _i1.AWSEquatable<ConfirmProductInstanceResult>
    implements
        Built<ConfirmProductInstanceResult,
            ConfirmProductInstanceResultBuilder> {
  factory ConfirmProductInstanceResult({
    String? ownerId,
    bool? return_,
  }) {
    return_ ??= false;
    return _$ConfirmProductInstanceResult._(
      ownerId: ownerId,
      return_: return_,
    );
  }

  factory ConfirmProductInstanceResult.build(
          [void Function(ConfirmProductInstanceResultBuilder) updates]) =
      _$ConfirmProductInstanceResult;

  const ConfirmProductInstanceResult._();

  /// Constructs a [ConfirmProductInstanceResult] from a [payload] and [response].
  factory ConfirmProductInstanceResult.fromResponse(
    ConfirmProductInstanceResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ConfirmProductInstanceResult>>
      serializers = [ConfirmProductInstanceResultEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConfirmProductInstanceResultBuilder b) {
    b.return_ = false;
  }

  /// The Amazon Web Services account ID of the instance owner. This is only present if the product code is attached to the instance.
  String? get ownerId;

  /// The return value of the request. Returns `true` if the specified product code is owned by the requester and associated with the specified instance.
  bool get return_;
  @override
  List<Object?> get props => [
        ownerId,
        return_,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConfirmProductInstanceResult')
      ..add(
        'ownerId',
        ownerId,
      )
      ..add(
        'return_',
        return_,
      );
    return helper.toString();
  }
}

class ConfirmProductInstanceResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ConfirmProductInstanceResult> {
  const ConfirmProductInstanceResultEc2QuerySerializer()
      : super('ConfirmProductInstanceResult');

  @override
  Iterable<Type> get types => const [
        ConfirmProductInstanceResult,
        _$ConfirmProductInstanceResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ConfirmProductInstanceResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConfirmProductInstanceResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'return':
          result.return_ = (serializers.deserialize(
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
    ConfirmProductInstanceResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ConfirmProductInstanceResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ConfirmProductInstanceResult(:ownerId, :return_) = object;
    if (ownerId != null) {
      result$
        ..add(const _i2.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          ownerId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('Return'))
      ..add(serializers.serialize(
        return_,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
