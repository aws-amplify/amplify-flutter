// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_provider_custom.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthProviderCustom extends AuthProviderCustom {
  @override
  final String developerProvidedName;

  factory _$AuthProviderCustom(
          [void Function(AuthProviderCustomBuilder)? updates]) =>
      (new AuthProviderCustomBuilder()..update(updates))._build();

  _$AuthProviderCustom._({required this.developerProvidedName}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        developerProvidedName, r'AuthProviderCustom', 'developerProvidedName');
  }

  @override
  AuthProviderCustom rebuild(
          void Function(AuthProviderCustomBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthProviderCustomBuilder toBuilder() =>
      new AuthProviderCustomBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthProviderCustom &&
        developerProvidedName == other.developerProvidedName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, developerProvidedName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AuthProviderCustomBuilder
    implements Builder<AuthProviderCustom, AuthProviderCustomBuilder> {
  _$AuthProviderCustom? _$v;

  String? _developerProvidedName;
  String? get developerProvidedName => _$this._developerProvidedName;
  set developerProvidedName(String? developerProvidedName) =>
      _$this._developerProvidedName = developerProvidedName;

  AuthProviderCustomBuilder();

  AuthProviderCustomBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _developerProvidedName = $v.developerProvidedName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthProviderCustom other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthProviderCustom;
  }

  @override
  void update(void Function(AuthProviderCustomBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthProviderCustom build() => _build();

  _$AuthProviderCustom _build() {
    final _$result = _$v ??
        new _$AuthProviderCustom._(
            developerProvidedName: BuiltValueNullFieldError.checkNotNull(
                developerProvidedName,
                r'AuthProviderCustom',
                'developerProvidedName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
