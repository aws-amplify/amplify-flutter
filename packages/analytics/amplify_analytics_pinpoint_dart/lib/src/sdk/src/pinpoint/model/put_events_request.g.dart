// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.put_events_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutEventsRequest extends PutEventsRequest {
  @override
  final String applicationId;
  @override
  final _i2.EventsRequest eventsRequest;

  factory _$PutEventsRequest(
          [void Function(PutEventsRequestBuilder)? updates]) =>
      (new PutEventsRequestBuilder()..update(updates))._build();

  _$PutEventsRequest._(
      {required this.applicationId, required this.eventsRequest})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        applicationId, r'PutEventsRequest', 'applicationId');
    BuiltValueNullFieldError.checkNotNull(
        eventsRequest, r'PutEventsRequest', 'eventsRequest');
  }

  @override
  PutEventsRequest rebuild(void Function(PutEventsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutEventsRequestBuilder toBuilder() =>
      new PutEventsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutEventsRequest &&
        applicationId == other.applicationId &&
        eventsRequest == other.eventsRequest;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, applicationId.hashCode);
    _$hash = $jc(_$hash, eventsRequest.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutEventsRequestBuilder
    implements Builder<PutEventsRequest, PutEventsRequestBuilder> {
  _$PutEventsRequest? _$v;

  String? _applicationId;
  String? get applicationId => _$this._applicationId;
  set applicationId(String? applicationId) =>
      _$this._applicationId = applicationId;

  _i2.EventsRequestBuilder? _eventsRequest;
  _i2.EventsRequestBuilder get eventsRequest =>
      _$this._eventsRequest ??= new _i2.EventsRequestBuilder();
  set eventsRequest(_i2.EventsRequestBuilder? eventsRequest) =>
      _$this._eventsRequest = eventsRequest;

  PutEventsRequestBuilder() {
    PutEventsRequest._init(this);
  }

  PutEventsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _applicationId = $v.applicationId;
      _eventsRequest = $v.eventsRequest.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutEventsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutEventsRequest;
  }

  @override
  void update(void Function(PutEventsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutEventsRequest build() => _build();

  _$PutEventsRequest _build() {
    _$PutEventsRequest _$result;
    try {
      _$result = _$v ??
          new _$PutEventsRequest._(
              applicationId: BuiltValueNullFieldError.checkNotNull(
                  applicationId, r'PutEventsRequest', 'applicationId'),
              eventsRequest: eventsRequest.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'eventsRequest';
        eventsRequest.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutEventsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
