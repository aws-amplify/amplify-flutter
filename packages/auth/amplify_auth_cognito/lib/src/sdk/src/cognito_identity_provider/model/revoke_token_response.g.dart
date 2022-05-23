// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity_provider.model.revoke_token_response;

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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
