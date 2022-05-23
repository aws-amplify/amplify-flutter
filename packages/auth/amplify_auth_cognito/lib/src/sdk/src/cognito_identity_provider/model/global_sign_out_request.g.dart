// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity_provider.model.global_sign_out_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GlobalSignOutRequest extends GlobalSignOutRequest {
  @override
  final String accessToken;

  factory _$GlobalSignOutRequest(
          [void Function(GlobalSignOutRequestBuilder)? updates]) =>
      (new GlobalSignOutRequestBuilder()..update(updates))._build();

  _$GlobalSignOutRequest._({required this.accessToken}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accessToken, 'GlobalSignOutRequest', 'accessToken');
  }

  @override
  GlobalSignOutRequest rebuild(
          void Function(GlobalSignOutRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlobalSignOutRequestBuilder toBuilder() =>
      new GlobalSignOutRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlobalSignOutRequest && accessToken == other.accessToken;
  }

  @override
  int get hashCode {
    return $jf($jc(0, accessToken.hashCode));
  }
}

class GlobalSignOutRequestBuilder
    implements Builder<GlobalSignOutRequest, GlobalSignOutRequestBuilder> {
  _$GlobalSignOutRequest? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  GlobalSignOutRequestBuilder() {
    GlobalSignOutRequest._init(this);
  }

  GlobalSignOutRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlobalSignOutRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlobalSignOutRequest;
  }

  @override
  void update(void Function(GlobalSignOutRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlobalSignOutRequest build() => _build();

  _$GlobalSignOutRequest _build() {
    final _$result = _$v ??
        new _$GlobalSignOutRequest._(
            accessToken: BuiltValueNullFieldError.checkNotNull(
                accessToken, 'GlobalSignOutRequest', 'accessToken'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
