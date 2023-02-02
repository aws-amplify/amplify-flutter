// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.get_user_request;

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
        accessToken, r'GetUserRequest', 'accessToken');
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
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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
                accessToken, r'GetUserRequest', 'accessToken'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
