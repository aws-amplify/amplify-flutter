// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.update_user_profile_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateUserProfileResponse extends UpdateUserProfileResponse {
  @override
  final _i3.UserProfileUpdateResponse userProfileUpdateResponse;

  factory _$UpdateUserProfileResponse(
          [void Function(UpdateUserProfileResponseBuilder)? updates]) =>
      (new UpdateUserProfileResponseBuilder()..update(updates))._build();

  _$UpdateUserProfileResponse._({required this.userProfileUpdateResponse})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(userProfileUpdateResponse,
        r'UpdateUserProfileResponse', 'userProfileUpdateResponse');
  }

  @override
  UpdateUserProfileResponse rebuild(
          void Function(UpdateUserProfileResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateUserProfileResponseBuilder toBuilder() =>
      new UpdateUserProfileResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateUserProfileResponse &&
        userProfileUpdateResponse == other.userProfileUpdateResponse;
  }

  @override
  int get hashCode {
    return $jf($jc(0, userProfileUpdateResponse.hashCode));
  }
}

class UpdateUserProfileResponseBuilder
    implements
        Builder<UpdateUserProfileResponse, UpdateUserProfileResponseBuilder> {
  _$UpdateUserProfileResponse? _$v;

  _i3.UserProfileUpdateResponseBuilder? _userProfileUpdateResponse;
  _i3.UserProfileUpdateResponseBuilder get userProfileUpdateResponse =>
      _$this._userProfileUpdateResponse ??=
          new _i3.UserProfileUpdateResponseBuilder();
  set userProfileUpdateResponse(
          _i3.UserProfileUpdateResponseBuilder? userProfileUpdateResponse) =>
      _$this._userProfileUpdateResponse = userProfileUpdateResponse;

  UpdateUserProfileResponseBuilder() {
    UpdateUserProfileResponse._init(this);
  }

  UpdateUserProfileResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userProfileUpdateResponse = $v.userProfileUpdateResponse.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateUserProfileResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateUserProfileResponse;
  }

  @override
  void update(void Function(UpdateUserProfileResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateUserProfileResponse build() => _build();

  _$UpdateUserProfileResponse _build() {
    _$UpdateUserProfileResponse _$result;
    try {
      _$result = _$v ??
          new _$UpdateUserProfileResponse._(
              userProfileUpdateResponse: userProfileUpdateResponse.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userProfileUpdateResponse';
        userProfileUpdateResponse.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateUserProfileResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
