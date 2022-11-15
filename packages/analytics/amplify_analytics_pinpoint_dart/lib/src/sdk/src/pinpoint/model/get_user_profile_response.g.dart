// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.get_user_profile_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetUserProfileResponse extends GetUserProfileResponse {
  @override
  final _i3.UserProfileResponse userProfileResponse;

  factory _$GetUserProfileResponse(
          [void Function(GetUserProfileResponseBuilder)? updates]) =>
      (new GetUserProfileResponseBuilder()..update(updates))._build();

  _$GetUserProfileResponse._({required this.userProfileResponse}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userProfileResponse, r'GetUserProfileResponse', 'userProfileResponse');
  }

  @override
  GetUserProfileResponse rebuild(
          void Function(GetUserProfileResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUserProfileResponseBuilder toBuilder() =>
      new GetUserProfileResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUserProfileResponse &&
        userProfileResponse == other.userProfileResponse;
  }

  @override
  int get hashCode {
    return $jf($jc(0, userProfileResponse.hashCode));
  }
}

class GetUserProfileResponseBuilder
    implements Builder<GetUserProfileResponse, GetUserProfileResponseBuilder> {
  _$GetUserProfileResponse? _$v;

  _i3.UserProfileResponseBuilder? _userProfileResponse;
  _i3.UserProfileResponseBuilder get userProfileResponse =>
      _$this._userProfileResponse ??= new _i3.UserProfileResponseBuilder();
  set userProfileResponse(
          _i3.UserProfileResponseBuilder? userProfileResponse) =>
      _$this._userProfileResponse = userProfileResponse;

  GetUserProfileResponseBuilder() {
    GetUserProfileResponse._init(this);
  }

  GetUserProfileResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userProfileResponse = $v.userProfileResponse.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetUserProfileResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetUserProfileResponse;
  }

  @override
  void update(void Function(GetUserProfileResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetUserProfileResponse build() => _build();

  _$GetUserProfileResponse _build() {
    _$GetUserProfileResponse _$result;
    try {
      _$result = _$v ??
          new _$GetUserProfileResponse._(
              userProfileResponse: userProfileResponse.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userProfileResponse';
        userProfileResponse.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetUserProfileResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
