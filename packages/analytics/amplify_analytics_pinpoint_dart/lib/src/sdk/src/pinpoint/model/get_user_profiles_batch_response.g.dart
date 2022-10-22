// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.get_user_profiles_batch_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetUserProfilesBatchResponse extends GetUserProfilesBatchResponse {
  @override
  final _i3.UserProfilesResponse userProfilesResponse;

  factory _$GetUserProfilesBatchResponse(
          [void Function(GetUserProfilesBatchResponseBuilder)? updates]) =>
      (new GetUserProfilesBatchResponseBuilder()..update(updates))._build();

  _$GetUserProfilesBatchResponse._({required this.userProfilesResponse})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(userProfilesResponse,
        r'GetUserProfilesBatchResponse', 'userProfilesResponse');
  }

  @override
  GetUserProfilesBatchResponse rebuild(
          void Function(GetUserProfilesBatchResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUserProfilesBatchResponseBuilder toBuilder() =>
      new GetUserProfilesBatchResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUserProfilesBatchResponse &&
        userProfilesResponse == other.userProfilesResponse;
  }

  @override
  int get hashCode {
    return $jf($jc(0, userProfilesResponse.hashCode));
  }
}

class GetUserProfilesBatchResponseBuilder
    implements
        Builder<GetUserProfilesBatchResponse,
            GetUserProfilesBatchResponseBuilder> {
  _$GetUserProfilesBatchResponse? _$v;

  _i3.UserProfilesResponseBuilder? _userProfilesResponse;
  _i3.UserProfilesResponseBuilder get userProfilesResponse =>
      _$this._userProfilesResponse ??= new _i3.UserProfilesResponseBuilder();
  set userProfilesResponse(
          _i3.UserProfilesResponseBuilder? userProfilesResponse) =>
      _$this._userProfilesResponse = userProfilesResponse;

  GetUserProfilesBatchResponseBuilder() {
    GetUserProfilesBatchResponse._init(this);
  }

  GetUserProfilesBatchResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userProfilesResponse = $v.userProfilesResponse.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetUserProfilesBatchResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetUserProfilesBatchResponse;
  }

  @override
  void update(void Function(GetUserProfilesBatchResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetUserProfilesBatchResponse build() => _build();

  _$GetUserProfilesBatchResponse _build() {
    _$GetUserProfilesBatchResponse _$result;
    try {
      _$result = _$v ??
          new _$GetUserProfilesBatchResponse._(
              userProfilesResponse: userProfilesResponse.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userProfilesResponse';
        userProfilesResponse.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetUserProfilesBatchResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
