// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity_provider.model.device_secret_verifier_config_type;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeviceSecretVerifierConfigType extends DeviceSecretVerifierConfigType {
  @override
  final String? passwordVerifier;
  @override
  final String? salt;

  factory _$DeviceSecretVerifierConfigType(
          [void Function(DeviceSecretVerifierConfigTypeBuilder)? updates]) =>
      (new DeviceSecretVerifierConfigTypeBuilder()..update(updates))._build();

  _$DeviceSecretVerifierConfigType._({this.passwordVerifier, this.salt})
      : super._();

  @override
  DeviceSecretVerifierConfigType rebuild(
          void Function(DeviceSecretVerifierConfigTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeviceSecretVerifierConfigTypeBuilder toBuilder() =>
      new DeviceSecretVerifierConfigTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeviceSecretVerifierConfigType &&
        passwordVerifier == other.passwordVerifier &&
        salt == other.salt;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, passwordVerifier.hashCode), salt.hashCode));
  }
}

class DeviceSecretVerifierConfigTypeBuilder
    implements
        Builder<DeviceSecretVerifierConfigType,
            DeviceSecretVerifierConfigTypeBuilder> {
  _$DeviceSecretVerifierConfigType? _$v;

  String? _passwordVerifier;
  String? get passwordVerifier => _$this._passwordVerifier;
  set passwordVerifier(String? passwordVerifier) =>
      _$this._passwordVerifier = passwordVerifier;

  String? _salt;
  String? get salt => _$this._salt;
  set salt(String? salt) => _$this._salt = salt;

  DeviceSecretVerifierConfigTypeBuilder() {
    DeviceSecretVerifierConfigType._init(this);
  }

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
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeviceSecretVerifierConfigType;
  }

  @override
  void update(void Function(DeviceSecretVerifierConfigTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeviceSecretVerifierConfigType build() => _build();

  _$DeviceSecretVerifierConfigType _build() {
    final _$result = _$v ??
        new _$DeviceSecretVerifierConfigType._(
            passwordVerifier: passwordVerifier, salt: salt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
