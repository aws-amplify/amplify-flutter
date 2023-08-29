// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_traffic_mirror_filter_network_services_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_filter.dart';

part 'modify_traffic_mirror_filter_network_services_result.g.dart';

abstract class ModifyTrafficMirrorFilterNetworkServicesResult
    with
        _i1.AWSEquatable<ModifyTrafficMirrorFilterNetworkServicesResult>
    implements
        Built<ModifyTrafficMirrorFilterNetworkServicesResult,
            ModifyTrafficMirrorFilterNetworkServicesResultBuilder> {
  factory ModifyTrafficMirrorFilterNetworkServicesResult(
      {TrafficMirrorFilter? trafficMirrorFilter}) {
    return _$ModifyTrafficMirrorFilterNetworkServicesResult._(
        trafficMirrorFilter: trafficMirrorFilter);
  }

  factory ModifyTrafficMirrorFilterNetworkServicesResult.build(
      [void Function(ModifyTrafficMirrorFilterNetworkServicesResultBuilder)
          updates]) = _$ModifyTrafficMirrorFilterNetworkServicesResult;

  const ModifyTrafficMirrorFilterNetworkServicesResult._();

  /// Constructs a [ModifyTrafficMirrorFilterNetworkServicesResult] from a [payload] and [response].
  factory ModifyTrafficMirrorFilterNetworkServicesResult.fromResponse(
    ModifyTrafficMirrorFilterNetworkServicesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<ModifyTrafficMirrorFilterNetworkServicesResult>>
      serializers = [
    ModifyTrafficMirrorFilterNetworkServicesResultEc2QuerySerializer()
  ];

  /// The Traffic Mirror filter that the network service is associated with.
  TrafficMirrorFilter? get trafficMirrorFilter;
  @override
  List<Object?> get props => [trafficMirrorFilter];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ModifyTrafficMirrorFilterNetworkServicesResult')
      ..add(
        'trafficMirrorFilter',
        trafficMirrorFilter,
      );
    return helper.toString();
  }
}

class ModifyTrafficMirrorFilterNetworkServicesResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        ModifyTrafficMirrorFilterNetworkServicesResult> {
  const ModifyTrafficMirrorFilterNetworkServicesResultEc2QuerySerializer()
      : super('ModifyTrafficMirrorFilterNetworkServicesResult');

  @override
  Iterable<Type> get types => const [
        ModifyTrafficMirrorFilterNetworkServicesResult,
        _$ModifyTrafficMirrorFilterNetworkServicesResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyTrafficMirrorFilterNetworkServicesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyTrafficMirrorFilterNetworkServicesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'trafficMirrorFilter':
          result.trafficMirrorFilter.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TrafficMirrorFilter),
          ) as TrafficMirrorFilter));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyTrafficMirrorFilterNetworkServicesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ModifyTrafficMirrorFilterNetworkServicesResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyTrafficMirrorFilterNetworkServicesResult(:trafficMirrorFilter) =
        object;
    if (trafficMirrorFilter != null) {
      result$
        ..add(const _i2.XmlElementName('TrafficMirrorFilter'))
        ..add(serializers.serialize(
          trafficMirrorFilter,
          specifiedType: const FullType(TrafficMirrorFilter),
        ));
    }
    return result$;
  }
}
