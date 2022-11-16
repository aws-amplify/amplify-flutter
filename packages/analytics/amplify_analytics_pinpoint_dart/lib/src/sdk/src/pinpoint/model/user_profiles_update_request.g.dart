// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.user_profiles_update_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserProfilesUpdateRequest extends UserProfilesUpdateRequest {
  @override
  final _i2.BuiltList<_i3.UserProfile>? userProfiles;

  factory _$UserProfilesUpdateRequest(
          [void Function(UserProfilesUpdateRequestBuilder)? updates]) =>
      (new UserProfilesUpdateRequestBuilder()..update(updates))._build();

  _$UserProfilesUpdateRequest._({this.userProfiles}) : super._();

  @override
  UserProfilesUpdateRequest rebuild(
          void Function(UserProfilesUpdateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserProfilesUpdateRequestBuilder toBuilder() =>
      new UserProfilesUpdateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserProfilesUpdateRequest &&
        userProfiles == other.userProfiles;
  }

  @override
  int get hashCode {
    return $jf($jc(0, userProfiles.hashCode));
  }
}

class UserProfilesUpdateRequestBuilder
    implements
        Builder<UserProfilesUpdateRequest, UserProfilesUpdateRequestBuilder> {
  _$UserProfilesUpdateRequest? _$v;

  _i2.ListBuilder<_i3.UserProfile>? _userProfiles;
  _i2.ListBuilder<_i3.UserProfile> get userProfiles =>
      _$this._userProfiles ??= new _i2.ListBuilder<_i3.UserProfile>();
  set userProfiles(_i2.ListBuilder<_i3.UserProfile>? userProfiles) =>
      _$this._userProfiles = userProfiles;

  UserProfilesUpdateRequestBuilder() {
    UserProfilesUpdateRequest._init(this);
  }

  UserProfilesUpdateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userProfiles = $v.userProfiles?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserProfilesUpdateRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserProfilesUpdateRequest;
  }

  @override
  void update(void Function(UserProfilesUpdateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserProfilesUpdateRequest build() => _build();

  _$UserProfilesUpdateRequest _build() {
    _$UserProfilesUpdateRequest _$result;
    try {
      _$result = _$v ??
          new _$UserProfilesUpdateRequest._(
              userProfiles: _userProfiles?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userProfiles';
        _userProfiles?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UserProfilesUpdateRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
