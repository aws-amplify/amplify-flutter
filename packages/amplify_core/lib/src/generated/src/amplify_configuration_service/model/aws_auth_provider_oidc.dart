// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.model.aws_auth_provider_oidc; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'aws_auth_provider_oidc.g.dart';

abstract class AWSAuthProviderOidc
    with _i1.AWSEquatable<AWSAuthProviderOidc>
    implements Built<AWSAuthProviderOidc, AWSAuthProviderOidcBuilder> {
  factory AWSAuthProviderOidc({
    required String name,
    required String issuer,
  }) {
    return _$AWSAuthProviderOidc._(
      name: name,
      issuer: issuer,
    );
  }

  factory AWSAuthProviderOidc.build(
          [void Function(AWSAuthProviderOidcBuilder) updates]) =
      _$AWSAuthProviderOidc;

  const AWSAuthProviderOidc._();

  static const List<_i2.SmithySerializer<AWSAuthProviderOidc>> serializers = [
    AWSAuthProviderOidcSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AWSAuthProviderOidcBuilder b) {}
  String get name;
  String get issuer;
  @override
  List<Object?> get props => [
        name,
        issuer,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AWSAuthProviderOidc')
      ..add(
        'name',
        name,
      )
      ..add(
        'issuer',
        issuer,
      );
    return helper.toString();
  }
}

class AWSAuthProviderOidcSerializer
    extends _i2.StructuredSmithySerializer<AWSAuthProviderOidc> {
  const AWSAuthProviderOidcSerializer() : super('AWSAuthProviderOidc');

  @override
  Iterable<Type> get types => const [
        AWSAuthProviderOidc,
        _$AWSAuthProviderOidc,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  AWSAuthProviderOidc deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AWSAuthProviderOidcBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'issuer':
          result.issuer = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'name':
          result.name = (serializers.deserialize(
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
    AWSAuthProviderOidc object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AWSAuthProviderOidc(:issuer, :name) = object;
    result$.addAll([
      'issuer',
      serializers.serialize(
        issuer,
        specifiedType: const FullType(String),
      ),
      'name',
      serializers.serialize(
        name,
        specifiedType: const FullType(String),
      ),
    ]);
    return result$;
  }
}
