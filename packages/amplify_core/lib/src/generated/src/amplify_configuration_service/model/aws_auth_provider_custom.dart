// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.model.aws_auth_provider_custom; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'aws_auth_provider_custom.g.dart';

abstract class AWSAuthProviderCustom
    with _i1.AWSEquatable<AWSAuthProviderCustom>
    implements Built<AWSAuthProviderCustom, AWSAuthProviderCustomBuilder> {
  factory AWSAuthProviderCustom({required String developerProvidedName}) {
    return _$AWSAuthProviderCustom._(
        developerProvidedName: developerProvidedName);
  }

  factory AWSAuthProviderCustom.build(
          [void Function(AWSAuthProviderCustomBuilder) updates]) =
      _$AWSAuthProviderCustom;

  const AWSAuthProviderCustom._();

  static const List<_i2.SmithySerializer<AWSAuthProviderCustom>> serializers = [
    AWSAuthProviderCustomSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AWSAuthProviderCustomBuilder b) {}
  String get developerProvidedName;
  @override
  List<Object?> get props => [developerProvidedName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AWSAuthProviderCustom')
      ..add(
        'developerProvidedName',
        developerProvidedName,
      );
    return helper.toString();
  }
}

class AWSAuthProviderCustomSerializer
    extends _i2.StructuredSmithySerializer<AWSAuthProviderCustom> {
  const AWSAuthProviderCustomSerializer() : super('AWSAuthProviderCustom');

  @override
  Iterable<Type> get types => const [
        AWSAuthProviderCustom,
        _$AWSAuthProviderCustom,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  AWSAuthProviderCustom deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AWSAuthProviderCustomBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'developerProvidedName':
          result.developerProvidedName = (serializers.deserialize(
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
    AWSAuthProviderCustom object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AWSAuthProviderCustom(:developerProvidedName) = object;
    result$.addAll([
      'developerProvidedName',
      serializers.serialize(
        developerProvidedName,
        specifiedType: const FullType(String),
      ),
    ]);
    return result$;
  }
}
