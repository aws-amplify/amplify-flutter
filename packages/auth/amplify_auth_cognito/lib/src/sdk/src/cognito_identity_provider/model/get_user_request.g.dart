// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity_provider.model.get_user_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetUserRequest extends GetUserRequest {
  @override
  final String accessToken;

  factory _$GetUserRequest([void Function(GetUserRequestBuilder)? updates]) =>
      (new GetUserRequestBuilder()..update(updates))._build();

  _$GetUserRequest._({required this.accessToken}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accessToken, 'GetUserRequest', 'accessToken');
  }

  @override
  GetUserRequest rebuild(void Function(GetUserRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUserRequestBuilder toBuilder() =>
      new GetUserRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUserRequest && accessToken == other.accessToken;
  }

  @override
  int get hashCode {
    return $jf($jc(0, accessToken.hashCode));
  }
}

class GetUserRequestBuilder
    implements Builder<GetUserRequest, GetUserRequestBuilder> {
  _$GetUserRequest? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  GetUserRequestBuilder() {
    GetUserRequest._init(this);
  }

  GetUserRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetUserRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetUserRequest;
  }

  @override
  void update(void Function(GetUserRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetUserRequest build() => _build();

  _$GetUserRequest _build() {
    final _$result = _$v ??
        new _$GetUserRequest._(
            accessToken: BuiltValueNullFieldError.checkNotNull(
                accessToken, 'GetUserRequest', 'accessToken'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
