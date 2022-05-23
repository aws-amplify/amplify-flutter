// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity.model.get_credentials_for_identity_input;

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
        identityId, 'GetCredentialsForIdentityInput', 'identityId');
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
    return $jf($jc($jc($jc(0, customRoleArn.hashCode), identityId.hashCode),
        logins.hashCode));
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
                  identityId, 'GetCredentialsForIdentityInput', 'identityId'),
              logins: _logins?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'logins';
        _logins?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GetCredentialsForIdentityInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
