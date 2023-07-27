// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_usage_plans_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetUsagePlansRequest extends GetUsagePlansRequest {
  @override
  final String? position;
  @override
  final String? keyId;
  @override
  final int? limit;

  factory _$GetUsagePlansRequest(
          [void Function(GetUsagePlansRequestBuilder)? updates]) =>
      (new GetUsagePlansRequestBuilder()..update(updates))._build();

  _$GetUsagePlansRequest._({this.position, this.keyId, this.limit}) : super._();

  @override
  GetUsagePlansRequest rebuild(
          void Function(GetUsagePlansRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUsagePlansRequestBuilder toBuilder() =>
      new GetUsagePlansRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUsagePlansRequest &&
        position == other.position &&
        keyId == other.keyId &&
        limit == other.limit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jc(_$hash, keyId.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetUsagePlansRequestBuilder
    implements Builder<GetUsagePlansRequest, GetUsagePlansRequestBuilder> {
  _$GetUsagePlansRequest? _$v;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  String? _keyId;
  String? get keyId => _$this._keyId;
  set keyId(String? keyId) => _$this._keyId = keyId;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  GetUsagePlansRequestBuilder();

  GetUsagePlansRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _position = $v.position;
      _keyId = $v.keyId;
      _limit = $v.limit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetUsagePlansRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetUsagePlansRequest;
  }

  @override
  void update(void Function(GetUsagePlansRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetUsagePlansRequest build() => _build();

  _$GetUsagePlansRequest _build() {
    final _$result = _$v ??
        new _$GetUsagePlansRequest._(
            position: position, keyId: keyId, limit: limit);
    replace(_$result);
    return _$result;
  }
}

class _$GetUsagePlansRequestPayload extends GetUsagePlansRequestPayload {
  factory _$GetUsagePlansRequestPayload(
          [void Function(GetUsagePlansRequestPayloadBuilder)? updates]) =>
      (new GetUsagePlansRequestPayloadBuilder()..update(updates))._build();

  _$GetUsagePlansRequestPayload._() : super._();

  @override
  GetUsagePlansRequestPayload rebuild(
          void Function(GetUsagePlansRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUsagePlansRequestPayloadBuilder toBuilder() =>
      new GetUsagePlansRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUsagePlansRequestPayload;
  }

  @override
  int get hashCode {
    return 480962090;
  }
}

class GetUsagePlansRequestPayloadBuilder
    implements
        Builder<GetUsagePlansRequestPayload,
            GetUsagePlansRequestPayloadBuilder> {
  _$GetUsagePlansRequestPayload? _$v;

  GetUsagePlansRequestPayloadBuilder();

  @override
  void replace(GetUsagePlansRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetUsagePlansRequestPayload;
  }

  @override
  void update(void Function(GetUsagePlansRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetUsagePlansRequestPayload build() => _build();

  _$GetUsagePlansRequestPayload _build() {
    final _$result = _$v ?? new _$GetUsagePlansRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
