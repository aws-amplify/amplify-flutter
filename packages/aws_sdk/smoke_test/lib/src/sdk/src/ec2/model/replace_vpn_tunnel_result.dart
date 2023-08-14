// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.replace_vpn_tunnel_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'replace_vpn_tunnel_result.g.dart';

abstract class ReplaceVpnTunnelResult
    with _i1.AWSEquatable<ReplaceVpnTunnelResult>
    implements Built<ReplaceVpnTunnelResult, ReplaceVpnTunnelResultBuilder> {
  factory ReplaceVpnTunnelResult({bool? return_}) {
    return_ ??= false;
    return _$ReplaceVpnTunnelResult._(return_: return_);
  }

  factory ReplaceVpnTunnelResult.build(
          [void Function(ReplaceVpnTunnelResultBuilder) updates]) =
      _$ReplaceVpnTunnelResult;

  const ReplaceVpnTunnelResult._();

  /// Constructs a [ReplaceVpnTunnelResult] from a [payload] and [response].
  factory ReplaceVpnTunnelResult.fromResponse(
    ReplaceVpnTunnelResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ReplaceVpnTunnelResult>> serializers =
      [ReplaceVpnTunnelResultEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReplaceVpnTunnelResultBuilder b) {
    b.return_ = false;
  }

  /// Confirmation of replace tunnel operation.
  bool get return_;
  @override
  List<Object?> get props => [return_];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReplaceVpnTunnelResult')
      ..add(
        'return_',
        return_,
      );
    return helper.toString();
  }
}

class ReplaceVpnTunnelResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ReplaceVpnTunnelResult> {
  const ReplaceVpnTunnelResultEc2QuerySerializer()
      : super('ReplaceVpnTunnelResult');

  @override
  Iterable<Type> get types => const [
        ReplaceVpnTunnelResult,
        _$ReplaceVpnTunnelResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReplaceVpnTunnelResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplaceVpnTunnelResultBuilder();
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
    ReplaceVpnTunnelResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ReplaceVpnTunnelResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ReplaceVpnTunnelResult(:return_) = object;
    result$
      ..add(const _i2.XmlElementName('Return'))
      ..add(serializers.serialize(
        return_,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
