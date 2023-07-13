// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_core.amplify_configuration_service.model.aws_api_authorization_mode; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

sealed class AWSApiAuthorizationMode
    extends _i1.SmithyUnion<AWSApiAuthorizationMode> {
  const AWSApiAuthorizationMode._();

  const factory AWSApiAuthorizationMode.none() = AWSApiAuthorizationModeNone$;

  const factory AWSApiAuthorizationMode.apiKey(String apiKey) =
      AWSApiAuthorizationModeApiKey$;

  const factory AWSApiAuthorizationMode.iam() = AWSApiAuthorizationModeIam$;

  const factory AWSApiAuthorizationMode.oidc() = AWSApiAuthorizationModeOidc$;

  const factory AWSApiAuthorizationMode.userPools() =
      AWSApiAuthorizationModeUserPools$;

  const factory AWSApiAuthorizationMode.function() =
      AWSApiAuthorizationModeFunction$;

  const factory AWSApiAuthorizationMode.sdkUnknown(
    String name,
    Object value,
  ) = AWSApiAuthorizationModeSdkUnknown$;

  static const List<_i1.SmithySerializer<AWSApiAuthorizationMode>> serializers =
      [AWSApiAuthorizationModeSerializer()];

  _i1.Unit? get none => null;
  String? get apiKey => null;
  _i1.Unit? get iam => null;
  _i1.Unit? get oidc => null;
  _i1.Unit? get userPools => null;
  _i1.Unit? get function => null;
  @override
  Object get value => (none ?? apiKey ?? iam ?? oidc ?? userPools ?? function)!;
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'AWSApiAuthorizationMode');
    if (none != null) {
      helper.add(
        r'none',
        none,
      );
    }
    if (apiKey != null) {
      helper.add(
        r'apiKey',
        apiKey,
      );
    }
    if (iam != null) {
      helper.add(
        r'iam',
        iam,
      );
    }
    if (oidc != null) {
      helper.add(
        r'oidc',
        oidc,
      );
    }
    if (userPools != null) {
      helper.add(
        r'userPools',
        userPools,
      );
    }
    if (function != null) {
      helper.add(
        r'function',
        function,
      );
    }
    return helper.toString();
  }
}

final class AWSApiAuthorizationModeNone$ extends AWSApiAuthorizationMode {
  const AWSApiAuthorizationModeNone$() : super._();

  @override
  String get name => 'none';
  @override
  _i1.Unit get none => const _i1.Unit();
}

final class AWSApiAuthorizationModeApiKey$ extends AWSApiAuthorizationMode {
  const AWSApiAuthorizationModeApiKey$(this.apiKey) : super._();

  @override
  final String apiKey;

  @override
  String get name => 'apiKey';
}

final class AWSApiAuthorizationModeIam$ extends AWSApiAuthorizationMode {
  const AWSApiAuthorizationModeIam$() : super._();

  @override
  String get name => 'iam';
  @override
  _i1.Unit get iam => const _i1.Unit();
}

final class AWSApiAuthorizationModeOidc$ extends AWSApiAuthorizationMode {
  const AWSApiAuthorizationModeOidc$() : super._();

  @override
  String get name => 'oidc';
  @override
  _i1.Unit get oidc => const _i1.Unit();
}

final class AWSApiAuthorizationModeUserPools$ extends AWSApiAuthorizationMode {
  const AWSApiAuthorizationModeUserPools$() : super._();

  @override
  String get name => 'userPools';
  @override
  _i1.Unit get userPools => const _i1.Unit();
}

final class AWSApiAuthorizationModeFunction$ extends AWSApiAuthorizationMode {
  const AWSApiAuthorizationModeFunction$() : super._();

  @override
  String get name => 'function';
  @override
  _i1.Unit get function => const _i1.Unit();
}

final class AWSApiAuthorizationModeSdkUnknown$ extends AWSApiAuthorizationMode {
  const AWSApiAuthorizationModeSdkUnknown$(
    this.name,
    this.value,
  ) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class AWSApiAuthorizationModeSerializer
    extends _i1.StructuredSmithySerializer<AWSApiAuthorizationMode> {
  const AWSApiAuthorizationModeSerializer() : super('AWSApiAuthorizationMode');

  @override
  Iterable<Type> get types => const [
        AWSApiAuthorizationMode,
        AWSApiAuthorizationModeNone$,
        AWSApiAuthorizationModeApiKey$,
        AWSApiAuthorizationModeIam$,
        AWSApiAuthorizationModeOidc$,
        AWSApiAuthorizationModeUserPools$,
        AWSApiAuthorizationModeFunction$,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  AWSApiAuthorizationMode deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final [key as String, value as Object] = serialized.toList();
    switch (key) {
      case 'none':
        return const AWSApiAuthorizationModeNone$();
      case 'apiKey':
        return AWSApiAuthorizationModeApiKey$((serializers.deserialize(
          value,
          specifiedType: const FullType(String),
        ) as String));
      case 'iam':
        return const AWSApiAuthorizationModeIam$();
      case 'oidc':
        return const AWSApiAuthorizationModeOidc$();
      case 'userPools':
        return const AWSApiAuthorizationModeUserPools$();
      case 'function':
        return const AWSApiAuthorizationModeFunction$();
    }
    return AWSApiAuthorizationMode.sdkUnknown(
      key,
      value,
    );
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AWSApiAuthorizationMode object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return [
      object.name,
      switch (object) {
        AWSApiAuthorizationModeNone$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(_i1.Unit),
          ),
        AWSApiAuthorizationModeApiKey$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(String),
          ),
        AWSApiAuthorizationModeIam$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(_i1.Unit),
          ),
        AWSApiAuthorizationModeOidc$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(_i1.Unit),
          ),
        AWSApiAuthorizationModeUserPools$(:final value) =>
          serializers.serialize(
            value,
            specifiedType: const FullType(_i1.Unit),
          ),
        AWSApiAuthorizationModeFunction$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(_i1.Unit),
          ),
        AWSApiAuthorizationModeSdkUnknown$(:final value) => value,
      },
    ];
  }
}
