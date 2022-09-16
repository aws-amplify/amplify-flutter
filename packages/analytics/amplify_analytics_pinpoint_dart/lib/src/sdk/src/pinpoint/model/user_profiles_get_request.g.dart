// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.user_profiles_get_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserProfilesGetRequest extends UserProfilesGetRequest {
  @override
  final _i2.BuiltList<String>? userIds;

  factory _$UserProfilesGetRequest(
          [void Function(UserProfilesGetRequestBuilder)? updates]) =>
      (new UserProfilesGetRequestBuilder()..update(updates))._build();

  _$UserProfilesGetRequest._({this.userIds}) : super._();

  @override
  UserProfilesGetRequest rebuild(
          void Function(UserProfilesGetRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserProfilesGetRequestBuilder toBuilder() =>
      new UserProfilesGetRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserProfilesGetRequest && userIds == other.userIds;
  }

  @override
  int get hashCode {
    return $jf($jc(0, userIds.hashCode));
  }
}

class UserProfilesGetRequestBuilder
    implements Builder<UserProfilesGetRequest, UserProfilesGetRequestBuilder> {
  _$UserProfilesGetRequest? _$v;

  _i2.ListBuilder<String>? _userIds;
  _i2.ListBuilder<String> get userIds =>
      _$this._userIds ??= new _i2.ListBuilder<String>();
  set userIds(_i2.ListBuilder<String>? userIds) => _$this._userIds = userIds;

  UserProfilesGetRequestBuilder() {
    UserProfilesGetRequest._init(this);
  }

  UserProfilesGetRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userIds = $v.userIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserProfilesGetRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserProfilesGetRequest;
  }

  @override
  void update(void Function(UserProfilesGetRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserProfilesGetRequest build() => _build();

  _$UserProfilesGetRequest _build() {
    _$UserProfilesGetRequest _$result;
    try {
      _$result =
          _$v ?? new _$UserProfilesGetRequest._(userIds: _userIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userIds';
        _userIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UserProfilesGetRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
