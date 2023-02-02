// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_domain_names_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetDomainNamesRequest extends GetDomainNamesRequest {
  @override
  final int? limit;
  @override
  final String? position;

  factory _$GetDomainNamesRequest(
          [void Function(GetDomainNamesRequestBuilder)? updates]) =>
      (new GetDomainNamesRequestBuilder()..update(updates))._build();

  _$GetDomainNamesRequest._({this.limit, this.position}) : super._();

  @override
  GetDomainNamesRequest rebuild(
          void Function(GetDomainNamesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetDomainNamesRequestBuilder toBuilder() =>
      new GetDomainNamesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetDomainNamesRequest &&
        limit == other.limit &&
        position == other.position;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetDomainNamesRequestBuilder
    implements Builder<GetDomainNamesRequest, GetDomainNamesRequestBuilder> {
  _$GetDomainNamesRequest? _$v;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  GetDomainNamesRequestBuilder() {
    GetDomainNamesRequest._init(this);
  }

  GetDomainNamesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _limit = $v.limit;
      _position = $v.position;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetDomainNamesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetDomainNamesRequest;
  }

  @override
  void update(void Function(GetDomainNamesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetDomainNamesRequest build() => _build();

  _$GetDomainNamesRequest _build() {
    final _$result =
        _$v ?? new _$GetDomainNamesRequest._(limit: limit, position: position);
    replace(_$result);
    return _$result;
  }
}

class _$GetDomainNamesRequestPayload extends GetDomainNamesRequestPayload {
  factory _$GetDomainNamesRequestPayload(
          [void Function(GetDomainNamesRequestPayloadBuilder)? updates]) =>
      (new GetDomainNamesRequestPayloadBuilder()..update(updates))._build();

  _$GetDomainNamesRequestPayload._() : super._();

  @override
  GetDomainNamesRequestPayload rebuild(
          void Function(GetDomainNamesRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetDomainNamesRequestPayloadBuilder toBuilder() =>
      new GetDomainNamesRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetDomainNamesRequestPayload;
  }

  @override
  int get hashCode {
    return 577300914;
  }
}

class GetDomainNamesRequestPayloadBuilder
    implements
        Builder<GetDomainNamesRequestPayload,
            GetDomainNamesRequestPayloadBuilder> {
  _$GetDomainNamesRequestPayload? _$v;

  GetDomainNamesRequestPayloadBuilder() {
    GetDomainNamesRequestPayload._init(this);
  }

  @override
  void replace(GetDomainNamesRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetDomainNamesRequestPayload;
  }

  @override
  void update(void Function(GetDomainNamesRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetDomainNamesRequestPayload build() => _build();

  _$GetDomainNamesRequestPayload _build() {
    final _$result = _$v ?? new _$GetDomainNamesRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
