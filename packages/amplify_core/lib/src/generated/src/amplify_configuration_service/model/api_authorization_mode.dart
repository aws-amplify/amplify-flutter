// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.model.api_authorization_mode; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

/// An authorization mode of an AWS API. APIs may accept multiple authorization modes which must be configured independently.
sealed class ApiAuthorizationMode
    extends _i1.SmithyUnion<ApiAuthorizationMode> {
  const ApiAuthorizationMode._();

  const factory ApiAuthorizationMode.none() = ApiAuthorizationModeNone$;

  const factory ApiAuthorizationMode.apiKey(String apiKey) =
      ApiAuthorizationModeApiKey$;

  const factory ApiAuthorizationMode.iam() = ApiAuthorizationModeIam$;

  const factory ApiAuthorizationMode.oidc() = ApiAuthorizationModeOidc$;

  const factory ApiAuthorizationMode.userPools() =
      ApiAuthorizationModeUserPools$;

  const factory ApiAuthorizationMode.function() = ApiAuthorizationModeFunction$;

  const factory ApiAuthorizationMode.sdkUnknown(
    String name,
    Object value,
  ) = ApiAuthorizationModeSdkUnknown$;

  static const List<_i1.SmithySerializer<ApiAuthorizationMode>> serializers = [
    ApiAuthorizationModeSerializer()
  ];

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
    final helper = newBuiltValueToStringHelper(r'ApiAuthorizationMode');
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

final class ApiAuthorizationModeNone$ extends ApiAuthorizationMode {
  const ApiAuthorizationModeNone$() : super._();

  @override
  String get name => 'none';
  @override
  _i1.Unit get none => const _i1.Unit();
}

final class ApiAuthorizationModeApiKey$ extends ApiAuthorizationMode {
  const ApiAuthorizationModeApiKey$(this.apiKey) : super._();

  @override
  final String apiKey;

  @override
  String get name => 'apiKey';
}

final class ApiAuthorizationModeIam$ extends ApiAuthorizationMode {
  const ApiAuthorizationModeIam$() : super._();

  @override
  String get name => 'iam';
  @override
  _i1.Unit get iam => const _i1.Unit();
}

final class ApiAuthorizationModeOidc$ extends ApiAuthorizationMode {
  const ApiAuthorizationModeOidc$() : super._();

  @override
  String get name => 'oidc';
  @override
  _i1.Unit get oidc => const _i1.Unit();
}

final class ApiAuthorizationModeUserPools$ extends ApiAuthorizationMode {
  const ApiAuthorizationModeUserPools$() : super._();

  @override
  String get name => 'userPools';
  @override
  _i1.Unit get userPools => const _i1.Unit();
}

final class ApiAuthorizationModeFunction$ extends ApiAuthorizationMode {
  const ApiAuthorizationModeFunction$() : super._();

  @override
  String get name => 'function';
  @override
  _i1.Unit get function => const _i1.Unit();
}

final class ApiAuthorizationModeSdkUnknown$ extends ApiAuthorizationMode {
  const ApiAuthorizationModeSdkUnknown$(
    this.name,
    this.value,
  ) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class ApiAuthorizationModeSerializer
    extends _i1.StructuredSmithySerializer<ApiAuthorizationMode> {
  const ApiAuthorizationModeSerializer() : super('ApiAuthorizationMode');

  @override
  Iterable<Type> get types => const [
        ApiAuthorizationMode,
        ApiAuthorizationModeNone$,
        ApiAuthorizationModeApiKey$,
        ApiAuthorizationModeIam$,
        ApiAuthorizationModeOidc$,
        ApiAuthorizationModeUserPools$,
        ApiAuthorizationModeFunction$,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  ApiAuthorizationMode deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final [key as String, value as Object] = serialized.toList();
    switch (key) {
      case 'none':
        return const ApiAuthorizationModeNone$();
      case 'apiKey':
        return ApiAuthorizationModeApiKey$((serializers.deserialize(
          value,
          specifiedType: const FullType(String),
        ) as String));
      case 'iam':
        return const ApiAuthorizationModeIam$();
      case 'oidc':
        return const ApiAuthorizationModeOidc$();
      case 'userPools':
        return const ApiAuthorizationModeUserPools$();
      case 'function':
        return const ApiAuthorizationModeFunction$();
    }
    return ApiAuthorizationMode.sdkUnknown(
      key,
      value,
    );
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ApiAuthorizationMode object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return [
      object.name,
      switch (object) {
        ApiAuthorizationModeNone$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(_i1.Unit),
          ),
        ApiAuthorizationModeApiKey$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(String),
          ),
        ApiAuthorizationModeIam$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(_i1.Unit),
          ),
        ApiAuthorizationModeOidc$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(_i1.Unit),
          ),
        ApiAuthorizationModeUserPools$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(_i1.Unit),
          ),
        ApiAuthorizationModeFunction$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(_i1.Unit),
          ),
        ApiAuthorizationModeSdkUnknown$(:final value) => value,
      },
    ];
  }
}
