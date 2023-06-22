// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.auto_deployment; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'auto_deployment.g.dart';

/// \[Service-managed permissions\] Describes whether StackSets automatically deploys to Organizations accounts that are added to a target organization or organizational unit (OU).
abstract class AutoDeployment
    with _i1.AWSEquatable<AutoDeployment>
    implements Built<AutoDeployment, AutoDeploymentBuilder> {
  /// \[Service-managed permissions\] Describes whether StackSets automatically deploys to Organizations accounts that are added to a target organization or organizational unit (OU).
  factory AutoDeployment({
    bool? enabled,
    bool? retainStacksOnAccountRemoval,
  }) {
    return _$AutoDeployment._(
      enabled: enabled,
      retainStacksOnAccountRemoval: retainStacksOnAccountRemoval,
    );
  }

  /// \[Service-managed permissions\] Describes whether StackSets automatically deploys to Organizations accounts that are added to a target organization or organizational unit (OU).
  factory AutoDeployment.build([void Function(AutoDeploymentBuilder) updates]) =
      _$AutoDeployment;

  const AutoDeployment._();

  static const List<_i2.SmithySerializer<AutoDeployment>> serializers = [
    AutoDeploymentAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AutoDeploymentBuilder b) {}

  /// If set to `true`, StackSets automatically deploys additional stack instances to Organizations accounts that are added to a target organization or organizational unit (OU) in the specified Regions. If an account is removed from a target organization or OU, StackSets deletes stack instances from the account in the specified Regions.
  bool? get enabled;

  /// If set to `true`, stack resources are retained when an account is removed from a target organization or OU. If set to `false`, stack resources are deleted. Specify only if `Enabled` is set to `True`.
  bool? get retainStacksOnAccountRemoval;
  @override
  List<Object?> get props => [
        enabled,
        retainStacksOnAccountRemoval,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AutoDeployment')
      ..add(
        'enabled',
        enabled,
      )
      ..add(
        'retainStacksOnAccountRemoval',
        retainStacksOnAccountRemoval,
      );
    return helper.toString();
  }
}

class AutoDeploymentAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<AutoDeployment> {
  const AutoDeploymentAwsQuerySerializer() : super('AutoDeployment');

  @override
  Iterable<Type> get types => const [
        AutoDeployment,
        _$AutoDeployment,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  AutoDeployment deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AutoDeploymentBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Enabled':
          result.enabled = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'RetainStacksOnAccountRemoval':
          result.retainStacksOnAccountRemoval = (serializers.deserialize(
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
    AutoDeployment object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AutoDeploymentResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final AutoDeployment(:enabled, :retainStacksOnAccountRemoval) = object;
    if (enabled != null) {
      result$
        ..add(const _i2.XmlElementName('Enabled'))
        ..add(serializers.serialize(
          enabled,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (retainStacksOnAccountRemoval != null) {
      result$
        ..add(const _i2.XmlElementName('RetainStacksOnAccountRemoval'))
        ..add(serializers.serialize(
          retainStacksOnAccountRemoval,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    return result$;
  }
}
