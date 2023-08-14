// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_ipam_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam.dart';

part 'modify_ipam_result.g.dart';

abstract class ModifyIpamResult
    with _i1.AWSEquatable<ModifyIpamResult>
    implements Built<ModifyIpamResult, ModifyIpamResultBuilder> {
  factory ModifyIpamResult({Ipam? ipam}) {
    return _$ModifyIpamResult._(ipam: ipam);
  }

  factory ModifyIpamResult.build(
      [void Function(ModifyIpamResultBuilder) updates]) = _$ModifyIpamResult;

  const ModifyIpamResult._();

  /// Constructs a [ModifyIpamResult] from a [payload] and [response].
  factory ModifyIpamResult.fromResponse(
    ModifyIpamResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ModifyIpamResult>> serializers = [
    ModifyIpamResultEc2QuerySerializer()
  ];

  /// The results of the modification.
  Ipam? get ipam;
  @override
  List<Object?> get props => [ipam];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyIpamResult')
      ..add(
        'ipam',
        ipam,
      );
    return helper.toString();
  }
}

class ModifyIpamResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ModifyIpamResult> {
  const ModifyIpamResultEc2QuerySerializer() : super('ModifyIpamResult');

  @override
  Iterable<Type> get types => const [
        ModifyIpamResult,
        _$ModifyIpamResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyIpamResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyIpamResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ipam':
          result.ipam.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(Ipam),
          ) as Ipam));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyIpamResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ModifyIpamResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyIpamResult(:ipam) = object;
    if (ipam != null) {
      result$
        ..add(const _i2.XmlElementName('Ipam'))
        ..add(serializers.serialize(
          ipam,
          specifiedType: const FullType(Ipam),
        ));
    }
    return result$;
  }
}
