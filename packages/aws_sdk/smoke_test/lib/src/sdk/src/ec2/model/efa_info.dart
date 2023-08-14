// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.efa_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'efa_info.g.dart';

/// Describes the Elastic Fabric Adapters for the instance type.
abstract class EfaInfo
    with _i1.AWSEquatable<EfaInfo>
    implements Built<EfaInfo, EfaInfoBuilder> {
  /// Describes the Elastic Fabric Adapters for the instance type.
  factory EfaInfo({int? maximumEfaInterfaces}) {
    return _$EfaInfo._(maximumEfaInterfaces: maximumEfaInterfaces);
  }

  /// Describes the Elastic Fabric Adapters for the instance type.
  factory EfaInfo.build([void Function(EfaInfoBuilder) updates]) = _$EfaInfo;

  const EfaInfo._();

  static const List<_i2.SmithySerializer<EfaInfo>> serializers = [
    EfaInfoEc2QuerySerializer()
  ];

  /// The maximum number of Elastic Fabric Adapters for the instance type.
  int? get maximumEfaInterfaces;
  @override
  List<Object?> get props => [maximumEfaInterfaces];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EfaInfo')
      ..add(
        'maximumEfaInterfaces',
        maximumEfaInterfaces,
      );
    return helper.toString();
  }
}

class EfaInfoEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<EfaInfo> {
  const EfaInfoEc2QuerySerializer() : super('EfaInfo');

  @override
  Iterable<Type> get types => const [
        EfaInfo,
        _$EfaInfo,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EfaInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EfaInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'maximumEfaInterfaces':
          result.maximumEfaInterfaces = (serializers.deserialize(
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
    EfaInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'EfaInfoResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final EfaInfo(:maximumEfaInterfaces) = object;
    if (maximumEfaInterfaces != null) {
      result$
        ..add(const _i2.XmlElementName('MaximumEfaInterfaces'))
        ..add(serializers.serialize(
          maximumEfaInterfaces,
          specifiedType: const FullType.nullable(int),
        ));
    }
    return result$;
  }
}
