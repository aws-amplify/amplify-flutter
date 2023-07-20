// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_rest_apis_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetRestApisRequest extends GetRestApisRequest {
  @override
  final String? position;
  @override
  final int? limit;

  factory _$GetRestApisRequest(
          [void Function(GetRestApisRequestBuilder)? updates]) =>
      (new GetRestApisRequestBuilder()..update(updates))._build();

  _$GetRestApisRequest._({this.position, this.limit}) : super._();

  @override
  GetRestApisRequest rebuild(
          void Function(GetRestApisRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetRestApisRequestBuilder toBuilder() =>
      new GetRestApisRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetRestApisRequest &&
        position == other.position &&
        limit == other.limit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetRestApisRequestBuilder
    implements Builder<GetRestApisRequest, GetRestApisRequestBuilder> {
  _$GetRestApisRequest? _$v;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  GetRestApisRequestBuilder();

  GetRestApisRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _position = $v.position;
      _limit = $v.limit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetRestApisRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetRestApisRequest;
  }

  @override
  void update(void Function(GetRestApisRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetRestApisRequest build() => _build();

  _$GetRestApisRequest _build() {
    final _$result =
        _$v ?? new _$GetRestApisRequest._(position: position, limit: limit);
    replace(_$result);
    return _$result;
  }
}

class _$GetRestApisRequestPayload extends GetRestApisRequestPayload {
  factory _$GetRestApisRequestPayload(
          [void Function(GetRestApisRequestPayloadBuilder)? updates]) =>
      (new GetRestApisRequestPayloadBuilder()..update(updates))._build();

  _$GetRestApisRequestPayload._() : super._();

  @override
  GetRestApisRequestPayload rebuild(
          void Function(GetRestApisRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetRestApisRequestPayloadBuilder toBuilder() =>
      new GetRestApisRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetRestApisRequestPayload;
  }

  @override
  int get hashCode {
    return 936572399;
  }
}

class GetRestApisRequestPayloadBuilder
    implements
        Builder<GetRestApisRequestPayload, GetRestApisRequestPayloadBuilder> {
  _$GetRestApisRequestPayload? _$v;

  GetRestApisRequestPayloadBuilder();

  @override
  void replace(GetRestApisRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetRestApisRequestPayload;
  }

  @override
  void update(void Function(GetRestApisRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetRestApisRequestPayload build() => _build();

  _$GetRestApisRequestPayload _build() {
    final _$result = _$v ?? new _$GetRestApisRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
