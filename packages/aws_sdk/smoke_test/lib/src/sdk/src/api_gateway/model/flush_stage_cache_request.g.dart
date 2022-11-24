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
    return $jf($jc($jc(0, restApiId.hashCode), stageName.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
