// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.user_profiles_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserProfilesResponse extends UserProfilesResponse {
  @override
  final _i2.BuiltList<_i3.UserBatchFailure>? failures;
  @override
  final _i2.BuiltList<_i4.UserProfile>? userProfiles;

  factory _$UserProfilesResponse(
          [void Function(UserProfilesResponseBuilder)? updates]) =>
      (new UserProfilesResponseBuilder()..update(updates))._build();

  _$UserProfilesResponse._({this.failures, this.userProfiles}) : super._();

  @override
  UserProfilesResponse rebuild(
          void Function(UserProfilesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserProfilesResponseBuilder toBuilder() =>
      new UserProfilesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserProfilesResponse &&
        failures == other.failures &&
        userProfiles == other.userProfiles;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, failures.hashCode), userProfiles.hashCode));
  }
}

class UserProfilesResponseBuilder
    implements Builder<UserProfilesResponse, UserProfilesResponseBuilder> {
  _$UserProfilesResponse? _$v;

  _i2.ListBuilder<_i3.UserBatchFailure>? _failures;
  _i2.ListBuilder<_i3.UserBatchFailure> get failures =>
      _$this._failures ??= new _i2.ListBuilder<_i3.UserBatchFailure>();
  set failures(_i2.ListBuilder<_i3.UserBatchFailure>? failures) =>
      _$this._failures = failures;

  _i2.ListBuilder<_i4.UserProfile>? _userProfiles;
  _i2.ListBuilder<_i4.UserProfile> get userProfiles =>
      _$this._userProfiles ??= new _i2.ListBuilder<_i4.UserProfile>();
  set userProfiles(_i2.ListBuilder<_i4.UserProfile>? userProfiles) =>
      _$this._userProfiles = userProfiles;

  UserProfilesResponseBuilder() {
    UserProfilesResponse._init(this);
  }

  UserProfilesResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _failures = $v.failures?.toBuilder();
      _userProfiles = $v.userProfiles?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserProfilesResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserProfilesResponse;
  }

  @override
  void update(void Function(UserProfilesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserProfilesResponse build() => _build();

  _$UserProfilesResponse _build() {
    _$UserProfilesResponse _$result;
    try {
      _$result = _$v ??
          new _$UserProfilesResponse._(
              failures: _failures?.build(),
              userProfiles: _userProfiles?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'failures';
        _failures?.build();
        _$failedField = 'userProfiles';
        _userProfiles?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UserProfilesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
