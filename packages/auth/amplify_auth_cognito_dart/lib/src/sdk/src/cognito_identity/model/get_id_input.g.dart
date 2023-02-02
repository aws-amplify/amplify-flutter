// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity.model.get_id_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetIdInput extends GetIdInput {
  @override
  final String? accountId;
  @override
  final String identityPoolId;
  @override
  final _i3.BuiltMap<String, String>? logins;

  factory _$GetIdInput([void Function(GetIdInputBuilder)? updates]) =>
      (new GetIdInputBuilder()..update(updates))._build();

  _$GetIdInput._({this.accountId, required this.identityPoolId, this.logins})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        identityPoolId, r'GetIdInput', 'identityPoolId');
  }

  @override
  GetIdInput rebuild(void Function(GetIdInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetIdInputBuilder toBuilder() => new GetIdInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetIdInput &&
        accountId == other.accountId &&
        identityPoolId == other.identityPoolId &&
        logins == other.logins;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, identityPoolId.hashCode);
    _$hash = $jc(_$hash, logins.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetIdInputBuilder implements Builder<GetIdInput, GetIdInputBuilder> {
  _$GetIdInput? _$v;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  String? _identityPoolId;
  String? get identityPoolId => _$this._identityPoolId;
  set identityPoolId(String? identityPoolId) =>
      _$this._identityPoolId = identityPoolId;

  _i3.MapBuilder<String, String>? _logins;
  _i3.MapBuilder<String, String> get logins =>
      _$this._logins ??= new _i3.MapBuilder<String, String>();
  set logins(_i3.MapBuilder<String, String>? logins) => _$this._logins = logins;

  GetIdInputBuilder() {
    GetIdInput._init(this);
  }

  GetIdInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _identityPoolId = $v.identityPoolId;
      _logins = $v.logins?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetIdInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetIdInput;
  }

  @override
  void update(void Function(GetIdInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetIdInput build() => _build();

  _$GetIdInput _build() {
    _$GetIdInput _$result;
    try {
      _$result = _$v ??
          new _$GetIdInput._(
              accountId: accountId,
              identityPoolId: BuiltValueNullFieldError.checkNotNull(
                  identityPoolId, r'GetIdInput', 'identityPoolId'),
              logins: _logins?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'logins';
        _logins?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetIdInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
