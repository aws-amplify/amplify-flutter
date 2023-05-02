// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_usage_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetUsageRequest extends GetUsageRequest {
  @override
  final String usagePlanId;
  @override
  final String? keyId;
  @override
  final String startDate;
  @override
  final String endDate;
  @override
  final String? position;
  @override
  final int? limit;

  factory _$GetUsageRequest([void Function(GetUsageRequestBuilder)? updates]) =>
      (new GetUsageRequestBuilder()..update(updates))._build();

  _$GetUsageRequest._(
      {required this.usagePlanId,
      this.keyId,
      required this.startDate,
      required this.endDate,
      this.position,
      this.limit})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        usagePlanId, r'GetUsageRequest', 'usagePlanId');
    BuiltValueNullFieldError.checkNotNull(
        startDate, r'GetUsageRequest', 'startDate');
    BuiltValueNullFieldError.checkNotNull(
        endDate, r'GetUsageRequest', 'endDate');
  }

  @override
  GetUsageRequest rebuild(void Function(GetUsageRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUsageRequestBuilder toBuilder() =>
      new GetUsageRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUsageRequest &&
        usagePlanId == other.usagePlanId &&
        keyId == other.keyId &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        position == other.position &&
        limit == other.limit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, usagePlanId.hashCode);
    _$hash = $jc(_$hash, keyId.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetUsageRequestBuilder
    implements Builder<GetUsageRequest, GetUsageRequestBuilder> {
  _$GetUsageRequest? _$v;

  String? _usagePlanId;
  String? get usagePlanId => _$this._usagePlanId;
  set usagePlanId(String? usagePlanId) => _$this._usagePlanId = usagePlanId;

  String? _keyId;
  String? get keyId => _$this._keyId;
  set keyId(String? keyId) => _$this._keyId = keyId;

  String? _startDate;
  String? get startDate => _$this._startDate;
  set startDate(String? startDate) => _$this._startDate = startDate;

  String? _endDate;
  String? get endDate => _$this._endDate;
  set endDate(String? endDate) => _$this._endDate = endDate;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  GetUsageRequestBuilder() {
    GetUsageRequest._init(this);
  }

  GetUsageRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _usagePlanId = $v.usagePlanId;
      _keyId = $v.keyId;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _position = $v.position;
      _limit = $v.limit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetUsageRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetUsageRequest;
  }

  @override
  void update(void Function(GetUsageRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetUsageRequest build() => _build();

  _$GetUsageRequest _build() {
    final _$result = _$v ??
        new _$GetUsageRequest._(
            usagePlanId: BuiltValueNullFieldError.checkNotNull(
                usagePlanId, r'GetUsageRequest', 'usagePlanId'),
            keyId: keyId,
            startDate: BuiltValueNullFieldError.checkNotNull(
                startDate, r'GetUsageRequest', 'startDate'),
            endDate: BuiltValueNullFieldError.checkNotNull(
                endDate, r'GetUsageRequest', 'endDate'),
            position: position,
            limit: limit);
    replace(_$result);
    return _$result;
  }
}

class _$GetUsageRequestPayload extends GetUsageRequestPayload {
  factory _$GetUsageRequestPayload(
          [void Function(GetUsageRequestPayloadBuilder)? updates]) =>
      (new GetUsageRequestPayloadBuilder()..update(updates))._build();

  _$GetUsageRequestPayload._() : super._();

  @override
  GetUsageRequestPayload rebuild(
          void Function(GetUsageRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUsageRequestPayloadBuilder toBuilder() =>
      new GetUsageRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUsageRequestPayload;
  }

  @override
  int get hashCode {
    return 556272689;
  }
}

class GetUsageRequestPayloadBuilder
    implements Builder<GetUsageRequestPayload, GetUsageRequestPayloadBuilder> {
  _$GetUsageRequestPayload? _$v;

  GetUsageRequestPayloadBuilder() {
    GetUsageRequestPayload._init(this);
  }

  @override
  void replace(GetUsageRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetUsageRequestPayload;
  }

  @override
  void update(void Function(GetUsageRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetUsageRequestPayload build() => _build();

  _$GetUsageRequestPayload _build() {
    final _$result = _$v ?? new _$GetUsageRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
