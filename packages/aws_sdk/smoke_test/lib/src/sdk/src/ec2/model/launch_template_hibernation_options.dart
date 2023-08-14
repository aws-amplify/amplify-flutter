// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.launch_template_hibernation_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'launch_template_hibernation_options.g.dart';

/// Indicates whether an instance is configured for hibernation.
abstract class LaunchTemplateHibernationOptions
    with
        _i1.AWSEquatable<LaunchTemplateHibernationOptions>
    implements
        Built<LaunchTemplateHibernationOptions,
            LaunchTemplateHibernationOptionsBuilder> {
  /// Indicates whether an instance is configured for hibernation.
  factory LaunchTemplateHibernationOptions({bool? configured}) {
    configured ??= false;
    return _$LaunchTemplateHibernationOptions._(configured: configured);
  }

  /// Indicates whether an instance is configured for hibernation.
  factory LaunchTemplateHibernationOptions.build(
          [void Function(LaunchTemplateHibernationOptionsBuilder) updates]) =
      _$LaunchTemplateHibernationOptions;

  const LaunchTemplateHibernationOptions._();

  static const List<_i2.SmithySerializer<LaunchTemplateHibernationOptions>>
      serializers = [LaunchTemplateHibernationOptionsEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplateHibernationOptionsBuilder b) {
    b.configured = false;
  }

  /// If this parameter is set to `true`, the instance is enabled for hibernation; otherwise, it is not enabled for hibernation.
  bool get configured;
  @override
  List<Object?> get props => [configured];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('LaunchTemplateHibernationOptions')
          ..add(
            'configured',
            configured,
          );
    return helper.toString();
  }
}

class LaunchTemplateHibernationOptionsEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<LaunchTemplateHibernationOptions> {
  const LaunchTemplateHibernationOptionsEc2QuerySerializer()
      : super('LaunchTemplateHibernationOptions');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateHibernationOptions,
        _$LaunchTemplateHibernationOptions,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateHibernationOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateHibernationOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'configured':
          result.configured = (serializers.deserialize(
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
    LaunchTemplateHibernationOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'LaunchTemplateHibernationOptionsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LaunchTemplateHibernationOptions(:configured) = object;
    result$
      ..add(const _i2.XmlElementName('Configured'))
      ..add(serializers.serialize(
        configured,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
