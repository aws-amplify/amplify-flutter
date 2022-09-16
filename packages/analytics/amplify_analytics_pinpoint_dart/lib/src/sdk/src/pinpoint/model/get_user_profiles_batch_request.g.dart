// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.get_user_profiles_batch_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetUserProfilesBatchRequest extends GetUserProfilesBatchRequest {
  @override
  final String applicationId;
  @override
  final _i2.UserProfilesGetRequest userProfilesGetRequest;

  factory _$GetUserProfilesBatchRequest(
          [void Function(GetUserProfilesBatchRequestBuilder)? updates]) =>
      (new GetUserProfilesBatchRequestBuilder()..update(updates))._build();

  _$GetUserProfilesBatchRequest._(
      {required this.applicationId, required this.userProfilesGetRequest})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        applicationId, r'GetUserProfilesBatchRequest', 'applicationId');
    BuiltValueNullFieldError.checkNotNull(userProfilesGetRequest,
        r'GetUserProfilesBatchRequest', 'userProfilesGetRequest');
  }

  @override
  GetUserProfilesBatchRequest rebuild(
          void Function(GetUserProfilesBatchRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUserProfilesBatchRequestBuilder toBuilder() =>
      new GetUserProfilesBatchRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUserProfilesBatchRequest &&
        applicationId == other.applicationId &&
        userProfilesGetRequest == other.userProfilesGetRequest;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, applicationId.hashCode), userProfilesGetRequest.hashCode));
  }
}

class GetUserProfilesBatchRequestBuilder
    implements
        Builder<GetUserProfilesBatchRequest,
            GetUserProfilesBatchRequestBuilder> {
  _$GetUserProfilesBatchRequest? _$v;

  String? _applicationId;
  String? get applicationId => _$this._applicationId;
  set applicationId(String? applicationId) =>
      _$this._applicationId = applicationId;

  _i2.UserProfilesGetRequestBuilder? _userProfilesGetRequest;
  _i2.UserProfilesGetRequestBuilder get userProfilesGetRequest =>
      _$this._userProfilesGetRequest ??=
          new _i2.UserProfilesGetRequestBuilder();
  set userProfilesGetRequest(
          _i2.UserProfilesGetRequestBuilder? userProfilesGetRequest) =>
      _$this._userProfilesGetRequest = userProfilesGetRequest;

  GetUserProfilesBatchRequestBuilder() {
    GetUserProfilesBatchRequest._init(this);
  }

  GetUserProfilesBatchRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _applicationId = $v.applicationId;
      _userProfilesGetRequest = $v.userProfilesGetRequest.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetUserProfilesBatchRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetUserProfilesBatchRequest;
  }

  @override
  void update(void Function(GetUserProfilesBatchRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetUserProfilesBatchRequest build() => _build();

  _$GetUserProfilesBatchRequest _build() {
    _$GetUserProfilesBatchRequest _$result;
    try {
      _$result = _$v ??
          new _$GetUserProfilesBatchRequest._(
              applicationId: BuiltValueNullFieldError.checkNotNull(
                  applicationId,
                  r'GetUserProfilesBatchRequest',
                  'applicationId'),
              userProfilesGetRequest: userProfilesGetRequest.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userProfilesGetRequest';
        userProfilesGetRequest.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetUserProfilesBatchRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
