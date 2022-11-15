// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.get_endpoint_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetEndpointRequest extends GetEndpointRequest {
  @override
  final String applicationId;
  @override
  final String endpointId;

  factory _$GetEndpointRequest(
          [void Function(GetEndpointRequestBuilder)? updates]) =>
      (new GetEndpointRequestBuilder()..update(updates))._build();

  _$GetEndpointRequest._(
      {required this.applicationId, required this.endpointId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        applicationId, r'GetEndpointRequest', 'applicationId');
    BuiltValueNullFieldError.checkNotNull(
        endpointId, r'GetEndpointRequest', 'endpointId');
  }

  @override
  GetEndpointRequest rebuild(
          void Function(GetEndpointRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetEndpointRequestBuilder toBuilder() =>
      new GetEndpointRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetEndpointRequest &&
        applicationId == other.applicationId &&
        endpointId == other.endpointId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, applicationId.hashCode), endpointId.hashCode));
  }
}

class GetEndpointRequestBuilder
    implements Builder<GetEndpointRequest, GetEndpointRequestBuilder> {
  _$GetEndpointRequest? _$v;

  String? _applicationId;
  String? get applicationId => _$this._applicationId;
  set applicationId(String? applicationId) =>
      _$this._applicationId = applicationId;

  String? _endpointId;
  String? get endpointId => _$this._endpointId;
  set endpointId(String? endpointId) => _$this._endpointId = endpointId;

  GetEndpointRequestBuilder() {
    GetEndpointRequest._init(this);
  }

  GetEndpointRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _applicationId = $v.applicationId;
      _endpointId = $v.endpointId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetEndpointRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetEndpointRequest;
  }

  @override
  void update(void Function(GetEndpointRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetEndpointRequest build() => _build();

  _$GetEndpointRequest _build() {
    final _$result = _$v ??
        new _$GetEndpointRequest._(
            applicationId: BuiltValueNullFieldError.checkNotNull(
                applicationId, r'GetEndpointRequest', 'applicationId'),
            endpointId: BuiltValueNullFieldError.checkNotNull(
                endpointId, r'GetEndpointRequest', 'endpointId'));
    replace(_$result);
    return _$result;
  }
}

class _$GetEndpointRequestPayload extends GetEndpointRequestPayload {
  factory _$GetEndpointRequestPayload(
          [void Function(GetEndpointRequestPayloadBuilder)? updates]) =>
      (new GetEndpointRequestPayloadBuilder()..update(updates))._build();

  _$GetEndpointRequestPayload._() : super._();

  @override
  GetEndpointRequestPayload rebuild(
          void Function(GetEndpointRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetEndpointRequestPayloadBuilder toBuilder() =>
      new GetEndpointRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetEndpointRequestPayload;
  }

  @override
  int get hashCode {
    return 311414640;
  }
}

class GetEndpointRequestPayloadBuilder
    implements
        Builder<GetEndpointRequestPayload, GetEndpointRequestPayloadBuilder> {
  _$GetEndpointRequestPayload? _$v;

  GetEndpointRequestPayloadBuilder() {
    GetEndpointRequestPayload._init(this);
  }

  @override
  void replace(GetEndpointRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetEndpointRequestPayload;
  }

  @override
  void update(void Function(GetEndpointRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetEndpointRequestPayload build() => _build();

  _$GetEndpointRequestPayload _build() {
    final _$result = _$v ?? new _$GetEndpointRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
