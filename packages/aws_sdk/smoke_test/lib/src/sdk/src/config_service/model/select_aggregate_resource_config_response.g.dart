// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.select_aggregate_resource_config_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SelectAggregateResourceConfigResponse
    extends SelectAggregateResourceConfigResponse {
  @override
  final String? nextToken;
  @override
  final _i2.QueryInfo? queryInfo;
  @override
  final _i3.BuiltList<String>? results;

  factory _$SelectAggregateResourceConfigResponse(
          [void Function(SelectAggregateResourceConfigResponseBuilder)?
              updates]) =>
      (new SelectAggregateResourceConfigResponseBuilder()..update(updates))
          ._build();

  _$SelectAggregateResourceConfigResponse._(
      {this.nextToken, this.queryInfo, this.results})
      : super._();

  @override
  SelectAggregateResourceConfigResponse rebuild(
          void Function(SelectAggregateResourceConfigResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SelectAggregateResourceConfigResponseBuilder toBuilder() =>
      new SelectAggregateResourceConfigResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SelectAggregateResourceConfigResponse &&
        nextToken == other.nextToken &&
        queryInfo == other.queryInfo &&
        results == other.results;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, queryInfo.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SelectAggregateResourceConfigResponseBuilder
    implements
        Builder<SelectAggregateResourceConfigResponse,
            SelectAggregateResourceConfigResponseBuilder> {
  _$SelectAggregateResourceConfigResponse? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i2.QueryInfoBuilder? _queryInfo;
  _i2.QueryInfoBuilder get queryInfo =>
      _$this._queryInfo ??= new _i2.QueryInfoBuilder();
  set queryInfo(_i2.QueryInfoBuilder? queryInfo) =>
      _$this._queryInfo = queryInfo;

  _i3.ListBuilder<String>? _results;
  _i3.ListBuilder<String> get results =>
      _$this._results ??= new _i3.ListBuilder<String>();
  set results(_i3.ListBuilder<String>? results) => _$this._results = results;

  SelectAggregateResourceConfigResponseBuilder() {
    SelectAggregateResourceConfigResponse._init(this);
  }

  SelectAggregateResourceConfigResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _queryInfo = $v.queryInfo?.toBuilder();
      _results = $v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelectAggregateResourceConfigResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SelectAggregateResourceConfigResponse;
  }

  @override
  void update(
      void Function(SelectAggregateResourceConfigResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SelectAggregateResourceConfigResponse build() => _build();

  _$SelectAggregateResourceConfigResponse _build() {
    _$SelectAggregateResourceConfigResponse _$result;
    try {
      _$result = _$v ??
          new _$SelectAggregateResourceConfigResponse._(
              nextToken: nextToken,
              queryInfo: _queryInfo?.build(),
              results: _results?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'queryInfo';
        _queryInfo?.build();
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SelectAggregateResourceConfigResponse',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
