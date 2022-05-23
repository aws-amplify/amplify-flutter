// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity_provider.model.delete_user_request;

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
        accessToken, 'DeleteUserRequest', 'accessToken');
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
    return $jf($jc(0, accessToken.hashCode));
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
                accessToken, 'DeleteUserRequest', 'accessToken'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
