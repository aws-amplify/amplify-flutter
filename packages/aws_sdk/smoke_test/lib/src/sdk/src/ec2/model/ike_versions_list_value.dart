// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ike_versions_list_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'ike_versions_list_value.g.dart';

/// The internet key exchange (IKE) version permitted for the VPN tunnel.
abstract class IkeVersionsListValue
    with _i1.AWSEquatable<IkeVersionsListValue>
    implements Built<IkeVersionsListValue, IkeVersionsListValueBuilder> {
  /// The internet key exchange (IKE) version permitted for the VPN tunnel.
  factory IkeVersionsListValue({String? value}) {
    return _$IkeVersionsListValue._(value: value);
  }

  /// The internet key exchange (IKE) version permitted for the VPN tunnel.
  factory IkeVersionsListValue.build(
          [void Function(IkeVersionsListValueBuilder) updates]) =
      _$IkeVersionsListValue;

  const IkeVersionsListValue._();

  static const List<_i2.SmithySerializer<IkeVersionsListValue>> serializers = [
    IkeVersionsListValueEc2QuerySerializer()
  ];

  /// The IKE version.
  String? get value;
  @override
  List<Object?> get props => [value];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IkeVersionsListValue')
      ..add(
        'value',
        value,
      );
    return helper.toString();
  }
}

class IkeVersionsListValueEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<IkeVersionsListValue> {
  const IkeVersionsListValueEc2QuerySerializer()
      : super('IkeVersionsListValue');

  @override
  Iterable<Type> get types => const [
        IkeVersionsListValue,
        _$IkeVersionsListValue,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  IkeVersionsListValue deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IkeVersionsListValueBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'value':
          result.value = (serializers.deserialize(
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
    IkeVersionsListValue object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'IkeVersionsListValueResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final IkeVersionsListValue(:value) = object;
    if (value != null) {
      result$
        ..add(const _i2.XmlElementName('Value'))
        ..add(serializers.serialize(
          value,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
