// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library aws_query_v2.query_protocol.model.struct_arg; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'struct_arg.g.dart';

abstract class StructArg
    with _i1.AWSEquatable<StructArg>
    implements Built<StructArg, StructArgBuilder> {
  factory StructArg({
    String? stringArg,
    bool? otherArg,
    StructArg? recursiveArg,
  }) {
    return _$StructArg._(
      stringArg: stringArg,
      otherArg: otherArg,
      recursiveArg: recursiveArg,
    );
  }

  factory StructArg.build([void Function(StructArgBuilder) updates]) =
      _$StructArg;

  const StructArg._();

  static const List<_i2.SmithySerializer<StructArg>> serializers = [
    StructArgAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StructArgBuilder b) {}
  String? get stringArg;
  bool? get otherArg;
  StructArg? get recursiveArg;
  @override
  List<Object?> get props => [
        stringArg,
        otherArg,
        recursiveArg,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StructArg')
      ..add(
        'stringArg',
        stringArg,
      )
      ..add(
        'otherArg',
        otherArg,
      )
      ..add(
        'recursiveArg',
        recursiveArg,
      );
    return helper.toString();
  }
}

class StructArgAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<StructArg> {
  const StructArgAwsQuerySerializer() : super('StructArg');

  @override
  Iterable<Type> get types => const [
        StructArg,
        _$StructArg,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  StructArg deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StructArgBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StringArg':
          result.stringArg = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'OtherArg':
          result.otherArg = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'RecursiveArg':
          result.recursiveArg.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(StructArg),
          ) as StructArg));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    StructArg object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'StructArgResponse',
        _i2.XmlNamespace('https://example.com/'),
      )
    ];
    final StructArg(:stringArg, :otherArg, :recursiveArg) = object;
    if (stringArg != null) {
      result$
        ..add(const _i2.XmlElementName('StringArg'))
        ..add(serializers.serialize(
          stringArg,
          specifiedType: const FullType(String),
        ));
    }
    if (otherArg != null) {
      result$
        ..add(const _i2.XmlElementName('OtherArg'))
        ..add(serializers.serialize(
          otherArg,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (recursiveArg != null) {
      result$
        ..add(const _i2.XmlElementName('RecursiveArg'))
        ..add(serializers.serialize(
          recursiveArg,
          specifiedType: const FullType(StructArg),
        ));
    }
    return result$;
  }
}
