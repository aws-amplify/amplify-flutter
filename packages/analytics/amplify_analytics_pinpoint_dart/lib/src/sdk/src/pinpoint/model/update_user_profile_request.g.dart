// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.update_user_profile_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateUserProfileRequest extends UpdateUserProfileRequest {
  @override
  final String applicationId;
  @override
  final String userId;
  @override
  final _i2.UserProfileUpdateRequest userProfileUpdateRequest;

  factory _$UpdateUserProfileRequest(
          [void Function(UpdateUserProfileRequestBuilder)? updates]) =>
      (new UpdateUserProfileRequestBuilder()..update(updates))._build();

  _$UpdateUserProfileRequest._(
      {required this.applicationId,
      required this.userId,
      required this.userProfileUpdateRequest})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        applicationId, r'UpdateUserProfileRequest', 'applicationId');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'UpdateUserProfileRequest', 'userId');
    BuiltValueNullFieldError.checkNotNull(userProfileUpdateRequest,
        r'UpdateUserProfileRequest', 'userProfileUpdateRequest');
  }

  @override
  UpdateUserProfileRequest rebuild(
          void Function(UpdateUserProfileRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateUserProfileRequestBuilder toBuilder() =>
      new UpdateUserProfileRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateUserProfileRequest &&
        applicationId == other.applicationId &&
        userId == other.userId &&
        userProfileUpdateRequest == other.userProfileUpdateRequest;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, applicationId.hashCode), userId.hashCode),
        userProfileUpdateRequest.hashCode));
  }
}

class UpdateUserProfileRequestBuilder
    implements
        Builder<UpdateUserProfileRequest, UpdateUserProfileRequestBuilder> {
  _$UpdateUserProfileRequest? _$v;

  String? _applicationId;
  String? get applicationId => _$this._applicationId;
  set applicationId(String? applicationId) =>
      _$this._applicationId = applicationId;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  _i2.UserProfileUpdateRequestBuilder? _userProfileUpdateRequest;
  _i2.UserProfileUpdateRequestBuilder get userProfileUpdateRequest =>
      _$this._userProfileUpdateRequest ??=
          new _i2.UserProfileUpdateRequestBuilder();
  set userProfileUpdateRequest(
          _i2.UserProfileUpdateRequestBuilder? userProfileUpdateRequest) =>
      _$this._userProfileUpdateRequest = userProfileUpdateRequest;

  UpdateUserProfileRequestBuilder() {
    UpdateUserProfileRequest._init(this);
  }

  UpdateUserProfileRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _applicationId = $v.applicationId;
      _userId = $v.userId;
      _userProfileUpdateRequest = $v.userProfileUpdateRequest.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateUserProfileRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateUserProfileRequest;
  }

  @override
  void update(void Function(UpdateUserProfileRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateUserProfileRequest build() => _build();

  _$UpdateUserProfileRequest _build() {
    _$UpdateUserProfileRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateUserProfileRequest._(
              applicationId: BuiltValueNullFieldError.checkNotNull(
                  applicationId, r'UpdateUserProfileRequest', 'applicationId'),
              userId: BuiltValueNullFieldError.checkNotNull(
                  userId, r'UpdateUserProfileRequest', 'userId'),
              userProfileUpdateRequest: userProfileUpdateRequest.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userProfileUpdateRequest';
        userProfileUpdateRequest.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateUserProfileRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
