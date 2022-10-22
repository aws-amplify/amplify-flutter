// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.delete_user_profile_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteUserProfileRequest extends DeleteUserProfileRequest {
  @override
  final String applicationId;
  @override
  final bool? deleteEndpoints;
  @override
  final String userId;

  factory _$DeleteUserProfileRequest(
          [void Function(DeleteUserProfileRequestBuilder)? updates]) =>
      (new DeleteUserProfileRequestBuilder()..update(updates))._build();

  _$DeleteUserProfileRequest._(
      {required this.applicationId, this.deleteEndpoints, required this.userId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        applicationId, r'DeleteUserProfileRequest', 'applicationId');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'DeleteUserProfileRequest', 'userId');
  }

  @override
  DeleteUserProfileRequest rebuild(
          void Function(DeleteUserProfileRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteUserProfileRequestBuilder toBuilder() =>
      new DeleteUserProfileRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteUserProfileRequest &&
        applicationId == other.applicationId &&
        deleteEndpoints == other.deleteEndpoints &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, applicationId.hashCode), deleteEndpoints.hashCode),
        userId.hashCode));
  }
}

class DeleteUserProfileRequestBuilder
    implements
        Builder<DeleteUserProfileRequest, DeleteUserProfileRequestBuilder> {
  _$DeleteUserProfileRequest? _$v;

  String? _applicationId;
  String? get applicationId => _$this._applicationId;
  set applicationId(String? applicationId) =>
      _$this._applicationId = applicationId;

  bool? _deleteEndpoints;
  bool? get deleteEndpoints => _$this._deleteEndpoints;
  set deleteEndpoints(bool? deleteEndpoints) =>
      _$this._deleteEndpoints = deleteEndpoints;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  DeleteUserProfileRequestBuilder() {
    DeleteUserProfileRequest._init(this);
  }

  DeleteUserProfileRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _applicationId = $v.applicationId;
      _deleteEndpoints = $v.deleteEndpoints;
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteUserProfileRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteUserProfileRequest;
  }

  @override
  void update(void Function(DeleteUserProfileRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteUserProfileRequest build() => _build();

  _$DeleteUserProfileRequest _build() {
    final _$result = _$v ??
        new _$DeleteUserProfileRequest._(
            applicationId: BuiltValueNullFieldError.checkNotNull(
                applicationId, r'DeleteUserProfileRequest', 'applicationId'),
            deleteEndpoints: deleteEndpoints,
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'DeleteUserProfileRequest', 'userId'));
    replace(_$result);
    return _$result;
  }
}

class _$DeleteUserProfileRequestPayload
    extends DeleteUserProfileRequestPayload {
  factory _$DeleteUserProfileRequestPayload(
          [void Function(DeleteUserProfileRequestPayloadBuilder)? updates]) =>
      (new DeleteUserProfileRequestPayloadBuilder()..update(updates))._build();

  _$DeleteUserProfileRequestPayload._() : super._();

  @override
  DeleteUserProfileRequestPayload rebuild(
          void Function(DeleteUserProfileRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteUserProfileRequestPayloadBuilder toBuilder() =>
      new DeleteUserProfileRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteUserProfileRequestPayload;
  }

  @override
  int get hashCode {
    return 475372478;
  }
}

class DeleteUserProfileRequestPayloadBuilder
    implements
        Builder<DeleteUserProfileRequestPayload,
            DeleteUserProfileRequestPayloadBuilder> {
  _$DeleteUserProfileRequestPayload? _$v;

  DeleteUserProfileRequestPayloadBuilder() {
    DeleteUserProfileRequestPayload._init(this);
  }

  @override
  void replace(DeleteUserProfileRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteUserProfileRequestPayload;
  }

  @override
  void update(void Function(DeleteUserProfileRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteUserProfileRequestPayload build() => _build();

  _$DeleteUserProfileRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteUserProfileRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
