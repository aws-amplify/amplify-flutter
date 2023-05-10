// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_usage_plan_keys_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetUsagePlanKeysRequest extends GetUsagePlanKeysRequest {
  @override
  final String usagePlanId;
  @override
  final String? position;
  @override
  final int? limit;
  @override
  final String? nameQuery;

  factory _$GetUsagePlanKeysRequest(
          [void Function(GetUsagePlanKeysRequestBuilder)? updates]) =>
      (new GetUsagePlanKeysRequestBuilder()..update(updates))._build();

  _$GetUsagePlanKeysRequest._(
      {required this.usagePlanId, this.position, this.limit, this.nameQuery})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        usagePlanId, r'GetUsagePlanKeysRequest', 'usagePlanId');
  }

  @override
  GetUsagePlanKeysRequest rebuild(
          void Function(GetUsagePlanKeysRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUsagePlanKeysRequestBuilder toBuilder() =>
      new GetUsagePlanKeysRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUsagePlanKeysRequest &&
        usagePlanId == other.usagePlanId &&
        position == other.position &&
        limit == other.limit &&
        nameQuery == other.nameQuery;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, usagePlanId.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, nameQuery.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetUsagePlanKeysRequestBuilder
    implements
        Builder<GetUsagePlanKeysRequest, GetUsagePlanKeysRequestBuilder> {
  _$GetUsagePlanKeysRequest? _$v;

  String? _usagePlanId;
  String? get usagePlanId => _$this._usagePlanId;
  set usagePlanId(String? usagePlanId) => _$this._usagePlanId = usagePlanId;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nameQuery;
  String? get nameQuery => _$this._nameQuery;
  set nameQuery(String? nameQuery) => _$this._nameQuery = nameQuery;

  GetUsagePlanKeysRequestBuilder() {
    GetUsagePlanKeysRequest._init(this);
  }

  GetUsagePlanKeysRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _usagePlanId = $v.usagePlanId;
      _position = $v.position;
      _limit = $v.limit;
      _nameQuery = $v.nameQuery;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetUsagePlanKeysRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetUsagePlanKeysRequest;
  }

  @override
  void update(void Function(GetUsagePlanKeysRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetUsagePlanKeysRequest build() => _build();

  _$GetUsagePlanKeysRequest _build() {
    final _$result = _$v ??
        new _$GetUsagePlanKeysRequest._(
            usagePlanId: BuiltValueNullFieldError.checkNotNull(
                usagePlanId, r'GetUsagePlanKeysRequest', 'usagePlanId'),
            position: position,
            limit: limit,
            nameQuery: nameQuery);
    replace(_$result);
    return _$result;
  }
}

class _$GetUsagePlanKeysRequestPayload extends GetUsagePlanKeysRequestPayload {
  factory _$GetUsagePlanKeysRequestPayload(
          [void Function(GetUsagePlanKeysRequestPayloadBuilder)? updates]) =>
      (new GetUsagePlanKeysRequestPayloadBuilder()..update(updates))._build();

  _$GetUsagePlanKeysRequestPayload._() : super._();

  @override
  GetUsagePlanKeysRequestPayload rebuild(
          void Function(GetUsagePlanKeysRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUsagePlanKeysRequestPayloadBuilder toBuilder() =>
      new GetUsagePlanKeysRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUsagePlanKeysRequestPayload;
  }

  @override
  int get hashCode {
    return 337282211;
  }
}

class GetUsagePlanKeysRequestPayloadBuilder
    implements
        Builder<GetUsagePlanKeysRequestPayload,
            GetUsagePlanKeysRequestPayloadBuilder> {
  _$GetUsagePlanKeysRequestPayload? _$v;

  GetUsagePlanKeysRequestPayloadBuilder() {
    GetUsagePlanKeysRequestPayload._init(this);
  }

  @override
  void replace(GetUsagePlanKeysRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetUsagePlanKeysRequestPayload;
  }

  @override
  void update(void Function(GetUsagePlanKeysRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetUsagePlanKeysRequestPayload build() => _build();

  _$GetUsagePlanKeysRequestPayload _build() {
    final _$result = _$v ?? new _$GetUsagePlanKeysRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
