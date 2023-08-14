// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.launch_template_enclave_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'launch_template_enclave_options.g.dart';

/// Indicates whether the instance is enabled for Amazon Web Services Nitro Enclaves.
abstract class LaunchTemplateEnclaveOptions
    with
        _i1.AWSEquatable<LaunchTemplateEnclaveOptions>
    implements
        Built<LaunchTemplateEnclaveOptions,
            LaunchTemplateEnclaveOptionsBuilder> {
  /// Indicates whether the instance is enabled for Amazon Web Services Nitro Enclaves.
  factory LaunchTemplateEnclaveOptions({bool? enabled}) {
    enabled ??= false;
    return _$LaunchTemplateEnclaveOptions._(enabled: enabled);
  }

  /// Indicates whether the instance is enabled for Amazon Web Services Nitro Enclaves.
  factory LaunchTemplateEnclaveOptions.build(
          [void Function(LaunchTemplateEnclaveOptionsBuilder) updates]) =
      _$LaunchTemplateEnclaveOptions;

  const LaunchTemplateEnclaveOptions._();

  static const List<_i2.SmithySerializer<LaunchTemplateEnclaveOptions>>
      serializers = [LaunchTemplateEnclaveOptionsEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplateEnclaveOptionsBuilder b) {
    b.enabled = false;
  }

  /// If this parameter is set to `true`, the instance is enabled for Amazon Web Services Nitro Enclaves; otherwise, it is not enabled for Amazon Web Services Nitro Enclaves.
  bool get enabled;
  @override
  List<Object?> get props => [enabled];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LaunchTemplateEnclaveOptions')
      ..add(
        'enabled',
        enabled,
      );
    return helper.toString();
  }
}

class LaunchTemplateEnclaveOptionsEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<LaunchTemplateEnclaveOptions> {
  const LaunchTemplateEnclaveOptionsEc2QuerySerializer()
      : super('LaunchTemplateEnclaveOptions');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateEnclaveOptions,
        _$LaunchTemplateEnclaveOptions,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateEnclaveOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateEnclaveOptionsBuilder();
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
    LaunchTemplateEnclaveOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'LaunchTemplateEnclaveOptionsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LaunchTemplateEnclaveOptions(:enabled) = object;
    result$
      ..add(const _i2.XmlElementName('Enabled'))
      ..add(serializers.serialize(
        enabled,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
