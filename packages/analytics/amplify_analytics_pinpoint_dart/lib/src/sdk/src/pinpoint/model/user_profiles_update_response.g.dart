// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.user_profiles_update_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserProfilesUpdateResponse extends UserProfilesUpdateResponse {
  @override
  final _i2.BuiltList<_i3.UserBatchFailure>? failures;
  @override
  final _i2.BuiltList<String>? userIds;

  factory _$UserProfilesUpdateResponse(
          [void Function(UserProfilesUpdateResponseBuilder)? updates]) =>
      (new UserProfilesUpdateResponseBuilder()..update(updates))._build();

  _$UserProfilesUpdateResponse._({this.failures, this.userIds}) : super._();

  @override
  UserProfilesUpdateResponse rebuild(
          void Function(UserProfilesUpdateResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserProfilesUpdateResponseBuilder toBuilder() =>
      new UserProfilesUpdateResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserProfilesUpdateResponse &&
        failures == other.failures &&
        userIds == other.userIds;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, failures.hashCode), userIds.hashCode));
  }
}

class UserProfilesUpdateResponseBuilder
    implements
        Builder<UserProfilesUpdateResponse, UserProfilesUpdateResponseBuilder> {
  _$UserProfilesUpdateResponse? _$v;

  _i2.ListBuilder<_i3.UserBatchFailure>? _failures;
  _i2.ListBuilder<_i3.UserBatchFailure> get failures =>
      _$this._failures ??= new _i2.ListBuilder<_i3.UserBatchFailure>();
  set failures(_i2.ListBuilder<_i3.UserBatchFailure>? failures) =>
      _$this._failures = failures;

  _i2.ListBuilder<String>? _userIds;
  _i2.ListBuilder<String> get userIds =>
      _$this._userIds ??= new _i2.ListBuilder<String>();
  set userIds(_i2.ListBuilder<String>? userIds) => _$this._userIds = userIds;

  UserProfilesUpdateResponseBuilder() {
    UserProfilesUpdateResponse._init(this);
  }

  UserProfilesUpdateResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _failures = $v.failures?.toBuilder();
      _userIds = $v.userIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserProfilesUpdateResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserProfilesUpdateResponse;
  }

  @override
  void update(void Function(UserProfilesUpdateResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserProfilesUpdateResponse build() => _build();

  _$UserProfilesUpdateResponse _build() {
    _$UserProfilesUpdateResponse _$result;
    try {
      _$result = _$v ??
          new _$UserProfilesUpdateResponse._(
              failures: _failures?.build(), userIds: _userIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'failures';
        _failures?.build();
        _$failedField = 'userIds';
        _userIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UserProfilesUpdateResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
