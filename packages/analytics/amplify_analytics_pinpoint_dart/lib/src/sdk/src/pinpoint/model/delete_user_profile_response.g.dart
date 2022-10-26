// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.delete_user_profile_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteUserProfileResponse extends DeleteUserProfileResponse {
  @override
  final _i3.UserProfileUpdateResponse userProfileUpdateResponse;

  factory _$DeleteUserProfileResponse(
          [void Function(DeleteUserProfileResponseBuilder)? updates]) =>
      (new DeleteUserProfileResponseBuilder()..update(updates))._build();

  _$DeleteUserProfileResponse._({required this.userProfileUpdateResponse})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(userProfileUpdateResponse,
        r'DeleteUserProfileResponse', 'userProfileUpdateResponse');
  }

  @override
  DeleteUserProfileResponse rebuild(
          void Function(DeleteUserProfileResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteUserProfileResponseBuilder toBuilder() =>
      new DeleteUserProfileResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteUserProfileResponse &&
        userProfileUpdateResponse == other.userProfileUpdateResponse;
  }

  @override
  int get hashCode {
    return $jf($jc(0, userProfileUpdateResponse.hashCode));
  }
}

class DeleteUserProfileResponseBuilder
    implements
        Builder<DeleteUserProfileResponse, DeleteUserProfileResponseBuilder> {
  _$DeleteUserProfileResponse? _$v;

  _i3.UserProfileUpdateResponseBuilder? _userProfileUpdateResponse;
  _i3.UserProfileUpdateResponseBuilder get userProfileUpdateResponse =>
      _$this._userProfileUpdateResponse ??=
          new _i3.UserProfileUpdateResponseBuilder();
  set userProfileUpdateResponse(
          _i3.UserProfileUpdateResponseBuilder? userProfileUpdateResponse) =>
      _$this._userProfileUpdateResponse = userProfileUpdateResponse;

  DeleteUserProfileResponseBuilder() {
    DeleteUserProfileResponse._init(this);
  }

  DeleteUserProfileResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userProfileUpdateResponse = $v.userProfileUpdateResponse.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteUserProfileResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteUserProfileResponse;
  }

  @override
  void update(void Function(DeleteUserProfileResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteUserProfileResponse build() => _build();

  _$DeleteUserProfileResponse _build() {
    _$DeleteUserProfileResponse _$result;
    try {
      _$result = _$v ??
          new _$DeleteUserProfileResponse._(
              userProfileUpdateResponse: userProfileUpdateResponse.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userProfileUpdateResponse';
        userProfileUpdateResponse.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteUserProfileResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
