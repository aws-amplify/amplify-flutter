// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.disable_vpc_classic_link_dns_support_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'disable_vpc_classic_link_dns_support_result.g.dart';

abstract class DisableVpcClassicLinkDnsSupportResult
    with
        _i1.AWSEquatable<DisableVpcClassicLinkDnsSupportResult>
    implements
        Built<DisableVpcClassicLinkDnsSupportResult,
            DisableVpcClassicLinkDnsSupportResultBuilder> {
  factory DisableVpcClassicLinkDnsSupportResult({bool? return_}) {
    return_ ??= false;
    return _$DisableVpcClassicLinkDnsSupportResult._(return_: return_);
  }

  factory DisableVpcClassicLinkDnsSupportResult.build(
      [void Function(DisableVpcClassicLinkDnsSupportResultBuilder)
          updates]) = _$DisableVpcClassicLinkDnsSupportResult;

  const DisableVpcClassicLinkDnsSupportResult._();

  /// Constructs a [DisableVpcClassicLinkDnsSupportResult] from a [payload] and [response].
  factory DisableVpcClassicLinkDnsSupportResult.fromResponse(
    DisableVpcClassicLinkDnsSupportResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DisableVpcClassicLinkDnsSupportResult>>
      serializers = [DisableVpcClassicLinkDnsSupportResultEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DisableVpcClassicLinkDnsSupportResultBuilder b) {
    b.return_ = false;
  }

  /// Returns `true` if the request succeeds; otherwise, it returns an error.
  bool get return_;
  @override
  List<Object?> get props => [return_];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DisableVpcClassicLinkDnsSupportResult')
          ..add(
            'return_',
            return_,
          );
    return helper.toString();
  }
}

class DisableVpcClassicLinkDnsSupportResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<DisableVpcClassicLinkDnsSupportResult> {
  const DisableVpcClassicLinkDnsSupportResultEc2QuerySerializer()
      : super('DisableVpcClassicLinkDnsSupportResult');

  @override
  Iterable<Type> get types => const [
        DisableVpcClassicLinkDnsSupportResult,
        _$DisableVpcClassicLinkDnsSupportResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisableVpcClassicLinkDnsSupportResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisableVpcClassicLinkDnsSupportResultBuilder();
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
    DisableVpcClassicLinkDnsSupportResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DisableVpcClassicLinkDnsSupportResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DisableVpcClassicLinkDnsSupportResult(:return_) = object;
    result$
      ..add(const _i2.XmlElementName('Return'))
      ..add(serializers.serialize(
        return_,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
