// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.put_user_events_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutUserEventsRequest extends PutUserEventsRequest {
  @override
  final String applicationId;
  @override
  final _i2.UserEventsRequest userEventsRequest;

  factory _$PutUserEventsRequest(
          [void Function(PutUserEventsRequestBuilder)? updates]) =>
      (new PutUserEventsRequestBuilder()..update(updates))._build();

  _$PutUserEventsRequest._(
      {required this.applicationId, required this.userEventsRequest})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        applicationId, r'PutUserEventsRequest', 'applicationId');
    BuiltValueNullFieldError.checkNotNull(
        userEventsRequest, r'PutUserEventsRequest', 'userEventsRequest');
  }

  @override
  PutUserEventsRequest rebuild(
          void Function(PutUserEventsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutUserEventsRequestBuilder toBuilder() =>
      new PutUserEventsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutUserEventsRequest &&
        applicationId == other.applicationId &&
        userEventsRequest == other.userEventsRequest;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, applicationId.hashCode), userEventsRequest.hashCode));
  }
}

class PutUserEventsRequestBuilder
    implements Builder<PutUserEventsRequest, PutUserEventsRequestBuilder> {
  _$PutUserEventsRequest? _$v;

  String? _applicationId;
  String? get applicationId => _$this._applicationId;
  set applicationId(String? applicationId) =>
      _$this._applicationId = applicationId;

  _i2.UserEventsRequestBuilder? _userEventsRequest;
  _i2.UserEventsRequestBuilder get userEventsRequest =>
      _$this._userEventsRequest ??= new _i2.UserEventsRequestBuilder();
  set userEventsRequest(_i2.UserEventsRequestBuilder? userEventsRequest) =>
      _$this._userEventsRequest = userEventsRequest;

  PutUserEventsRequestBuilder() {
    PutUserEventsRequest._init(this);
  }

  PutUserEventsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _applicationId = $v.applicationId;
      _userEventsRequest = $v.userEventsRequest.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutUserEventsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutUserEventsRequest;
  }

  @override
  void update(void Function(PutUserEventsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutUserEventsRequest build() => _build();

  _$PutUserEventsRequest _build() {
    _$PutUserEventsRequest _$result;
    try {
      _$result = _$v ??
          new _$PutUserEventsRequest._(
              applicationId: BuiltValueNullFieldError.checkNotNull(
                  applicationId, r'PutUserEventsRequest', 'applicationId'),
              userEventsRequest: userEventsRequest.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userEventsRequest';
        userEventsRequest.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutUserEventsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
