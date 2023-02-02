// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.revoke_token_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RevokeTokenResponse extends RevokeTokenResponse {
  factory _$RevokeTokenResponse(
          [void Function(RevokeTokenResponseBuilder)? updates]) =>
      (new RevokeTokenResponseBuilder()..update(updates))._build();

  _$RevokeTokenResponse._() : super._();

  @override
  RevokeTokenResponse rebuild(
          void Function(RevokeTokenResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RevokeTokenResponseBuilder toBuilder() =>
      new RevokeTokenResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RevokeTokenResponse;
  }

  @override
  int get hashCode {
    return 517028288;
  }
}

class RevokeTokenResponseBuilder
    implements Builder<RevokeTokenResponse, RevokeTokenResponseBuilder> {
  _$RevokeTokenResponse? _$v;

  RevokeTokenResponseBuilder() {
    RevokeTokenResponse._init(this);
  }

  @override
  void replace(RevokeTokenResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RevokeTokenResponse;
  }

  @override
  void update(void Function(RevokeTokenResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RevokeTokenResponse build() => _build();

  _$RevokeTokenResponse _build() {
    final _$result = _$v ?? new _$RevokeTokenResponse._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
