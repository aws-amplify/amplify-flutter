// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.user_profile_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserProfileResponse extends UserProfileResponse {
  @override
  final String? applicationId;
  @override
  final _i2.BuiltList<_i3.PublicEndpoint>? endpoints;
  @override
  final _i4.User? user;
  @override
  final String? userId;

  factory _$UserProfileResponse(
          [void Function(UserProfileResponseBuilder)? updates]) =>
      (new UserProfileResponseBuilder()..update(updates))._build();

  _$UserProfileResponse._(
      {this.applicationId, this.endpoints, this.user, this.userId})
      : super._();

  @override
  UserProfileResponse rebuild(
          void Function(UserProfileResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserProfileResponseBuilder toBuilder() =>
      new UserProfileResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserProfileResponse &&
        applicationId == other.applicationId &&
        endpoints == other.endpoints &&
        user == other.user &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, applicationId.hashCode), endpoints.hashCode),
            user.hashCode),
        userId.hashCode));
  }
}

class UserProfileResponseBuilder
    implements Builder<UserProfileResponse, UserProfileResponseBuilder> {
  _$UserProfileResponse? _$v;

  String? _applicationId;
  String? get applicationId => _$this._applicationId;
  set applicationId(String? applicationId) =>
      _$this._applicationId = applicationId;

  _i2.ListBuilder<_i3.PublicEndpoint>? _endpoints;
  _i2.ListBuilder<_i3.PublicEndpoint> get endpoints =>
      _$this._endpoints ??= new _i2.ListBuilder<_i3.PublicEndpoint>();
  set endpoints(_i2.ListBuilder<_i3.PublicEndpoint>? endpoints) =>
      _$this._endpoints = endpoints;

  _i4.UserBuilder? _user;
  _i4.UserBuilder get user => _$this._user ??= new _i4.UserBuilder();
  set user(_i4.UserBuilder? user) => _$this._user = user;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  UserProfileResponseBuilder() {
    UserProfileResponse._init(this);
  }

  UserProfileResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _applicationId = $v.applicationId;
      _endpoints = $v.endpoints?.toBuilder();
      _user = $v.user?.toBuilder();
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserProfileResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserProfileResponse;
  }

  @override
  void update(void Function(UserProfileResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserProfileResponse build() => _build();

  _$UserProfileResponse _build() {
    _$UserProfileResponse _$result;
    try {
      _$result = _$v ??
          new _$UserProfileResponse._(
              applicationId: applicationId,
              endpoints: _endpoints?.build(),
              user: _user?.build(),
              userId: userId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'endpoints';
        _endpoints?.build();
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UserProfileResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
