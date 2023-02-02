// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.flush_stage_cache_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FlushStageCacheRequest extends FlushStageCacheRequest {
  @override
  final String restApiId;
  @override
  final String stageName;

  factory _$FlushStageCacheRequest(
          [void Function(FlushStageCacheRequestBuilder)? updates]) =>
      (new FlushStageCacheRequestBuilder()..update(updates))._build();

  _$FlushStageCacheRequest._({required this.restApiId, required this.stageName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'FlushStageCacheRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(
        stageName, r'FlushStageCacheRequest', 'stageName');
  }

  @override
  FlushStageCacheRequest rebuild(
          void Function(FlushStageCacheRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FlushStageCacheRequestBuilder toBuilder() =>
      new FlushStageCacheRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FlushStageCacheRequest &&
        restApiId == other.restApiId &&
        stageName == other.stageName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, stageName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class FlushStageCacheRequestBuilder
    implements Builder<FlushStageCacheRequest, FlushStageCacheRequestBuilder> {
  _$FlushStageCacheRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _stageName;
  String? get stageName => _$this._stageName;
  set stageName(String? stageName) => _$this._stageName = stageName;

  FlushStageCacheRequestBuilder() {
    FlushStageCacheRequest._init(this);
  }

  FlushStageCacheRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _stageName = $v.stageName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FlushStageCacheRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FlushStageCacheRequest;
  }

  @override
  void update(void Function(FlushStageCacheRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FlushStageCacheRequest build() => _build();

  _$FlushStageCacheRequest _build() {
    final _$result = _$v ??
        new _$FlushStageCacheRequest._(
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'FlushStageCacheRequest', 'restApiId'),
            stageName: BuiltValueNullFieldError.checkNotNull(
                stageName, r'FlushStageCacheRequest', 'stageName'));
    replace(_$result);
    return _$result;
  }
}

class _$FlushStageCacheRequestPayload extends FlushStageCacheRequestPayload {
  factory _$FlushStageCacheRequestPayload(
          [void Function(FlushStageCacheRequestPayloadBuilder)? updates]) =>
      (new FlushStageCacheRequestPayloadBuilder()..update(updates))._build();

  _$FlushStageCacheRequestPayload._() : super._();

  @override
  FlushStageCacheRequestPayload rebuild(
          void Function(FlushStageCacheRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FlushStageCacheRequestPayloadBuilder toBuilder() =>
      new FlushStageCacheRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FlushStageCacheRequestPayload;
  }

  @override
  int get hashCode {
    return 1068909731;
  }
}

class FlushStageCacheRequestPayloadBuilder
    implements
        Builder<FlushStageCacheRequestPayload,
            FlushStageCacheRequestPayloadBuilder> {
  _$FlushStageCacheRequestPayload? _$v;

  FlushStageCacheRequestPayloadBuilder() {
    FlushStageCacheRequestPayload._init(this);
  }

  @override
  void replace(FlushStageCacheRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FlushStageCacheRequestPayload;
  }

  @override
  void update(void Function(FlushStageCacheRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FlushStageCacheRequestPayload build() => _build();

  _$FlushStageCacheRequestPayload _build() {
    final _$result = _$v ?? new _$FlushStageCacheRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
