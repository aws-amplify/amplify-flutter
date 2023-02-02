// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity.model.get_credentials_for_identity_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCredentialsForIdentityInput extends GetCredentialsForIdentityInput {
  @override
  final String? customRoleArn;
  @override
  final String identityId;
  @override
  final _i3.BuiltMap<String, String>? logins;

  factory _$GetCredentialsForIdentityInput(
          [void Function(GetCredentialsForIdentityInputBuilder)? updates]) =>
      (new GetCredentialsForIdentityInputBuilder()..update(updates))._build();

  _$GetCredentialsForIdentityInput._(
      {this.customRoleArn, required this.identityId, this.logins})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        identityId, r'GetCredentialsForIdentityInput', 'identityId');
  }

  @override
  GetCredentialsForIdentityInput rebuild(
          void Function(GetCredentialsForIdentityInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCredentialsForIdentityInputBuilder toBuilder() =>
      new GetCredentialsForIdentityInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCredentialsForIdentityInput &&
        customRoleArn == other.customRoleArn &&
        identityId == other.identityId &&
        logins == other.logins;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customRoleArn.hashCode);
    _$hash = $jc(_$hash, identityId.hashCode);
    _$hash = $jc(_$hash, logins.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetCredentialsForIdentityInputBuilder
    implements
        Builder<GetCredentialsForIdentityInput,
            GetCredentialsForIdentityInputBuilder> {
  _$GetCredentialsForIdentityInput? _$v;

  String? _customRoleArn;
  String? get customRoleArn => _$this._customRoleArn;
  set customRoleArn(String? customRoleArn) =>
      _$this._customRoleArn = customRoleArn;

  String? _identityId;
  String? get identityId => _$this._identityId;
  set identityId(String? identityId) => _$this._identityId = identityId;

  _i3.MapBuilder<String, String>? _logins;
  _i3.MapBuilder<String, String> get logins =>
      _$this._logins ??= new _i3.MapBuilder<String, String>();
  set logins(_i3.MapBuilder<String, String>? logins) => _$this._logins = logins;

  GetCredentialsForIdentityInputBuilder() {
    GetCredentialsForIdentityInput._init(this);
  }

  GetCredentialsForIdentityInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customRoleArn = $v.customRoleArn;
      _identityId = $v.identityId;
      _logins = $v.logins?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCredentialsForIdentityInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetCredentialsForIdentityInput;
  }

  @override
  void update(void Function(GetCredentialsForIdentityInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetCredentialsForIdentityInput build() => _build();

  _$GetCredentialsForIdentityInput _build() {
    _$GetCredentialsForIdentityInput _$result;
    try {
      _$result = _$v ??
          new _$GetCredentialsForIdentityInput._(
              customRoleArn: customRoleArn,
              identityId: BuiltValueNullFieldError.checkNotNull(
                  identityId, r'GetCredentialsForIdentityInput', 'identityId'),
              logins: _logins?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'logins';
        _logins?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetCredentialsForIdentityInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
