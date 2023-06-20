// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_request_validators_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetRequestValidatorsRequest extends GetRequestValidatorsRequest {
  @override
  final String restApiId;
  @override
  final String? position;
  @override
  final int? limit;

  factory _$GetRequestValidatorsRequest(
          [void Function(GetRequestValidatorsRequestBuilder)? updates]) =>
      (new GetRequestValidatorsRequestBuilder()..update(updates))._build();

  _$GetRequestValidatorsRequest._(
      {required this.restApiId, this.position, this.limit})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'GetRequestValidatorsRequest', 'restApiId');
  }

  @override
  GetRequestValidatorsRequest rebuild(
          void Function(GetRequestValidatorsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetRequestValidatorsRequestBuilder toBuilder() =>
      new GetRequestValidatorsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetRequestValidatorsRequest &&
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

class GetRequestValidatorsRequestBuilder
    implements
        Builder<GetRequestValidatorsRequest,
            GetRequestValidatorsRequestBuilder> {
  _$GetRequestValidatorsRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  GetRequestValidatorsRequestBuilder() {
    GetRequestValidatorsRequest._init(this);
  }

  GetRequestValidatorsRequestBuilder get _$this {
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
  void replace(GetRequestValidatorsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetRequestValidatorsRequest;
  }

  @override
  void update(void Function(GetRequestValidatorsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetRequestValidatorsRequest build() => _build();

  _$GetRequestValidatorsRequest _build() {
    final _$result = _$v ??
        new _$GetRequestValidatorsRequest._(
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'GetRequestValidatorsRequest', 'restApiId'),
            position: position,
            limit: limit);
    replace(_$result);
    return _$result;
  }
}

class _$GetRequestValidatorsRequestPayload
    extends GetRequestValidatorsRequestPayload {
  factory _$GetRequestValidatorsRequestPayload(
          [void Function(GetRequestValidatorsRequestPayloadBuilder)?
              updates]) =>
      (new GetRequestValidatorsRequestPayloadBuilder()..update(updates))
          ._build();

  _$GetRequestValidatorsRequestPayload._() : super._();

  @override
  GetRequestValidatorsRequestPayload rebuild(
          void Function(GetRequestValidatorsRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetRequestValidatorsRequestPayloadBuilder toBuilder() =>
      new GetRequestValidatorsRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetRequestValidatorsRequestPayload;
  }

  @override
  int get hashCode {
    return 487008614;
  }
}

class GetRequestValidatorsRequestPayloadBuilder
    implements
        Builder<GetRequestValidatorsRequestPayload,
            GetRequestValidatorsRequestPayloadBuilder> {
  _$GetRequestValidatorsRequestPayload? _$v;

  GetRequestValidatorsRequestPayloadBuilder() {
    GetRequestValidatorsRequestPayload._init(this);
  }

  @override
  void replace(GetRequestValidatorsRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetRequestValidatorsRequestPayload;
  }

  @override
  void update(
      void Function(GetRequestValidatorsRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetRequestValidatorsRequestPayload build() => _build();

  _$GetRequestValidatorsRequestPayload _build() {
    final _$result = _$v ?? new _$GetRequestValidatorsRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
