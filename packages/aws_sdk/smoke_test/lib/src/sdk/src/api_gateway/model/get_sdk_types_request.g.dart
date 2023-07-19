// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_sdk_types_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetSdkTypesRequest extends GetSdkTypesRequest {
  @override
  final String? position;
  @override
  final int? limit;

  factory _$GetSdkTypesRequest(
          [void Function(GetSdkTypesRequestBuilder)? updates]) =>
      (new GetSdkTypesRequestBuilder()..update(updates))._build();

  _$GetSdkTypesRequest._({this.position, this.limit}) : super._();

  @override
  GetSdkTypesRequest rebuild(
          void Function(GetSdkTypesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetSdkTypesRequestBuilder toBuilder() =>
      new GetSdkTypesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetSdkTypesRequest &&
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

class GetSdkTypesRequestBuilder
    implements Builder<GetSdkTypesRequest, GetSdkTypesRequestBuilder> {
  _$GetSdkTypesRequest? _$v;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  GetSdkTypesRequestBuilder();

  GetSdkTypesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _position = $v.position;
      _limit = $v.limit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetSdkTypesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetSdkTypesRequest;
  }

  @override
  void update(void Function(GetSdkTypesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetSdkTypesRequest build() => _build();

  _$GetSdkTypesRequest _build() {
    final _$result =
        _$v ?? new _$GetSdkTypesRequest._(position: position, limit: limit);
    replace(_$result);
    return _$result;
  }
}

class _$GetSdkTypesRequestPayload extends GetSdkTypesRequestPayload {
  factory _$GetSdkTypesRequestPayload(
          [void Function(GetSdkTypesRequestPayloadBuilder)? updates]) =>
      (new GetSdkTypesRequestPayloadBuilder()..update(updates))._build();

  _$GetSdkTypesRequestPayload._() : super._();

  @override
  GetSdkTypesRequestPayload rebuild(
          void Function(GetSdkTypesRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetSdkTypesRequestPayloadBuilder toBuilder() =>
      new GetSdkTypesRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetSdkTypesRequestPayload;
  }

  @override
  int get hashCode {
    return 151760039;
  }
}

class GetSdkTypesRequestPayloadBuilder
    implements
        Builder<GetSdkTypesRequestPayload, GetSdkTypesRequestPayloadBuilder> {
  _$GetSdkTypesRequestPayload? _$v;

  GetSdkTypesRequestPayloadBuilder();

  @override
  void replace(GetSdkTypesRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetSdkTypesRequestPayload;
  }

  @override
  void update(void Function(GetSdkTypesRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetSdkTypesRequestPayload build() => _build();

  _$GetSdkTypesRequestPayload _build() {
    final _$result = _$v ?? new _$GetSdkTypesRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
