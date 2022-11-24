// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.get_user_profile_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetUserProfileRequest extends GetUserProfileRequest {
  @override
  final String applicationId;
  @override
  final String userId;

  factory _$GetUserProfileRequest(
          [void Function(GetUserProfileRequestBuilder)? updates]) =>
      (new GetUserProfileRequestBuilder()..update(updates))._build();

  _$GetUserProfileRequest._({required this.applicationId, required this.userId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        applicationId, r'GetUserProfileRequest', 'applicationId');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GetUserProfileRequest', 'userId');
  }

  @override
  GetUserProfileRequest rebuild(
          void Function(GetUserProfileRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUserProfileRequestBuilder toBuilder() =>
      new GetUserProfileRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUserProfileRequest &&
        applicationId == other.applicationId &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, applicationId.hashCode), userId.hashCode));
  }
}

class GetUserProfileRequestBuilder
    implements Builder<GetUserProfileRequest, GetUserProfileRequestBuilder> {
  _$GetUserProfileRequest? _$v;

  String? _applicationId;
  String? get applicationId => _$this._applicationId;
  set applicationId(String? applicationId) =>
      _$this._applicationId = applicationId;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  GetUserProfileRequestBuilder() {
    GetUserProfileRequest._init(this);
  }

  GetUserProfileRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _applicationId = $v.applicationId;
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetUserProfileRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetUserProfileRequest;
  }

  @override
  void update(void Function(GetUserProfileRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetUserProfileRequest build() => _build();

  _$GetUserProfileRequest _build() {
    final _$result = _$v ??
        new _$GetUserProfileRequest._(
            applicationId: BuiltValueNullFieldError.checkNotNull(
                applicationId, r'GetUserProfileRequest', 'applicationId'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'GetUserProfileRequest', 'userId'));
    replace(_$result);
    return _$result;
  }
}

class _$GetUserProfileRequestPayload extends GetUserProfileRequestPayload {
  factory _$GetUserProfileRequestPayload(
          [void Function(GetUserProfileRequestPayloadBuilder)? updates]) =>
      (new GetUserProfileRequestPayloadBuilder()..update(updates))._build();

  _$GetUserProfileRequestPayload._() : super._();

  @override
  GetUserProfileRequestPayload rebuild(
          void Function(GetUserProfileRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUserProfileRequestPayloadBuilder toBuilder() =>
      new GetUserProfileRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUserProfileRequestPayload;
  }

  @override
  int get hashCode {
    return 668962511;
  }
}

class GetUserProfileRequestPayloadBuilder
    implements
        Builder<GetUserProfileRequestPayload,
            GetUserProfileRequestPayloadBuilder> {
  _$GetUserProfileRequestPayload? _$v;

  GetUserProfileRequestPayloadBuilder() {
    GetUserProfileRequestPayload._init(this);
  }

  @override
  void replace(GetUserProfileRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetUserProfileRequestPayload;
  }

  @override
  void update(void Function(GetUserProfileRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetUserProfileRequestPayload build() => _build();

  _$GetUserProfileRequestPayload _build() {
    final _$result = _$v ?? new _$GetUserProfileRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
