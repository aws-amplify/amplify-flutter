// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.device_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'device_options.g.dart';

/// Describes the options for an Amazon Web Services Verified Access device-identity based trust provider.
abstract class DeviceOptions
    with _i1.AWSEquatable<DeviceOptions>
    implements Built<DeviceOptions, DeviceOptionsBuilder> {
  /// Describes the options for an Amazon Web Services Verified Access device-identity based trust provider.
  factory DeviceOptions({String? tenantId}) {
    return _$DeviceOptions._(tenantId: tenantId);
  }

  /// Describes the options for an Amazon Web Services Verified Access device-identity based trust provider.
  factory DeviceOptions.build([void Function(DeviceOptionsBuilder) updates]) =
      _$DeviceOptions;

  const DeviceOptions._();

  static const List<_i2.SmithySerializer<DeviceOptions>> serializers = [
    DeviceOptionsEc2QuerySerializer()
  ];

  /// The ID of the tenant application with the device-identity provider.
  String? get tenantId;
  @override
  List<Object?> get props => [tenantId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeviceOptions')
      ..add(
        'tenantId',
        tenantId,
      );
    return helper.toString();
  }
}

class DeviceOptionsEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DeviceOptions> {
  const DeviceOptionsEc2QuerySerializer() : super('DeviceOptions');

  @override
  Iterable<Type> get types => const [
        DeviceOptions,
        _$DeviceOptions,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeviceOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeviceOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'tenantId':
          result.tenantId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeviceOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeviceOptionsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeviceOptions(:tenantId) = object;
    if (tenantId != null) {
      result$
        ..add(const _i2.XmlElementName('TenantId'))
        ..add(serializers.serialize(
          tenantId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
