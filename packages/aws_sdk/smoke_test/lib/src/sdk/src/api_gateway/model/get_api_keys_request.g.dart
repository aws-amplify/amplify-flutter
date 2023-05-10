// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_api_keys_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetApiKeysRequest extends GetApiKeysRequest {
  @override
  final String? position;
  @override
  final int? limit;
  @override
  final String? nameQuery;
  @override
  final String? customerId;
  @override
  final bool? includeValues;

  factory _$GetApiKeysRequest(
          [void Function(GetApiKeysRequestBuilder)? updates]) =>
      (new GetApiKeysRequestBuilder()..update(updates))._build();

  _$GetApiKeysRequest._(
      {this.position,
      this.limit,
      this.nameQuery,
      this.customerId,
      this.includeValues})
      : super._();

  @override
  GetApiKeysRequest rebuild(void Function(GetApiKeysRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetApiKeysRequestBuilder toBuilder() =>
      new GetApiKeysRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetApiKeysRequest &&
        position == other.position &&
        limit == other.limit &&
        nameQuery == other.nameQuery &&
        customerId == other.customerId &&
        includeValues == other.includeValues;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, nameQuery.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, includeValues.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetApiKeysRequestBuilder
    implements Builder<GetApiKeysRequest, GetApiKeysRequestBuilder> {
  _$GetApiKeysRequest? _$v;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nameQuery;
  String? get nameQuery => _$this._nameQuery;
  set nameQuery(String? nameQuery) => _$this._nameQuery = nameQuery;

  String? _customerId;
  String? get customerId => _$this._customerId;
  set customerId(String? customerId) => _$this._customerId = customerId;

  bool? _includeValues;
  bool? get includeValues => _$this._includeValues;
  set includeValues(bool? includeValues) =>
      _$this._includeValues = includeValues;

  GetApiKeysRequestBuilder() {
    GetApiKeysRequest._init(this);
  }

  GetApiKeysRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _position = $v.position;
      _limit = $v.limit;
      _nameQuery = $v.nameQuery;
      _customerId = $v.customerId;
      _includeValues = $v.includeValues;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetApiKeysRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetApiKeysRequest;
  }

  @override
  void update(void Function(GetApiKeysRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiKeysRequest build() => _build();

  _$GetApiKeysRequest _build() {
    final _$result = _$v ??
        new _$GetApiKeysRequest._(
            position: position,
            limit: limit,
            nameQuery: nameQuery,
            customerId: customerId,
            includeValues: includeValues);
    replace(_$result);
    return _$result;
  }
}

class _$GetApiKeysRequestPayload extends GetApiKeysRequestPayload {
  factory _$GetApiKeysRequestPayload(
          [void Function(GetApiKeysRequestPayloadBuilder)? updates]) =>
      (new GetApiKeysRequestPayloadBuilder()..update(updates))._build();

  _$GetApiKeysRequestPayload._() : super._();

  @override
  GetApiKeysRequestPayload rebuild(
          void Function(GetApiKeysRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetApiKeysRequestPayloadBuilder toBuilder() =>
      new GetApiKeysRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetApiKeysRequestPayload;
  }

  @override
  int get hashCode {
    return 404219756;
  }
}

class GetApiKeysRequestPayloadBuilder
    implements
        Builder<GetApiKeysRequestPayload, GetApiKeysRequestPayloadBuilder> {
  _$GetApiKeysRequestPayload? _$v;

  GetApiKeysRequestPayloadBuilder() {
    GetApiKeysRequestPayload._init(this);
  }

  @override
  void replace(GetApiKeysRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetApiKeysRequestPayload;
  }

  @override
  void update(void Function(GetApiKeysRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApiKeysRequestPayload build() => _build();

  _$GetApiKeysRequestPayload _build() {
    final _$result = _$v ?? new _$GetApiKeysRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
