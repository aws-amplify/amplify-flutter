// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.enclave_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'enclave_options.g.dart';

/// Indicates whether the instance is enabled for Amazon Web Services Nitro Enclaves.
abstract class EnclaveOptions
    with _i1.AWSEquatable<EnclaveOptions>
    implements Built<EnclaveOptions, EnclaveOptionsBuilder> {
  /// Indicates whether the instance is enabled for Amazon Web Services Nitro Enclaves.
  factory EnclaveOptions({bool? enabled}) {
    enabled ??= false;
    return _$EnclaveOptions._(enabled: enabled);
  }

  /// Indicates whether the instance is enabled for Amazon Web Services Nitro Enclaves.
  factory EnclaveOptions.build([void Function(EnclaveOptionsBuilder) updates]) =
      _$EnclaveOptions;

  const EnclaveOptions._();

  static const List<_i2.SmithySerializer<EnclaveOptions>> serializers = [
    EnclaveOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EnclaveOptionsBuilder b) {
    b.enabled = false;
  }

  /// If this parameter is set to `true`, the instance is enabled for Amazon Web Services Nitro Enclaves; otherwise, it is not enabled for Amazon Web Services Nitro Enclaves.
  bool get enabled;
  @override
  List<Object?> get props => [enabled];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EnclaveOptions')
      ..add(
        'enabled',
        enabled,
      );
    return helper.toString();
  }
}

class EnclaveOptionsEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<EnclaveOptions> {
  const EnclaveOptionsEc2QuerySerializer() : super('EnclaveOptions');

  @override
  Iterable<Type> get types => const [
        EnclaveOptions,
        _$EnclaveOptions,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EnclaveOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnclaveOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'enabled':
          result.enabled = (serializers.deserialize(
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
    EnclaveOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'EnclaveOptionsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final EnclaveOptions(:enabled) = object;
    result$
      ..add(const _i2.XmlElementName('Enabled'))
      ..add(serializers.serialize(
        enabled,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
