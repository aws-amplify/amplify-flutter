// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_vpc_tenancy_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'modify_vpc_tenancy_result.g.dart';

abstract class ModifyVpcTenancyResult
    with _i1.AWSEquatable<ModifyVpcTenancyResult>
    implements Built<ModifyVpcTenancyResult, ModifyVpcTenancyResultBuilder> {
  factory ModifyVpcTenancyResult({bool? returnValue}) {
    returnValue ??= false;
    return _$ModifyVpcTenancyResult._(returnValue: returnValue);
  }

  factory ModifyVpcTenancyResult.build(
          [void Function(ModifyVpcTenancyResultBuilder) updates]) =
      _$ModifyVpcTenancyResult;

  const ModifyVpcTenancyResult._();

  /// Constructs a [ModifyVpcTenancyResult] from a [payload] and [response].
  factory ModifyVpcTenancyResult.fromResponse(
    ModifyVpcTenancyResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ModifyVpcTenancyResult>> serializers =
      [ModifyVpcTenancyResultEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyVpcTenancyResultBuilder b) {
    b.returnValue = false;
  }

  /// Returns `true` if the request succeeds; otherwise, returns an error.
  bool get returnValue;
  @override
  List<Object?> get props => [returnValue];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyVpcTenancyResult')
      ..add(
        'returnValue',
        returnValue,
      );
    return helper.toString();
  }
}

class ModifyVpcTenancyResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ModifyVpcTenancyResult> {
  const ModifyVpcTenancyResultEc2QuerySerializer()
      : super('ModifyVpcTenancyResult');

  @override
  Iterable<Type> get types => const [
        ModifyVpcTenancyResult,
        _$ModifyVpcTenancyResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVpcTenancyResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVpcTenancyResultBuilder();
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
          result.returnValue = (serializers.deserialize(
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
    ModifyVpcTenancyResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ModifyVpcTenancyResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyVpcTenancyResult(:returnValue) = object;
    result$
      ..add(const _i2.XmlElementName('Return'))
      ..add(serializers.serialize(
        returnValue,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
