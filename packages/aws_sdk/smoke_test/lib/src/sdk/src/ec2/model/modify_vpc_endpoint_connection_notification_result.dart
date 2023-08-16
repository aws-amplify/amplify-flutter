// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_vpc_endpoint_connection_notification_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'modify_vpc_endpoint_connection_notification_result.g.dart';

abstract class ModifyVpcEndpointConnectionNotificationResult
    with
        _i1.AWSEquatable<ModifyVpcEndpointConnectionNotificationResult>
    implements
        Built<ModifyVpcEndpointConnectionNotificationResult,
            ModifyVpcEndpointConnectionNotificationResultBuilder> {
  factory ModifyVpcEndpointConnectionNotificationResult({bool? returnValue}) {
    returnValue ??= false;
    return _$ModifyVpcEndpointConnectionNotificationResult._(
        returnValue: returnValue);
  }

  factory ModifyVpcEndpointConnectionNotificationResult.build(
      [void Function(ModifyVpcEndpointConnectionNotificationResultBuilder)
          updates]) = _$ModifyVpcEndpointConnectionNotificationResult;

  const ModifyVpcEndpointConnectionNotificationResult._();

  /// Constructs a [ModifyVpcEndpointConnectionNotificationResult] from a [payload] and [response].
  factory ModifyVpcEndpointConnectionNotificationResult.fromResponse(
    ModifyVpcEndpointConnectionNotificationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<ModifyVpcEndpointConnectionNotificationResult>>
      serializers = [
    ModifyVpcEndpointConnectionNotificationResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyVpcEndpointConnectionNotificationResultBuilder b) {
    b.returnValue = false;
  }

  /// Returns `true` if the request succeeds; otherwise, it returns an error.
  bool get returnValue;
  @override
  List<Object?> get props => [returnValue];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ModifyVpcEndpointConnectionNotificationResult')
      ..add(
        'returnValue',
        returnValue,
      );
    return helper.toString();
  }
}

class ModifyVpcEndpointConnectionNotificationResultEc2QuerySerializer
    extends _i2
    .StructuredSmithySerializer<ModifyVpcEndpointConnectionNotificationResult> {
  const ModifyVpcEndpointConnectionNotificationResultEc2QuerySerializer()
      : super('ModifyVpcEndpointConnectionNotificationResult');

  @override
  Iterable<Type> get types => const [
        ModifyVpcEndpointConnectionNotificationResult,
        _$ModifyVpcEndpointConnectionNotificationResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVpcEndpointConnectionNotificationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVpcEndpointConnectionNotificationResultBuilder();
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
    ModifyVpcEndpointConnectionNotificationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ModifyVpcEndpointConnectionNotificationResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyVpcEndpointConnectionNotificationResult(:returnValue) = object;
    result$
      ..add(const _i2.XmlElementName('Return'))
      ..add(serializers.serialize(
        returnValue,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
