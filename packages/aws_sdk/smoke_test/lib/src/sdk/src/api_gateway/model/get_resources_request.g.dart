// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_resources_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetResourcesRequest extends GetResourcesRequest {
  @override
  final String restApiId;
  @override
  final String? position;
  @override
  final int? limit;
  @override
  final _i3.BuiltList<String>? embed;

  factory _$GetResourcesRequest(
          [void Function(GetResourcesRequestBuilder)? updates]) =>
      (new GetResourcesRequestBuilder()..update(updates))._build();

  _$GetResourcesRequest._(
      {required this.restApiId, this.position, this.limit, this.embed})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'GetResourcesRequest', 'restApiId');
  }

  @override
  GetResourcesRequest rebuild(
          void Function(GetResourcesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetResourcesRequestBuilder toBuilder() =>
      new GetResourcesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetResourcesRequest &&
        restApiId == other.restApiId &&
        position == other.position &&
        limit == other.limit &&
        embed == other.embed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, embed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetResourcesRequestBuilder
    implements Builder<GetResourcesRequest, GetResourcesRequestBuilder> {
  _$GetResourcesRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  _i3.ListBuilder<String>? _embed;
  _i3.ListBuilder<String> get embed =>
      _$this._embed ??= new _i3.ListBuilder<String>();
  set embed(_i3.ListBuilder<String>? embed) => _$this._embed = embed;

  GetResourcesRequestBuilder() {
    GetResourcesRequest._init(this);
  }

  GetResourcesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _position = $v.position;
      _limit = $v.limit;
      _embed = $v.embed?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetResourcesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetResourcesRequest;
  }

  @override
  void update(void Function(GetResourcesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetResourcesRequest build() => _build();

  _$GetResourcesRequest _build() {
    _$GetResourcesRequest _$result;
    try {
      _$result = _$v ??
          new _$GetResourcesRequest._(
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'GetResourcesRequest', 'restApiId'),
              position: position,
              limit: limit,
              embed: _embed?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'embed';
        _embed?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetResourcesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GetResourcesRequestPayload extends GetResourcesRequestPayload {
  factory _$GetResourcesRequestPayload(
          [void Function(GetResourcesRequestPayloadBuilder)? updates]) =>
      (new GetResourcesRequestPayloadBuilder()..update(updates))._build();

  _$GetResourcesRequestPayload._() : super._();

  @override
  GetResourcesRequestPayload rebuild(
          void Function(GetResourcesRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetResourcesRequestPayloadBuilder toBuilder() =>
      new GetResourcesRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetResourcesRequestPayload;
  }

  @override
  int get hashCode {
    return 231148410;
  }
}

class GetResourcesRequestPayloadBuilder
    implements
        Builder<GetResourcesRequestPayload, GetResourcesRequestPayloadBuilder> {
  _$GetResourcesRequestPayload? _$v;

  GetResourcesRequestPayloadBuilder() {
    GetResourcesRequestPayload._init(this);
  }

  @override
  void replace(GetResourcesRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetResourcesRequestPayload;
  }

  @override
  void update(void Function(GetResourcesRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetResourcesRequestPayload build() => _build();

  _$GetResourcesRequestPayload _build() {
    final _$result = _$v ?? new _$GetResourcesRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
