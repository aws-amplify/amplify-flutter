// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_models_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetModelsRequest extends GetModelsRequest {
  @override
  final String restApiId;
  @override
  final String? position;
  @override
  final int? limit;

  factory _$GetModelsRequest(
          [void Function(GetModelsRequestBuilder)? updates]) =>
      (new GetModelsRequestBuilder()..update(updates))._build();

  _$GetModelsRequest._({required this.restApiId, this.position, this.limit})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'GetModelsRequest', 'restApiId');
  }

  @override
  GetModelsRequest rebuild(void Function(GetModelsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetModelsRequestBuilder toBuilder() =>
      new GetModelsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetModelsRequest &&
        restApiId == other.restApiId &&
        position == other.position &&
        limit == other.limit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetModelsRequestBuilder
    implements Builder<GetModelsRequest, GetModelsRequestBuilder> {
  _$GetModelsRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  GetModelsRequestBuilder() {
    GetModelsRequest._init(this);
  }

  GetModelsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _position = $v.position;
      _limit = $v.limit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetModelsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetModelsRequest;
  }

  @override
  void update(void Function(GetModelsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetModelsRequest build() => _build();

  _$GetModelsRequest _build() {
    final _$result = _$v ??
        new _$GetModelsRequest._(
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'GetModelsRequest', 'restApiId'),
            position: position,
            limit: limit);
    replace(_$result);
    return _$result;
  }
}

class _$GetModelsRequestPayload extends GetModelsRequestPayload {
  factory _$GetModelsRequestPayload(
          [void Function(GetModelsRequestPayloadBuilder)? updates]) =>
      (new GetModelsRequestPayloadBuilder()..update(updates))._build();

  _$GetModelsRequestPayload._() : super._();

  @override
  GetModelsRequestPayload rebuild(
          void Function(GetModelsRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetModelsRequestPayloadBuilder toBuilder() =>
      new GetModelsRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetModelsRequestPayload;
  }

  @override
  int get hashCode {
    return 848206047;
  }
}

class GetModelsRequestPayloadBuilder
    implements
        Builder<GetModelsRequestPayload, GetModelsRequestPayloadBuilder> {
  _$GetModelsRequestPayload? _$v;

  GetModelsRequestPayloadBuilder() {
    GetModelsRequestPayload._init(this);
  }

  @override
  void replace(GetModelsRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetModelsRequestPayload;
  }

  @override
  void update(void Function(GetModelsRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetModelsRequestPayload build() => _build();

  _$GetModelsRequestPayload _build() {
    final _$result = _$v ?? new _$GetModelsRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
