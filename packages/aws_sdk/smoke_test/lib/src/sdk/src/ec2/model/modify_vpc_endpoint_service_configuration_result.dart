// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_vpc_endpoint_service_configuration_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'modify_vpc_endpoint_service_configuration_result.g.dart';

abstract class ModifyVpcEndpointServiceConfigurationResult
    with
        _i1.AWSEquatable<ModifyVpcEndpointServiceConfigurationResult>
    implements
        Built<ModifyVpcEndpointServiceConfigurationResult,
            ModifyVpcEndpointServiceConfigurationResultBuilder> {
  factory ModifyVpcEndpointServiceConfigurationResult({bool? return_}) {
    return_ ??= false;
    return _$ModifyVpcEndpointServiceConfigurationResult._(return_: return_);
  }

  factory ModifyVpcEndpointServiceConfigurationResult.build(
      [void Function(ModifyVpcEndpointServiceConfigurationResultBuilder)
          updates]) = _$ModifyVpcEndpointServiceConfigurationResult;

  const ModifyVpcEndpointServiceConfigurationResult._();

  /// Constructs a [ModifyVpcEndpointServiceConfigurationResult] from a [payload] and [response].
  factory ModifyVpcEndpointServiceConfigurationResult.fromResponse(
    ModifyVpcEndpointServiceConfigurationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<ModifyVpcEndpointServiceConfigurationResult>>
      serializers = [
    ModifyVpcEndpointServiceConfigurationResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyVpcEndpointServiceConfigurationResultBuilder b) {
    b.return_ = false;
  }

  /// Returns `true` if the request succeeds; otherwise, it returns an error.
  bool get return_;
  @override
  List<Object?> get props => [return_];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ModifyVpcEndpointServiceConfigurationResult')
      ..add(
        'return_',
        return_,
      );
    return helper.toString();
  }
}

class ModifyVpcEndpointServiceConfigurationResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<ModifyVpcEndpointServiceConfigurationResult> {
  const ModifyVpcEndpointServiceConfigurationResultEc2QuerySerializer()
      : super('ModifyVpcEndpointServiceConfigurationResult');

  @override
  Iterable<Type> get types => const [
        ModifyVpcEndpointServiceConfigurationResult,
        _$ModifyVpcEndpointServiceConfigurationResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVpcEndpointServiceConfigurationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVpcEndpointServiceConfigurationResultBuilder();
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
    ModifyVpcEndpointServiceConfigurationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ModifyVpcEndpointServiceConfigurationResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyVpcEndpointServiceConfigurationResult(:return_) = object;
    result$
      ..add(const _i2.XmlElementName('Return'))
      ..add(serializers.serialize(
        return_,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
