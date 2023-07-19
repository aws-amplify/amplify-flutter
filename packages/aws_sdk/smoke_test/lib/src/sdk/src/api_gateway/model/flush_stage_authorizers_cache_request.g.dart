// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flush_stage_authorizers_cache_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FlushStageAuthorizersCacheRequest
    extends FlushStageAuthorizersCacheRequest {
  @override
  final String restApiId;
  @override
  final String stageName;

  factory _$FlushStageAuthorizersCacheRequest(
          [void Function(FlushStageAuthorizersCacheRequestBuilder)? updates]) =>
      (new FlushStageAuthorizersCacheRequestBuilder()..update(updates))
          ._build();

  _$FlushStageAuthorizersCacheRequest._(
      {required this.restApiId, required this.stageName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'FlushStageAuthorizersCacheRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(
        stageName, r'FlushStageAuthorizersCacheRequest', 'stageName');
  }

  @override
  FlushStageAuthorizersCacheRequest rebuild(
          void Function(FlushStageAuthorizersCacheRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FlushStageAuthorizersCacheRequestBuilder toBuilder() =>
      new FlushStageAuthorizersCacheRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FlushStageAuthorizersCacheRequest &&
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

class FlushStageAuthorizersCacheRequestBuilder
    implements
        Builder<FlushStageAuthorizersCacheRequest,
            FlushStageAuthorizersCacheRequestBuilder> {
  _$FlushStageAuthorizersCacheRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _stageName;
  String? get stageName => _$this._stageName;
  set stageName(String? stageName) => _$this._stageName = stageName;

  FlushStageAuthorizersCacheRequestBuilder();

  FlushStageAuthorizersCacheRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _stageName = $v.stageName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FlushStageAuthorizersCacheRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FlushStageAuthorizersCacheRequest;
  }

  @override
  void update(
      void Function(FlushStageAuthorizersCacheRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FlushStageAuthorizersCacheRequest build() => _build();

  _$FlushStageAuthorizersCacheRequest _build() {
    final _$result = _$v ??
        new _$FlushStageAuthorizersCacheRequest._(
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'FlushStageAuthorizersCacheRequest', 'restApiId'),
            stageName: BuiltValueNullFieldError.checkNotNull(
                stageName, r'FlushStageAuthorizersCacheRequest', 'stageName'));
    replace(_$result);
    return _$result;
  }
}

class _$FlushStageAuthorizersCacheRequestPayload
    extends FlushStageAuthorizersCacheRequestPayload {
  factory _$FlushStageAuthorizersCacheRequestPayload(
          [void Function(FlushStageAuthorizersCacheRequestPayloadBuilder)?
              updates]) =>
      (new FlushStageAuthorizersCacheRequestPayloadBuilder()..update(updates))
          ._build();

  _$FlushStageAuthorizersCacheRequestPayload._() : super._();

  @override
  FlushStageAuthorizersCacheRequestPayload rebuild(
          void Function(FlushStageAuthorizersCacheRequestPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FlushStageAuthorizersCacheRequestPayloadBuilder toBuilder() =>
      new FlushStageAuthorizersCacheRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FlushStageAuthorizersCacheRequestPayload;
  }

  @override
  int get hashCode {
    return 850549542;
  }
}

class FlushStageAuthorizersCacheRequestPayloadBuilder
    implements
        Builder<FlushStageAuthorizersCacheRequestPayload,
            FlushStageAuthorizersCacheRequestPayloadBuilder> {
  _$FlushStageAuthorizersCacheRequestPayload? _$v;

  FlushStageAuthorizersCacheRequestPayloadBuilder();

  @override
  void replace(FlushStageAuthorizersCacheRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FlushStageAuthorizersCacheRequestPayload;
  }

  @override
  void update(
      void Function(FlushStageAuthorizersCacheRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FlushStageAuthorizersCacheRequestPayload build() => _build();

  _$FlushStageAuthorizersCacheRequestPayload _build() {
    final _$result = _$v ?? new _$FlushStageAuthorizersCacheRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
