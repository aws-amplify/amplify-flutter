// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_resource_config_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SelectResourceConfigResponse extends SelectResourceConfigResponse {
  @override
  final _i3.BuiltList<String>? results;
  @override
  final _i2.QueryInfo? queryInfo;
  @override
  final String? nextToken;

  factory _$SelectResourceConfigResponse(
          [void Function(SelectResourceConfigResponseBuilder)? updates]) =>
      (new SelectResourceConfigResponseBuilder()..update(updates))._build();

  _$SelectResourceConfigResponse._(
      {this.results, this.queryInfo, this.nextToken})
      : super._();

  @override
  SelectResourceConfigResponse rebuild(
          void Function(SelectResourceConfigResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SelectResourceConfigResponseBuilder toBuilder() =>
      new SelectResourceConfigResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SelectResourceConfigResponse &&
        results == other.results &&
        queryInfo == other.queryInfo &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jc(_$hash, queryInfo.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SelectResourceConfigResponseBuilder
    implements
        Builder<SelectResourceConfigResponse,
            SelectResourceConfigResponseBuilder> {
  _$SelectResourceConfigResponse? _$v;

  _i3.ListBuilder<String>? _results;
  _i3.ListBuilder<String> get results =>
      _$this._results ??= new _i3.ListBuilder<String>();
  set results(_i3.ListBuilder<String>? results) => _$this._results = results;

  _i2.QueryInfoBuilder? _queryInfo;
  _i2.QueryInfoBuilder get queryInfo =>
      _$this._queryInfo ??= new _i2.QueryInfoBuilder();
  set queryInfo(_i2.QueryInfoBuilder? queryInfo) =>
      _$this._queryInfo = queryInfo;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  SelectResourceConfigResponseBuilder() {
    SelectResourceConfigResponse._init(this);
  }

  SelectResourceConfigResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _results = $v.results?.toBuilder();
      _queryInfo = $v.queryInfo?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelectResourceConfigResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SelectResourceConfigResponse;
  }

  @override
  void update(void Function(SelectResourceConfigResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SelectResourceConfigResponse build() => _build();

  _$SelectResourceConfigResponse _build() {
    _$SelectResourceConfigResponse _$result;
    try {
      _$result = _$v ??
          new _$SelectResourceConfigResponse._(
              results: _results?.build(),
              queryInfo: _queryInfo?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
        _$failedField = 'queryInfo';
        _queryInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SelectResourceConfigResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
