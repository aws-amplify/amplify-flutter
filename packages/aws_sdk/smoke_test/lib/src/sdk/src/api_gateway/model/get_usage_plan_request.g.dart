// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_usage_plan_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetUsagePlanRequest extends GetUsagePlanRequest {
  @override
  final String usagePlanId;

  factory _$GetUsagePlanRequest(
          [void Function(GetUsagePlanRequestBuilder)? updates]) =>
      (new GetUsagePlanRequestBuilder()..update(updates))._build();

  _$GetUsagePlanRequest._({required this.usagePlanId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        usagePlanId, r'GetUsagePlanRequest', 'usagePlanId');
  }

  @override
  GetUsagePlanRequest rebuild(
          void Function(GetUsagePlanRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUsagePlanRequestBuilder toBuilder() =>
      new GetUsagePlanRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUsagePlanRequest && usagePlanId == other.usagePlanId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, usagePlanId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetUsagePlanRequestBuilder
    implements Builder<GetUsagePlanRequest, GetUsagePlanRequestBuilder> {
  _$GetUsagePlanRequest? _$v;

  String? _usagePlanId;
  String? get usagePlanId => _$this._usagePlanId;
  set usagePlanId(String? usagePlanId) => _$this._usagePlanId = usagePlanId;

  GetUsagePlanRequestBuilder() {
    GetUsagePlanRequest._init(this);
  }

  GetUsagePlanRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _usagePlanId = $v.usagePlanId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetUsagePlanRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetUsagePlanRequest;
  }

  @override
  void update(void Function(GetUsagePlanRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetUsagePlanRequest build() => _build();

  _$GetUsagePlanRequest _build() {
    final _$result = _$v ??
        new _$GetUsagePlanRequest._(
            usagePlanId: BuiltValueNullFieldError.checkNotNull(
                usagePlanId, r'GetUsagePlanRequest', 'usagePlanId'));
    replace(_$result);
    return _$result;
  }
}

class _$GetUsagePlanRequestPayload extends GetUsagePlanRequestPayload {
  factory _$GetUsagePlanRequestPayload(
          [void Function(GetUsagePlanRequestPayloadBuilder)? updates]) =>
      (new GetUsagePlanRequestPayloadBuilder()..update(updates))._build();

  _$GetUsagePlanRequestPayload._() : super._();

  @override
  GetUsagePlanRequestPayload rebuild(
          void Function(GetUsagePlanRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUsagePlanRequestPayloadBuilder toBuilder() =>
      new GetUsagePlanRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUsagePlanRequestPayload;
  }

  @override
  int get hashCode {
    return 942180819;
  }
}

class GetUsagePlanRequestPayloadBuilder
    implements
        Builder<GetUsagePlanRequestPayload, GetUsagePlanRequestPayloadBuilder> {
  _$GetUsagePlanRequestPayload? _$v;

  GetUsagePlanRequestPayloadBuilder() {
    GetUsagePlanRequestPayload._init(this);
  }

  @override
  void replace(GetUsagePlanRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetUsagePlanRequestPayload;
  }

  @override
  void update(void Function(GetUsagePlanRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetUsagePlanRequestPayload build() => _build();

  _$GetUsagePlanRequestPayload _build() {
    final _$result = _$v ?? new _$GetUsagePlanRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
