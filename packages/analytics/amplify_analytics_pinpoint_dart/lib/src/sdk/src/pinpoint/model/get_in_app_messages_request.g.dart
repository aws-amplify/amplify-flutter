// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.get_in_app_messages_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetInAppMessagesRequest extends GetInAppMessagesRequest {
  @override
  final String applicationId;
  @override
  final String endpointId;

  factory _$GetInAppMessagesRequest(
          [void Function(GetInAppMessagesRequestBuilder)? updates]) =>
      (new GetInAppMessagesRequestBuilder()..update(updates))._build();

  _$GetInAppMessagesRequest._(
      {required this.applicationId, required this.endpointId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        applicationId, r'GetInAppMessagesRequest', 'applicationId');
    BuiltValueNullFieldError.checkNotNull(
        endpointId, r'GetInAppMessagesRequest', 'endpointId');
  }

  @override
  GetInAppMessagesRequest rebuild(
          void Function(GetInAppMessagesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetInAppMessagesRequestBuilder toBuilder() =>
      new GetInAppMessagesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetInAppMessagesRequest &&
        applicationId == other.applicationId &&
        endpointId == other.endpointId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, applicationId.hashCode);
    _$hash = $jc(_$hash, endpointId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetInAppMessagesRequestBuilder
    implements
        Builder<GetInAppMessagesRequest, GetInAppMessagesRequestBuilder> {
  _$GetInAppMessagesRequest? _$v;

  String? _applicationId;
  String? get applicationId => _$this._applicationId;
  set applicationId(String? applicationId) =>
      _$this._applicationId = applicationId;

  String? _endpointId;
  String? get endpointId => _$this._endpointId;
  set endpointId(String? endpointId) => _$this._endpointId = endpointId;

  GetInAppMessagesRequestBuilder() {
    GetInAppMessagesRequest._init(this);
  }

  GetInAppMessagesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _applicationId = $v.applicationId;
      _endpointId = $v.endpointId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetInAppMessagesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetInAppMessagesRequest;
  }

  @override
  void update(void Function(GetInAppMessagesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetInAppMessagesRequest build() => _build();

  _$GetInAppMessagesRequest _build() {
    final _$result = _$v ??
        new _$GetInAppMessagesRequest._(
            applicationId: BuiltValueNullFieldError.checkNotNull(
                applicationId, r'GetInAppMessagesRequest', 'applicationId'),
            endpointId: BuiltValueNullFieldError.checkNotNull(
                endpointId, r'GetInAppMessagesRequest', 'endpointId'));
    replace(_$result);
    return _$result;
  }
}

class _$GetInAppMessagesRequestPayload extends GetInAppMessagesRequestPayload {
  factory _$GetInAppMessagesRequestPayload(
          [void Function(GetInAppMessagesRequestPayloadBuilder)? updates]) =>
      (new GetInAppMessagesRequestPayloadBuilder()..update(updates))._build();

  _$GetInAppMessagesRequestPayload._() : super._();

  @override
  GetInAppMessagesRequestPayload rebuild(
          void Function(GetInAppMessagesRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetInAppMessagesRequestPayloadBuilder toBuilder() =>
      new GetInAppMessagesRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetInAppMessagesRequestPayload;
  }

  @override
  int get hashCode {
    return 777955164;
  }
}

class GetInAppMessagesRequestPayloadBuilder
    implements
        Builder<GetInAppMessagesRequestPayload,
            GetInAppMessagesRequestPayloadBuilder> {
  _$GetInAppMessagesRequestPayload? _$v;

  GetInAppMessagesRequestPayloadBuilder() {
    GetInAppMessagesRequestPayload._init(this);
  }

  @override
  void replace(GetInAppMessagesRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetInAppMessagesRequestPayload;
  }

  @override
  void update(void Function(GetInAppMessagesRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetInAppMessagesRequestPayload build() => _build();

  _$GetInAppMessagesRequestPayload _build() {
    final _$result = _$v ?? new _$GetInAppMessagesRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
