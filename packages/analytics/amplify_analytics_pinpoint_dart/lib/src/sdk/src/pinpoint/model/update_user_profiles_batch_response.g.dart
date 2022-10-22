// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.update_user_profiles_batch_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateUserProfilesBatchResponse
    extends UpdateUserProfilesBatchResponse {
  @override
  final _i3.UserProfilesUpdateResponse userProfilesUpdateResponse;

  factory _$UpdateUserProfilesBatchResponse(
          [void Function(UpdateUserProfilesBatchResponseBuilder)? updates]) =>
      (new UpdateUserProfilesBatchResponseBuilder()..update(updates))._build();

  _$UpdateUserProfilesBatchResponse._(
      {required this.userProfilesUpdateResponse})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(userProfilesUpdateResponse,
        r'UpdateUserProfilesBatchResponse', 'userProfilesUpdateResponse');
  }

  @override
  UpdateUserProfilesBatchResponse rebuild(
          void Function(UpdateUserProfilesBatchResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateUserProfilesBatchResponseBuilder toBuilder() =>
      new UpdateUserProfilesBatchResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateUserProfilesBatchResponse &&
        userProfilesUpdateResponse == other.userProfilesUpdateResponse;
  }

  @override
  int get hashCode {
    return $jf($jc(0, userProfilesUpdateResponse.hashCode));
  }
}

class UpdateUserProfilesBatchResponseBuilder
    implements
        Builder<UpdateUserProfilesBatchResponse,
            UpdateUserProfilesBatchResponseBuilder> {
  _$UpdateUserProfilesBatchResponse? _$v;

  _i3.UserProfilesUpdateResponseBuilder? _userProfilesUpdateResponse;
  _i3.UserProfilesUpdateResponseBuilder get userProfilesUpdateResponse =>
      _$this._userProfilesUpdateResponse ??=
          new _i3.UserProfilesUpdateResponseBuilder();
  set userProfilesUpdateResponse(
          _i3.UserProfilesUpdateResponseBuilder? userProfilesUpdateResponse) =>
      _$this._userProfilesUpdateResponse = userProfilesUpdateResponse;

  UpdateUserProfilesBatchResponseBuilder() {
    UpdateUserProfilesBatchResponse._init(this);
  }

  UpdateUserProfilesBatchResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userProfilesUpdateResponse = $v.userProfilesUpdateResponse.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateUserProfilesBatchResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateUserProfilesBatchResponse;
  }

  @override
  void update(void Function(UpdateUserProfilesBatchResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateUserProfilesBatchResponse build() => _build();

  _$UpdateUserProfilesBatchResponse _build() {
    _$UpdateUserProfilesBatchResponse _$result;
    try {
      _$result = _$v ??
          new _$UpdateUserProfilesBatchResponse._(
              userProfilesUpdateResponse: userProfilesUpdateResponse.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userProfilesUpdateResponse';
        userProfilesUpdateResponse.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateUserProfilesBatchResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
