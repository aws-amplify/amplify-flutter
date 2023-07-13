// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_core.amplify_configuration_service.model.aws_auth_mfa_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_core/amplify_core.dart' as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'aws_auth_mfa_configuration.g.dart';

abstract class AWSAuthMfaConfiguration
    with _i1.AWSEquatable<AWSAuthMfaConfiguration>
    implements Built<AWSAuthMfaConfiguration, AWSAuthMfaConfigurationBuilder> {
  factory AWSAuthMfaConfiguration({
    required _i2.MfaConfiguration status,
    required Set<_i2.MfaType> enabledTypes,
  }) {
    return _$AWSAuthMfaConfiguration._(
      status: status,
      enabledTypes: _i3.BuiltSet(enabledTypes),
    );
  }

  factory AWSAuthMfaConfiguration.build(
          [void Function(AWSAuthMfaConfigurationBuilder) updates]) =
      _$AWSAuthMfaConfiguration;

  const AWSAuthMfaConfiguration._();

  static const List<_i4.SmithySerializer<AWSAuthMfaConfiguration>> serializers =
      [AWSAuthMfaConfigurationSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AWSAuthMfaConfigurationBuilder b) {}
  _i2.MfaConfiguration get status;
  _i3.BuiltSet<_i2.MfaType> get enabledTypes;
  @override
  List<Object?> get props => [
        status,
        enabledTypes,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AWSAuthMfaConfiguration')
      ..add(
        'status',
        status,
      )
      ..add(
        'enabledTypes',
        enabledTypes,
      );
    return helper.toString();
  }
}

class AWSAuthMfaConfigurationSerializer
    extends _i4.StructuredSmithySerializer<AWSAuthMfaConfiguration> {
  const AWSAuthMfaConfigurationSerializer() : super('AWSAuthMfaConfiguration');

  @override
  Iterable<Type> get types => const [
        AWSAuthMfaConfiguration,
        _$AWSAuthMfaConfiguration,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  AWSAuthMfaConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AWSAuthMfaConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'enabledTypes':
          result.enabledTypes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltSet,
              [FullType(_i2.MfaType)],
            ),
          ) as _i3.BuiltSet<_i2.MfaType>));
        case 'status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.MfaConfiguration),
          ) as _i2.MfaConfiguration);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AWSAuthMfaConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AWSAuthMfaConfiguration(:enabledTypes, :status) = object;
    result$.addAll([
      'enabledTypes',
      serializers.serialize(
        enabledTypes,
        specifiedType: const FullType(
          _i3.BuiltSet,
          [FullType(_i2.MfaType)],
        ),
      ),
      'status',
      serializers.serialize(
        status,
        specifiedType: const FullType(_i2.MfaConfiguration),
      ),
    ]);
    return result$;
  }
}
