// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.delete_user_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteUserRequest extends DeleteUserRequest {
  @override
  final String accessToken;

  factory _$DeleteUserRequest(
          [void Function(DeleteUserRequestBuilder)? updates]) =>
      (new DeleteUserRequestBuilder()..update(updates))._build();

  _$DeleteUserRequest._({required this.accessToken}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accessToken, r'DeleteUserRequest', 'accessToken');
  }

  @override
  DeleteUserRequest rebuild(void Function(DeleteUserRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteUserRequestBuilder toBuilder() =>
      new DeleteUserRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteUserRequest && accessToken == other.accessToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteUserRequestBuilder
    implements Builder<DeleteUserRequest, DeleteUserRequestBuilder> {
  _$DeleteUserRequest? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  DeleteUserRequestBuilder() {
    DeleteUserRequest._init(this);
  }

  DeleteUserRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteUserRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteUserRequest;
  }

  @override
  void update(void Function(DeleteUserRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteUserRequest build() => _build();

  _$DeleteUserRequest _build() {
    final _$result = _$v ??
        new _$DeleteUserRequest._(
            accessToken: BuiltValueNullFieldError.checkNotNull(
                accessToken, r'DeleteUserRequest', 'accessToken'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
