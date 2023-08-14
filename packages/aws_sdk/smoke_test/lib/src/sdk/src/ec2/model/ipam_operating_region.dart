// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipam_operating_region; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'ipam_operating_region.g.dart';

/// The operating Regions for an IPAM. Operating Regions are Amazon Web Services Regions where the IPAM is allowed to manage IP address CIDRs. IPAM only discovers and monitors resources in the Amazon Web Services Regions you select as operating Regions.
///
/// For more information about operating Regions, see [Create an IPAM](https://docs.aws.amazon.com/vpc/latest/ipam/create-ipam.html) in the _Amazon VPC IPAM User Guide_.
abstract class IpamOperatingRegion
    with _i1.AWSEquatable<IpamOperatingRegion>
    implements Built<IpamOperatingRegion, IpamOperatingRegionBuilder> {
  /// The operating Regions for an IPAM. Operating Regions are Amazon Web Services Regions where the IPAM is allowed to manage IP address CIDRs. IPAM only discovers and monitors resources in the Amazon Web Services Regions you select as operating Regions.
  ///
  /// For more information about operating Regions, see [Create an IPAM](https://docs.aws.amazon.com/vpc/latest/ipam/create-ipam.html) in the _Amazon VPC IPAM User Guide_.
  factory IpamOperatingRegion({String? regionName}) {
    return _$IpamOperatingRegion._(regionName: regionName);
  }

  /// The operating Regions for an IPAM. Operating Regions are Amazon Web Services Regions where the IPAM is allowed to manage IP address CIDRs. IPAM only discovers and monitors resources in the Amazon Web Services Regions you select as operating Regions.
  ///
  /// For more information about operating Regions, see [Create an IPAM](https://docs.aws.amazon.com/vpc/latest/ipam/create-ipam.html) in the _Amazon VPC IPAM User Guide_.
  factory IpamOperatingRegion.build(
          [void Function(IpamOperatingRegionBuilder) updates]) =
      _$IpamOperatingRegion;

  const IpamOperatingRegion._();

  static const List<_i2.SmithySerializer<IpamOperatingRegion>> serializers = [
    IpamOperatingRegionEc2QuerySerializer()
  ];

  /// The name of the operating Region.
  String? get regionName;
  @override
  List<Object?> get props => [regionName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IpamOperatingRegion')
      ..add(
        'regionName',
        regionName,
      );
    return helper.toString();
  }
}

class IpamOperatingRegionEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<IpamOperatingRegion> {
  const IpamOperatingRegionEc2QuerySerializer() : super('IpamOperatingRegion');

  @override
  Iterable<Type> get types => const [
        IpamOperatingRegion,
        _$IpamOperatingRegion,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  IpamOperatingRegion deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IpamOperatingRegionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'regionName':
          result.regionName = (serializers.deserialize(
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
    IpamOperatingRegion object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'IpamOperatingRegionResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final IpamOperatingRegion(:regionName) = object;
    if (regionName != null) {
      result$
        ..add(const _i2.XmlElementName('RegionName'))
        ..add(serializers.serialize(
          regionName,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
