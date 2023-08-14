// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.release_ipam_pool_allocation_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'release_ipam_pool_allocation_result.g.dart';

abstract class ReleaseIpamPoolAllocationResult
    with
        _i1.AWSEquatable<ReleaseIpamPoolAllocationResult>
    implements
        Built<ReleaseIpamPoolAllocationResult,
            ReleaseIpamPoolAllocationResultBuilder> {
  factory ReleaseIpamPoolAllocationResult({bool? success}) {
    success ??= false;
    return _$ReleaseIpamPoolAllocationResult._(success: success);
  }

  factory ReleaseIpamPoolAllocationResult.build(
          [void Function(ReleaseIpamPoolAllocationResultBuilder) updates]) =
      _$ReleaseIpamPoolAllocationResult;

  const ReleaseIpamPoolAllocationResult._();

  /// Constructs a [ReleaseIpamPoolAllocationResult] from a [payload] and [response].
  factory ReleaseIpamPoolAllocationResult.fromResponse(
    ReleaseIpamPoolAllocationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ReleaseIpamPoolAllocationResult>>
      serializers = [ReleaseIpamPoolAllocationResultEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReleaseIpamPoolAllocationResultBuilder b) {
    b.success = false;
  }

  /// Indicates if the release was successful.
  bool get success;
  @override
  List<Object?> get props => [success];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ReleaseIpamPoolAllocationResult')
          ..add(
            'success',
            success,
          );
    return helper.toString();
  }
}

class ReleaseIpamPoolAllocationResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ReleaseIpamPoolAllocationResult> {
  const ReleaseIpamPoolAllocationResultEc2QuerySerializer()
      : super('ReleaseIpamPoolAllocationResult');

  @override
  Iterable<Type> get types => const [
        ReleaseIpamPoolAllocationResult,
        _$ReleaseIpamPoolAllocationResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReleaseIpamPoolAllocationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReleaseIpamPoolAllocationResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'success':
          result.success = (serializers.deserialize(
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
    ReleaseIpamPoolAllocationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ReleaseIpamPoolAllocationResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ReleaseIpamPoolAllocationResult(:success) = object;
    result$
      ..add(const _i2.XmlElementName('Success'))
      ..add(serializers.serialize(
        success,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
