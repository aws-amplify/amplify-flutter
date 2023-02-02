// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.global_sign_out_request;

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
        accessToken, r'GlobalSignOutRequest', 'accessToken');
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
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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
                accessToken, r'GlobalSignOutRequest', 'accessToken'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
