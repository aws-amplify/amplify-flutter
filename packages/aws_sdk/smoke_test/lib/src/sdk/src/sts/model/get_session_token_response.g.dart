// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.sts.model.get_session_token_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetSessionTokenResponse extends GetSessionTokenResponse {
  @override
  final _i2.Credentials? credentials;

  factory _$GetSessionTokenResponse(
          [void Function(GetSessionTokenResponseBuilder)? updates]) =>
      (new GetSessionTokenResponseBuilder()..update(updates))._build();

  _$GetSessionTokenResponse._({this.credentials}) : super._();

  @override
  GetSessionTokenResponse rebuild(
          void Function(GetSessionTokenResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetSessionTokenResponseBuilder toBuilder() =>
      new GetSessionTokenResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetSessionTokenResponse && credentials == other.credentials;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, credentials.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetSessionTokenResponseBuilder
    implements
        Builder<GetSessionTokenResponse, GetSessionTokenResponseBuilder> {
  _$GetSessionTokenResponse? _$v;

  _i2.CredentialsBuilder? _credentials;
  _i2.CredentialsBuilder get credentials =>
      _$this._credentials ??= new _i2.CredentialsBuilder();
  set credentials(_i2.CredentialsBuilder? credentials) =>
      _$this._credentials = credentials;

  GetSessionTokenResponseBuilder() {
    GetSessionTokenResponse._init(this);
  }

  GetSessionTokenResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _credentials = $v.credentials?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetSessionTokenResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetSessionTokenResponse;
  }

  @override
  void update(void Function(GetSessionTokenResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetSessionTokenResponse build() => _build();

  _$GetSessionTokenResponse _build() {
    _$GetSessionTokenResponse _$result;
    try {
      _$result = _$v ??
          new _$GetSessionTokenResponse._(credentials: _credentials?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'credentials';
        _credentials?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetSessionTokenResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
