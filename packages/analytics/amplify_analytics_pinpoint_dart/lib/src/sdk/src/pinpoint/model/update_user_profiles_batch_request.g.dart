// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.update_user_profiles_batch_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateUserProfilesBatchRequest extends UpdateUserProfilesBatchRequest {
  @override
  final String applicationId;
  @override
  final _i2.UserProfilesUpdateRequest userProfilesUpdateRequest;

  factory _$UpdateUserProfilesBatchRequest(
          [void Function(UpdateUserProfilesBatchRequestBuilder)? updates]) =>
      (new UpdateUserProfilesBatchRequestBuilder()..update(updates))._build();

  _$UpdateUserProfilesBatchRequest._(
      {required this.applicationId, required this.userProfilesUpdateRequest})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        applicationId, r'UpdateUserProfilesBatchRequest', 'applicationId');
    BuiltValueNullFieldError.checkNotNull(userProfilesUpdateRequest,
        r'UpdateUserProfilesBatchRequest', 'userProfilesUpdateRequest');
  }

  @override
  UpdateUserProfilesBatchRequest rebuild(
          void Function(UpdateUserProfilesBatchRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateUserProfilesBatchRequestBuilder toBuilder() =>
      new UpdateUserProfilesBatchRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateUserProfilesBatchRequest &&
        applicationId == other.applicationId &&
        userProfilesUpdateRequest == other.userProfilesUpdateRequest;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(0, applicationId.hashCode), userProfilesUpdateRequest.hashCode));
  }
}

class UpdateUserProfilesBatchRequestBuilder
    implements
        Builder<UpdateUserProfilesBatchRequest,
            UpdateUserProfilesBatchRequestBuilder> {
  _$UpdateUserProfilesBatchRequest? _$v;

  String? _applicationId;
  String? get applicationId => _$this._applicationId;
  set applicationId(String? applicationId) =>
      _$this._applicationId = applicationId;

  _i2.UserProfilesUpdateRequestBuilder? _userProfilesUpdateRequest;
  _i2.UserProfilesUpdateRequestBuilder get userProfilesUpdateRequest =>
      _$this._userProfilesUpdateRequest ??=
          new _i2.UserProfilesUpdateRequestBuilder();
  set userProfilesUpdateRequest(
          _i2.UserProfilesUpdateRequestBuilder? userProfilesUpdateRequest) =>
      _$this._userProfilesUpdateRequest = userProfilesUpdateRequest;

  UpdateUserProfilesBatchRequestBuilder() {
    UpdateUserProfilesBatchRequest._init(this);
  }

  UpdateUserProfilesBatchRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _applicationId = $v.applicationId;
      _userProfilesUpdateRequest = $v.userProfilesUpdateRequest.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateUserProfilesBatchRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateUserProfilesBatchRequest;
  }

  @override
  void update(void Function(UpdateUserProfilesBatchRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateUserProfilesBatchRequest build() => _build();

  _$UpdateUserProfilesBatchRequest _build() {
    _$UpdateUserProfilesBatchRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateUserProfilesBatchRequest._(
              applicationId: BuiltValueNullFieldError.checkNotNull(
                  applicationId,
                  r'UpdateUserProfilesBatchRequest',
                  'applicationId'),
              userProfilesUpdateRequest: userProfilesUpdateRequest.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userProfilesUpdateRequest';
        userProfilesUpdateRequest.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateUserProfilesBatchRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
