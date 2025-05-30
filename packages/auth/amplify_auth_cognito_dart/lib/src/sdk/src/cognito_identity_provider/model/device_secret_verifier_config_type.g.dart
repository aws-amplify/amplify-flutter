// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_secret_verifier_config_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeviceSecretVerifierConfigType extends DeviceSecretVerifierConfigType {
  @override
  final String? passwordVerifier;
  @override
  final String? salt;

  factory _$DeviceSecretVerifierConfigType([
    void Function(DeviceSecretVerifierConfigTypeBuilder)? updates,
  ]) => (DeviceSecretVerifierConfigTypeBuilder()..update(updates))._build();

  _$DeviceSecretVerifierConfigType._({this.passwordVerifier, this.salt})
    : super._();
  @override
  DeviceSecretVerifierConfigType rebuild(
    void Function(DeviceSecretVerifierConfigTypeBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DeviceSecretVerifierConfigTypeBuilder toBuilder() =>
      DeviceSecretVerifierConfigTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeviceSecretVerifierConfigType &&
        passwordVerifier == other.passwordVerifier &&
        salt == other.salt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, passwordVerifier.hashCode);
    _$hash = $jc(_$hash, salt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeviceSecretVerifierConfigTypeBuilder
    implements
        Builder<
          DeviceSecretVerifierConfigType,
          DeviceSecretVerifierConfigTypeBuilder
        > {
  _$DeviceSecretVerifierConfigType? _$v;

  String? _passwordVerifier;
  String? get passwordVerifier => _$this._passwordVerifier;
  set passwordVerifier(String? passwordVerifier) =>
      _$this._passwordVerifier = passwordVerifier;

  String? _salt;
  String? get salt => _$this._salt;
  set salt(String? salt) => _$this._salt = salt;

  DeviceSecretVerifierConfigTypeBuilder();

  DeviceSecretVerifierConfigTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _passwordVerifier = $v.passwordVerifier;
      _salt = $v.salt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeviceSecretVerifierConfigType other) {
    _$v = other as _$DeviceSecretVerifierConfigType;
  }

  @override
  void update(void Function(DeviceSecretVerifierConfigTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeviceSecretVerifierConfigType build() => _build();

  _$DeviceSecretVerifierConfigType _build() {
    final _$result =
        _$v ??
        _$DeviceSecretVerifierConfigType._(
          passwordVerifier: passwordVerifier,
          salt: salt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
