// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_tokens_from_refresh_token_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetTokensFromRefreshTokenResponse
    extends GetTokensFromRefreshTokenResponse {
  @override
  final AuthenticationResultType? authenticationResult;

  factory _$GetTokensFromRefreshTokenResponse([
    void Function(GetTokensFromRefreshTokenResponseBuilder)? updates,
  ]) => (GetTokensFromRefreshTokenResponseBuilder()..update(updates))._build();

  _$GetTokensFromRefreshTokenResponse._({this.authenticationResult})
    : super._();
  @override
  GetTokensFromRefreshTokenResponse rebuild(
    void Function(GetTokensFromRefreshTokenResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetTokensFromRefreshTokenResponseBuilder toBuilder() =>
      GetTokensFromRefreshTokenResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetTokensFromRefreshTokenResponse &&
        authenticationResult == other.authenticationResult;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, authenticationResult.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetTokensFromRefreshTokenResponseBuilder
    implements
        Builder<
          GetTokensFromRefreshTokenResponse,
          GetTokensFromRefreshTokenResponseBuilder
        > {
  _$GetTokensFromRefreshTokenResponse? _$v;

  AuthenticationResultTypeBuilder? _authenticationResult;
  AuthenticationResultTypeBuilder get authenticationResult =>
      _$this._authenticationResult ??= AuthenticationResultTypeBuilder();
  set authenticationResult(
    AuthenticationResultTypeBuilder? authenticationResult,
  ) => _$this._authenticationResult = authenticationResult;

  GetTokensFromRefreshTokenResponseBuilder();

  GetTokensFromRefreshTokenResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authenticationResult = $v.authenticationResult?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetTokensFromRefreshTokenResponse other) {
    _$v = other as _$GetTokensFromRefreshTokenResponse;
  }

  @override
  void update(
    void Function(GetTokensFromRefreshTokenResponseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GetTokensFromRefreshTokenResponse build() => _build();

  _$GetTokensFromRefreshTokenResponse _build() {
    _$GetTokensFromRefreshTokenResponse _$result;
    try {
      _$result =
          _$v ??
          _$GetTokensFromRefreshTokenResponse._(
            authenticationResult: _authenticationResult?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'authenticationResult';
        _authenticationResult?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GetTokensFromRefreshTokenResponse',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
