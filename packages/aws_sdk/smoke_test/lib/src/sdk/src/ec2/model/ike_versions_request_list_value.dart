// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ike_versions_request_list_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'ike_versions_request_list_value.g.dart';

/// The IKE version that is permitted for the VPN tunnel.
abstract class IkeVersionsRequestListValue
    with _i1.AWSEquatable<IkeVersionsRequestListValue>
    implements
        Built<IkeVersionsRequestListValue, IkeVersionsRequestListValueBuilder> {
  /// The IKE version that is permitted for the VPN tunnel.
  factory IkeVersionsRequestListValue({String? value}) {
    return _$IkeVersionsRequestListValue._(value: value);
  }

  /// The IKE version that is permitted for the VPN tunnel.
  factory IkeVersionsRequestListValue.build(
          [void Function(IkeVersionsRequestListValueBuilder) updates]) =
      _$IkeVersionsRequestListValue;

  const IkeVersionsRequestListValue._();

  static const List<_i2.SmithySerializer<IkeVersionsRequestListValue>>
      serializers = [IkeVersionsRequestListValueEc2QuerySerializer()];

  /// The IKE version.
  String? get value;
  @override
  List<Object?> get props => [value];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IkeVersionsRequestListValue')
      ..add(
        'value',
        value,
      );
    return helper.toString();
  }
}

class IkeVersionsRequestListValueEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<IkeVersionsRequestListValue> {
  const IkeVersionsRequestListValueEc2QuerySerializer()
      : super('IkeVersionsRequestListValue');

  @override
  Iterable<Type> get types => const [
        IkeVersionsRequestListValue,
        _$IkeVersionsRequestListValue,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  IkeVersionsRequestListValue deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IkeVersionsRequestListValueBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Value':
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
    IkeVersionsRequestListValue object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'IkeVersionsRequestListValueResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final IkeVersionsRequestListValue(:value) = object;
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
