// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.launch_template_private_dns_name_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/hostname_type.dart';

part 'launch_template_private_dns_name_options.g.dart';

/// Describes the options for instance hostnames.
abstract class LaunchTemplatePrivateDnsNameOptions
    with
        _i1.AWSEquatable<LaunchTemplatePrivateDnsNameOptions>
    implements
        Built<LaunchTemplatePrivateDnsNameOptions,
            LaunchTemplatePrivateDnsNameOptionsBuilder> {
  /// Describes the options for instance hostnames.
  factory LaunchTemplatePrivateDnsNameOptions({
    HostnameType? hostnameType,
    bool? enableResourceNameDnsARecord,
    bool? enableResourceNameDnsAaaaRecord,
  }) {
    enableResourceNameDnsARecord ??= false;
    enableResourceNameDnsAaaaRecord ??= false;
    return _$LaunchTemplatePrivateDnsNameOptions._(
      hostnameType: hostnameType,
      enableResourceNameDnsARecord: enableResourceNameDnsARecord,
      enableResourceNameDnsAaaaRecord: enableResourceNameDnsAaaaRecord,
    );
  }

  /// Describes the options for instance hostnames.
  factory LaunchTemplatePrivateDnsNameOptions.build(
          [void Function(LaunchTemplatePrivateDnsNameOptionsBuilder) updates]) =
      _$LaunchTemplatePrivateDnsNameOptions;

  const LaunchTemplatePrivateDnsNameOptions._();

  static const List<_i2.SmithySerializer<LaunchTemplatePrivateDnsNameOptions>>
      serializers = [LaunchTemplatePrivateDnsNameOptionsEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplatePrivateDnsNameOptionsBuilder b) {
    b
      ..enableResourceNameDnsARecord = false
      ..enableResourceNameDnsAaaaRecord = false;
  }

  /// The type of hostname to assign to an instance.
  HostnameType? get hostnameType;

  /// Indicates whether to respond to DNS queries for instance hostnames with DNS A records.
  bool get enableResourceNameDnsARecord;

  /// Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records.
  bool get enableResourceNameDnsAaaaRecord;
  @override
  List<Object?> get props => [
        hostnameType,
        enableResourceNameDnsARecord,
        enableResourceNameDnsAaaaRecord,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('LaunchTemplatePrivateDnsNameOptions')
          ..add(
            'hostnameType',
            hostnameType,
          )
          ..add(
            'enableResourceNameDnsARecord',
            enableResourceNameDnsARecord,
          )
          ..add(
            'enableResourceNameDnsAaaaRecord',
            enableResourceNameDnsAaaaRecord,
          );
    return helper.toString();
  }
}

class LaunchTemplatePrivateDnsNameOptionsEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<LaunchTemplatePrivateDnsNameOptions> {
  const LaunchTemplatePrivateDnsNameOptionsEc2QuerySerializer()
      : super('LaunchTemplatePrivateDnsNameOptions');

  @override
  Iterable<Type> get types => const [
        LaunchTemplatePrivateDnsNameOptions,
        _$LaunchTemplatePrivateDnsNameOptions,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplatePrivateDnsNameOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplatePrivateDnsNameOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'hostnameType':
          result.hostnameType = (serializers.deserialize(
            value,
            specifiedType: const FullType(HostnameType),
          ) as HostnameType);
        case 'enableResourceNameDnsARecord':
          result.enableResourceNameDnsARecord = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'enableResourceNameDnsAAAARecord':
          result.enableResourceNameDnsAaaaRecord = (serializers.deserialize(
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
    LaunchTemplatePrivateDnsNameOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'LaunchTemplatePrivateDnsNameOptionsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LaunchTemplatePrivateDnsNameOptions(
      :hostnameType,
      :enableResourceNameDnsARecord,
      :enableResourceNameDnsAaaaRecord
    ) = object;
    if (hostnameType != null) {
      result$
        ..add(const _i2.XmlElementName('HostnameType'))
        ..add(serializers.serialize(
          hostnameType,
          specifiedType: const FullType(HostnameType),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('EnableResourceNameDnsARecord'))
      ..add(serializers.serialize(
        enableResourceNameDnsARecord,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i2.XmlElementName('EnableResourceNameDnsAAAARecord'))
      ..add(serializers.serialize(
        enableResourceNameDnsAaaaRecord,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
