// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.classic_link_dns_support; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'classic_link_dns_support.g.dart';

/// Deprecated.
///
/// Describes the ClassicLink DNS support status of a VPC.
abstract class ClassicLinkDnsSupport
    with _i1.AWSEquatable<ClassicLinkDnsSupport>
    implements Built<ClassicLinkDnsSupport, ClassicLinkDnsSupportBuilder> {
  /// Deprecated.
  ///
  /// Describes the ClassicLink DNS support status of a VPC.
  factory ClassicLinkDnsSupport({
    bool? classicLinkDnsSupported,
    String? vpcId,
  }) {
    classicLinkDnsSupported ??= false;
    return _$ClassicLinkDnsSupport._(
      classicLinkDnsSupported: classicLinkDnsSupported,
      vpcId: vpcId,
    );
  }

  /// Deprecated.
  ///
  /// Describes the ClassicLink DNS support status of a VPC.
  factory ClassicLinkDnsSupport.build(
          [void Function(ClassicLinkDnsSupportBuilder) updates]) =
      _$ClassicLinkDnsSupport;

  const ClassicLinkDnsSupport._();

  static const List<_i2.SmithySerializer<ClassicLinkDnsSupport>> serializers = [
    ClassicLinkDnsSupportEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ClassicLinkDnsSupportBuilder b) {
    b.classicLinkDnsSupported = false;
  }

  /// Indicates whether ClassicLink DNS support is enabled for the VPC.
  bool get classicLinkDnsSupported;

  /// The ID of the VPC.
  String? get vpcId;
  @override
  List<Object?> get props => [
        classicLinkDnsSupported,
        vpcId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ClassicLinkDnsSupport')
      ..add(
        'classicLinkDnsSupported',
        classicLinkDnsSupported,
      )
      ..add(
        'vpcId',
        vpcId,
      );
    return helper.toString();
  }
}

class ClassicLinkDnsSupportEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ClassicLinkDnsSupport> {
  const ClassicLinkDnsSupportEc2QuerySerializer()
      : super('ClassicLinkDnsSupport');

  @override
  Iterable<Type> get types => const [
        ClassicLinkDnsSupport,
        _$ClassicLinkDnsSupport,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ClassicLinkDnsSupport deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClassicLinkDnsSupportBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'classicLinkDnsSupported':
          result.classicLinkDnsSupported = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'vpcId':
          result.vpcId = (serializers.deserialize(
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
    ClassicLinkDnsSupport object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ClassicLinkDnsSupportResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ClassicLinkDnsSupport(:classicLinkDnsSupported, :vpcId) = object;
    result$
      ..add(const _i2.XmlElementName('ClassicLinkDnsSupported'))
      ..add(serializers.serialize(
        classicLinkDnsSupported,
        specifiedType: const FullType(bool),
      ));
    if (vpcId != null) {
      result$
        ..add(const _i2.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          vpcId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
