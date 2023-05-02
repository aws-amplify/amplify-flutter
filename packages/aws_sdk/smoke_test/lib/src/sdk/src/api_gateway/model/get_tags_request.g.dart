// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_tags_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetTagsRequest extends GetTagsRequest {
  @override
  final String resourceArn;
  @override
  final String? position;
  @override
  final int? limit;

  factory _$GetTagsRequest([void Function(GetTagsRequestBuilder)? updates]) =>
      (new GetTagsRequestBuilder()..update(updates))._build();

  _$GetTagsRequest._({required this.resourceArn, this.position, this.limit})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        resourceArn, r'GetTagsRequest', 'resourceArn');
  }

  @override
  GetTagsRequest rebuild(void Function(GetTagsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetTagsRequestBuilder toBuilder() =>
      new GetTagsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetTagsRequest &&
        resourceArn == other.resourceArn &&
        position == other.position &&
        limit == other.limit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceArn.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetTagsRequestBuilder
    implements Builder<GetTagsRequest, GetTagsRequestBuilder> {
  _$GetTagsRequest? _$v;

  String? _resourceArn;
  String? get resourceArn => _$this._resourceArn;
  set resourceArn(String? resourceArn) => _$this._resourceArn = resourceArn;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  GetTagsRequestBuilder() {
    GetTagsRequest._init(this);
  }

  GetTagsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceArn = $v.resourceArn;
      _position = $v.position;
      _limit = $v.limit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetTagsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetTagsRequest;
  }

  @override
  void update(void Function(GetTagsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetTagsRequest build() => _build();

  _$GetTagsRequest _build() {
    final _$result = _$v ??
        new _$GetTagsRequest._(
            resourceArn: BuiltValueNullFieldError.checkNotNull(
                resourceArn, r'GetTagsRequest', 'resourceArn'),
            position: position,
            limit: limit);
    replace(_$result);
    return _$result;
  }
}

class _$GetTagsRequestPayload extends GetTagsRequestPayload {
  factory _$GetTagsRequestPayload(
          [void Function(GetTagsRequestPayloadBuilder)? updates]) =>
      (new GetTagsRequestPayloadBuilder()..update(updates))._build();

  _$GetTagsRequestPayload._() : super._();

  @override
  GetTagsRequestPayload rebuild(
          void Function(GetTagsRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetTagsRequestPayloadBuilder toBuilder() =>
      new GetTagsRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetTagsRequestPayload;
  }

  @override
  int get hashCode {
    return 1026054959;
  }
}

class GetTagsRequestPayloadBuilder
    implements Builder<GetTagsRequestPayload, GetTagsRequestPayloadBuilder> {
  _$GetTagsRequestPayload? _$v;

  GetTagsRequestPayloadBuilder() {
    GetTagsRequestPayload._init(this);
  }

  @override
  void replace(GetTagsRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetTagsRequestPayload;
  }

  @override
  void update(void Function(GetTagsRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetTagsRequestPayload build() => _build();

  _$GetTagsRequestPayload _build() {
    final _$result = _$v ?? new _$GetTagsRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
