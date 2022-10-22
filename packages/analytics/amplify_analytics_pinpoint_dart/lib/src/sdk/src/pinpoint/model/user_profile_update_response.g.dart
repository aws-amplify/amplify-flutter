// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.user_profile_update_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserProfileUpdateResponse extends UserProfileUpdateResponse {
  @override
  final _i2.BuiltList<_i3.PublicEndpoint>? endpoints;
  @override
  final _i4.User? user;

  factory _$UserProfileUpdateResponse(
          [void Function(UserProfileUpdateResponseBuilder)? updates]) =>
      (new UserProfileUpdateResponseBuilder()..update(updates))._build();

  _$UserProfileUpdateResponse._({this.endpoints, this.user}) : super._();

  @override
  UserProfileUpdateResponse rebuild(
          void Function(UserProfileUpdateResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserProfileUpdateResponseBuilder toBuilder() =>
      new UserProfileUpdateResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserProfileUpdateResponse &&
        endpoints == other.endpoints &&
        user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, endpoints.hashCode), user.hashCode));
  }
}

class UserProfileUpdateResponseBuilder
    implements
        Builder<UserProfileUpdateResponse, UserProfileUpdateResponseBuilder> {
  _$UserProfileUpdateResponse? _$v;

  _i2.ListBuilder<_i3.PublicEndpoint>? _endpoints;
  _i2.ListBuilder<_i3.PublicEndpoint> get endpoints =>
      _$this._endpoints ??= new _i2.ListBuilder<_i3.PublicEndpoint>();
  set endpoints(_i2.ListBuilder<_i3.PublicEndpoint>? endpoints) =>
      _$this._endpoints = endpoints;

  _i4.UserBuilder? _user;
  _i4.UserBuilder get user => _$this._user ??= new _i4.UserBuilder();
  set user(_i4.UserBuilder? user) => _$this._user = user;

  UserProfileUpdateResponseBuilder() {
    UserProfileUpdateResponse._init(this);
  }

  UserProfileUpdateResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _endpoints = $v.endpoints?.toBuilder();
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserProfileUpdateResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserProfileUpdateResponse;
  }

  @override
  void update(void Function(UserProfileUpdateResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserProfileUpdateResponse build() => _build();

  _$UserProfileUpdateResponse _build() {
    _$UserProfileUpdateResponse _$result;
    try {
      _$result = _$v ??
          new _$UserProfileUpdateResponse._(
              endpoints: _endpoints?.build(), user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'endpoints';
        _endpoints?.build();
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UserProfileUpdateResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
