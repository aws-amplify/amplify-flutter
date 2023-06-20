// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_vpc_links_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetVpcLinksRequest extends GetVpcLinksRequest {
  @override
  final String? position;
  @override
  final int? limit;

  factory _$GetVpcLinksRequest(
          [void Function(GetVpcLinksRequestBuilder)? updates]) =>
      (new GetVpcLinksRequestBuilder()..update(updates))._build();

  _$GetVpcLinksRequest._({this.position, this.limit}) : super._();

  @override
  GetVpcLinksRequest rebuild(
          void Function(GetVpcLinksRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetVpcLinksRequestBuilder toBuilder() =>
      new GetVpcLinksRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetVpcLinksRequest &&
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

class GetVpcLinksRequestBuilder
    implements Builder<GetVpcLinksRequest, GetVpcLinksRequestBuilder> {
  _$GetVpcLinksRequest? _$v;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  GetVpcLinksRequestBuilder() {
    GetVpcLinksRequest._init(this);
  }

  GetVpcLinksRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _position = $v.position;
      _limit = $v.limit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetVpcLinksRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetVpcLinksRequest;
  }

  @override
  void update(void Function(GetVpcLinksRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetVpcLinksRequest build() => _build();

  _$GetVpcLinksRequest _build() {
    final _$result =
        _$v ?? new _$GetVpcLinksRequest._(position: position, limit: limit);
    replace(_$result);
    return _$result;
  }
}

class _$GetVpcLinksRequestPayload extends GetVpcLinksRequestPayload {
  factory _$GetVpcLinksRequestPayload(
          [void Function(GetVpcLinksRequestPayloadBuilder)? updates]) =>
      (new GetVpcLinksRequestPayloadBuilder()..update(updates))._build();

  _$GetVpcLinksRequestPayload._() : super._();

  @override
  GetVpcLinksRequestPayload rebuild(
          void Function(GetVpcLinksRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetVpcLinksRequestPayloadBuilder toBuilder() =>
      new GetVpcLinksRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetVpcLinksRequestPayload;
  }

  @override
  int get hashCode {
    return 589447365;
  }
}

class GetVpcLinksRequestPayloadBuilder
    implements
        Builder<GetVpcLinksRequestPayload, GetVpcLinksRequestPayloadBuilder> {
  _$GetVpcLinksRequestPayload? _$v;

  GetVpcLinksRequestPayloadBuilder() {
    GetVpcLinksRequestPayload._init(this);
  }

  @override
  void replace(GetVpcLinksRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetVpcLinksRequestPayload;
  }

  @override
  void update(void Function(GetVpcLinksRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetVpcLinksRequestPayload build() => _build();

  _$GetVpcLinksRequestPayload _build() {
    final _$result = _$v ?? new _$GetVpcLinksRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
