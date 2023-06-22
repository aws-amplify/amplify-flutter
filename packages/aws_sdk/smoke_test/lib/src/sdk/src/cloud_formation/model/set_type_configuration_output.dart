// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.set_type_configuration_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'set_type_configuration_output.g.dart';

abstract class SetTypeConfigurationOutput
    with _i1.AWSEquatable<SetTypeConfigurationOutput>
    implements
        Built<SetTypeConfigurationOutput, SetTypeConfigurationOutputBuilder> {
  factory SetTypeConfigurationOutput({String? configurationArn}) {
    return _$SetTypeConfigurationOutput._(configurationArn: configurationArn);
  }

  factory SetTypeConfigurationOutput.build(
          [void Function(SetTypeConfigurationOutputBuilder) updates]) =
      _$SetTypeConfigurationOutput;

  const SetTypeConfigurationOutput._();

  /// Constructs a [SetTypeConfigurationOutput] from a [payload] and [response].
  factory SetTypeConfigurationOutput.fromResponse(
    SetTypeConfigurationOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<SetTypeConfigurationOutput>>
      serializers = [SetTypeConfigurationOutputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SetTypeConfigurationOutputBuilder b) {}

  /// The Amazon Resource Name (ARN) for the configuration data, in this account and Region.
  ///
  /// Conditional: You must specify `ConfigurationArn`, or `Type` and `TypeName`.
  String? get configurationArn;
  @override
  List<Object?> get props => [configurationArn];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SetTypeConfigurationOutput')
      ..add(
        'configurationArn',
        configurationArn,
      );
    return helper.toString();
  }
}

class SetTypeConfigurationOutputAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<SetTypeConfigurationOutput> {
  const SetTypeConfigurationOutputAwsQuerySerializer()
      : super('SetTypeConfigurationOutput');

  @override
  Iterable<Type> get types => const [
        SetTypeConfigurationOutput,
        _$SetTypeConfigurationOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  SetTypeConfigurationOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SetTypeConfigurationOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConfigurationArn':
          result.configurationArn = (serializers.deserialize(
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
    SetTypeConfigurationOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'SetTypeConfigurationOutputResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final SetTypeConfigurationOutput(:configurationArn) = object;
    if (configurationArn != null) {
      result$
        ..add(const _i2.XmlElementName('ConfigurationArn'))
        ..add(serializers.serialize(
          configurationArn,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
