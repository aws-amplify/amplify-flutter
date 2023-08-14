// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.network_interface_count_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'network_interface_count_request.g.dart';

/// The minimum and maximum number of network interfaces.
abstract class NetworkInterfaceCountRequest
    with
        _i1.AWSEquatable<NetworkInterfaceCountRequest>
    implements
        Built<NetworkInterfaceCountRequest,
            NetworkInterfaceCountRequestBuilder> {
  /// The minimum and maximum number of network interfaces.
  factory NetworkInterfaceCountRequest({
    int? min,
    int? max,
  }) {
    min ??= 0;
    max ??= 0;
    return _$NetworkInterfaceCountRequest._(
      min: min,
      max: max,
    );
  }

  /// The minimum and maximum number of network interfaces.
  factory NetworkInterfaceCountRequest.build(
          [void Function(NetworkInterfaceCountRequestBuilder) updates]) =
      _$NetworkInterfaceCountRequest;

  const NetworkInterfaceCountRequest._();

  static const List<_i2.SmithySerializer<NetworkInterfaceCountRequest>>
      serializers = [NetworkInterfaceCountRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NetworkInterfaceCountRequestBuilder b) {
    b
      ..min = 0
      ..max = 0;
  }

  /// The minimum number of network interfaces. To specify no minimum limit, omit this parameter.
  int get min;

  /// The maximum number of network interfaces. To specify no maximum limit, omit this parameter.
  int get max;
  @override
  List<Object?> get props => [
        min,
        max,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NetworkInterfaceCountRequest')
      ..add(
        'min',
        min,
      )
      ..add(
        'max',
        max,
      );
    return helper.toString();
  }
}

class NetworkInterfaceCountRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<NetworkInterfaceCountRequest> {
  const NetworkInterfaceCountRequestEc2QuerySerializer()
      : super('NetworkInterfaceCountRequest');

  @override
  Iterable<Type> get types => const [
        NetworkInterfaceCountRequest,
        _$NetworkInterfaceCountRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NetworkInterfaceCountRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkInterfaceCountRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Min':
          result.min = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'Max':
          result.max = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    NetworkInterfaceCountRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'NetworkInterfaceCountRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final NetworkInterfaceCountRequest(:min, :max) = object;
    result$
      ..add(const _i2.XmlElementName('Min'))
      ..add(serializers.serialize(
        min,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i2.XmlElementName('Max'))
      ..add(serializers.serialize(
        max,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
