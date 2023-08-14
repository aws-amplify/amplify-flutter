// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.host_properties; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'host_properties.g.dart';

/// Describes the properties of a Dedicated Host.
abstract class HostProperties
    with _i1.AWSEquatable<HostProperties>
    implements Built<HostProperties, HostPropertiesBuilder> {
  /// Describes the properties of a Dedicated Host.
  factory HostProperties({
    int? cores,
    String? instanceType,
    String? instanceFamily,
    int? sockets,
    int? totalVCpus,
  }) {
    cores ??= 0;
    sockets ??= 0;
    totalVCpus ??= 0;
    return _$HostProperties._(
      cores: cores,
      instanceType: instanceType,
      instanceFamily: instanceFamily,
      sockets: sockets,
      totalVCpus: totalVCpus,
    );
  }

  /// Describes the properties of a Dedicated Host.
  factory HostProperties.build([void Function(HostPropertiesBuilder) updates]) =
      _$HostProperties;

  const HostProperties._();

  static const List<_i2.SmithySerializer<HostProperties>> serializers = [
    HostPropertiesEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HostPropertiesBuilder b) {
    b
      ..cores = 0
      ..sockets = 0
      ..totalVCpus = 0;
  }

  /// The number of cores on the Dedicated Host.
  int get cores;

  /// The instance type supported by the Dedicated Host. For example, `m5.large`. If the host supports multiple instance types, no **instanceType** is returned.
  String? get instanceType;

  /// The instance family supported by the Dedicated Host. For example, `m5`.
  String? get instanceFamily;

  /// The number of sockets on the Dedicated Host.
  int get sockets;

  /// The total number of vCPUs on the Dedicated Host.
  int get totalVCpus;
  @override
  List<Object?> get props => [
        cores,
        instanceType,
        instanceFamily,
        sockets,
        totalVCpus,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('HostProperties')
      ..add(
        'cores',
        cores,
      )
      ..add(
        'instanceType',
        instanceType,
      )
      ..add(
        'instanceFamily',
        instanceFamily,
      )
      ..add(
        'sockets',
        sockets,
      )
      ..add(
        'totalVCpus',
        totalVCpus,
      );
    return helper.toString();
  }
}

class HostPropertiesEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<HostProperties> {
  const HostPropertiesEc2QuerySerializer() : super('HostProperties');

  @override
  Iterable<Type> get types => const [
        HostProperties,
        _$HostProperties,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  HostProperties deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HostPropertiesBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'cores':
          result.cores = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'instanceType':
          result.instanceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceFamily':
          result.instanceFamily = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'sockets':
          result.sockets = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'totalVCpus':
          result.totalVCpus = (serializers.deserialize(
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
    HostProperties object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'HostPropertiesResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final HostProperties(
      :cores,
      :instanceType,
      :instanceFamily,
      :sockets,
      :totalVCpus
    ) = object;
    result$
      ..add(const _i2.XmlElementName('Cores'))
      ..add(serializers.serialize(
        cores,
        specifiedType: const FullType(int),
      ));
    if (instanceType != null) {
      result$
        ..add(const _i2.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          instanceType,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceFamily != null) {
      result$
        ..add(const _i2.XmlElementName('InstanceFamily'))
        ..add(serializers.serialize(
          instanceFamily,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('Sockets'))
      ..add(serializers.serialize(
        sockets,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i2.XmlElementName('TotalVCpus'))
      ..add(serializers.serialize(
        totalVCpus,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
