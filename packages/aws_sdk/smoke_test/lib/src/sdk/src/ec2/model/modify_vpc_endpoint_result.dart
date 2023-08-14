// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_vpc_endpoint_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'modify_vpc_endpoint_result.g.dart';

abstract class ModifyVpcEndpointResult
    with _i1.AWSEquatable<ModifyVpcEndpointResult>
    implements Built<ModifyVpcEndpointResult, ModifyVpcEndpointResultBuilder> {
  factory ModifyVpcEndpointResult({bool? return_}) {
    return_ ??= false;
    return _$ModifyVpcEndpointResult._(return_: return_);
  }

  factory ModifyVpcEndpointResult.build(
          [void Function(ModifyVpcEndpointResultBuilder) updates]) =
      _$ModifyVpcEndpointResult;

  const ModifyVpcEndpointResult._();

  /// Constructs a [ModifyVpcEndpointResult] from a [payload] and [response].
  factory ModifyVpcEndpointResult.fromResponse(
    ModifyVpcEndpointResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ModifyVpcEndpointResult>> serializers =
      [ModifyVpcEndpointResultEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyVpcEndpointResultBuilder b) {
    b.return_ = false;
  }

  /// Returns `true` if the request succeeds; otherwise, it returns an error.
  bool get return_;
  @override
  List<Object?> get props => [return_];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyVpcEndpointResult')
      ..add(
        'return_',
        return_,
      );
    return helper.toString();
  }
}

class ModifyVpcEndpointResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ModifyVpcEndpointResult> {
  const ModifyVpcEndpointResultEc2QuerySerializer()
      : super('ModifyVpcEndpointResult');

  @override
  Iterable<Type> get types => const [
        ModifyVpcEndpointResult,
        _$ModifyVpcEndpointResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVpcEndpointResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVpcEndpointResultBuilder();
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
    ModifyVpcEndpointResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ModifyVpcEndpointResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyVpcEndpointResult(:return_) = object;
    result$
      ..add(const _i2.XmlElementName('Return'))
      ..add(serializers.serialize(
        return_,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
