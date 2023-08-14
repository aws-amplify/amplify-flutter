// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.detach_classic_link_vpc_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'detach_classic_link_vpc_result.g.dart';

abstract class DetachClassicLinkVpcResult
    with _i1.AWSEquatable<DetachClassicLinkVpcResult>
    implements
        Built<DetachClassicLinkVpcResult, DetachClassicLinkVpcResultBuilder> {
  factory DetachClassicLinkVpcResult({bool? return_}) {
    return_ ??= false;
    return _$DetachClassicLinkVpcResult._(return_: return_);
  }

  factory DetachClassicLinkVpcResult.build(
          [void Function(DetachClassicLinkVpcResultBuilder) updates]) =
      _$DetachClassicLinkVpcResult;

  const DetachClassicLinkVpcResult._();

  /// Constructs a [DetachClassicLinkVpcResult] from a [payload] and [response].
  factory DetachClassicLinkVpcResult.fromResponse(
    DetachClassicLinkVpcResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DetachClassicLinkVpcResult>>
      serializers = [DetachClassicLinkVpcResultEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DetachClassicLinkVpcResultBuilder b) {
    b.return_ = false;
  }

  /// Returns `true` if the request succeeds; otherwise, it returns an error.
  bool get return_;
  @override
  List<Object?> get props => [return_];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DetachClassicLinkVpcResult')
      ..add(
        'return_',
        return_,
      );
    return helper.toString();
  }
}

class DetachClassicLinkVpcResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DetachClassicLinkVpcResult> {
  const DetachClassicLinkVpcResultEc2QuerySerializer()
      : super('DetachClassicLinkVpcResult');

  @override
  Iterable<Type> get types => const [
        DetachClassicLinkVpcResult,
        _$DetachClassicLinkVpcResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DetachClassicLinkVpcResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DetachClassicLinkVpcResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
    DetachClassicLinkVpcResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DetachClassicLinkVpcResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DetachClassicLinkVpcResult(:return_) = object;
    result$
      ..add(const _i2.XmlElementName('Return'))
      ..add(serializers.serialize(
        return_,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
