// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_client_vpn_endpoint_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'modify_client_vpn_endpoint_result.g.dart';

abstract class ModifyClientVpnEndpointResult
    with
        _i1.AWSEquatable<ModifyClientVpnEndpointResult>
    implements
        Built<ModifyClientVpnEndpointResult,
            ModifyClientVpnEndpointResultBuilder> {
  factory ModifyClientVpnEndpointResult({bool? return_}) {
    return_ ??= false;
    return _$ModifyClientVpnEndpointResult._(return_: return_);
  }

  factory ModifyClientVpnEndpointResult.build(
          [void Function(ModifyClientVpnEndpointResultBuilder) updates]) =
      _$ModifyClientVpnEndpointResult;

  const ModifyClientVpnEndpointResult._();

  /// Constructs a [ModifyClientVpnEndpointResult] from a [payload] and [response].
  factory ModifyClientVpnEndpointResult.fromResponse(
    ModifyClientVpnEndpointResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ModifyClientVpnEndpointResult>>
      serializers = [ModifyClientVpnEndpointResultEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyClientVpnEndpointResultBuilder b) {
    b.return_ = false;
  }

  /// Returns `true` if the request succeeds; otherwise, it returns an error.
  bool get return_;
  @override
  List<Object?> get props => [return_];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyClientVpnEndpointResult')
      ..add(
        'return_',
        return_,
      );
    return helper.toString();
  }
}

class ModifyClientVpnEndpointResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ModifyClientVpnEndpointResult> {
  const ModifyClientVpnEndpointResultEc2QuerySerializer()
      : super('ModifyClientVpnEndpointResult');

  @override
  Iterable<Type> get types => const [
        ModifyClientVpnEndpointResult,
        _$ModifyClientVpnEndpointResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyClientVpnEndpointResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyClientVpnEndpointResultBuilder();
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
    ModifyClientVpnEndpointResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ModifyClientVpnEndpointResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyClientVpnEndpointResult(:return_) = object;
    result$
      ..add(const _i2.XmlElementName('Return'))
      ..add(serializers.serialize(
        return_,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
