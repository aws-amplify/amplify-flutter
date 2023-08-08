// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_aggregate_resource_config_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SelectAggregateResourceConfigRequest
    extends SelectAggregateResourceConfigRequest {
  @override
  final String expression;
  @override
  final String configurationAggregatorName;
  @override
  final int limit;
  @override
  final int maxResults;
  @override
  final String? nextToken;

  factory _$SelectAggregateResourceConfigRequest(
          [void Function(SelectAggregateResourceConfigRequestBuilder)?
              updates]) =>
      (new SelectAggregateResourceConfigRequestBuilder()..update(updates))
          ._build();

  _$SelectAggregateResourceConfigRequest._(
      {required this.expression,
      required this.configurationAggregatorName,
      required this.limit,
      required this.maxResults,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        expression, r'SelectAggregateResourceConfigRequest', 'expression');
    BuiltValueNullFieldError.checkNotNull(configurationAggregatorName,
        r'SelectAggregateResourceConfigRequest', 'configurationAggregatorName');
    BuiltValueNullFieldError.checkNotNull(
        limit, r'SelectAggregateResourceConfigRequest', 'limit');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'SelectAggregateResourceConfigRequest', 'maxResults');
  }

  @override
  SelectAggregateResourceConfigRequest rebuild(
          void Function(SelectAggregateResourceConfigRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SelectAggregateResourceConfigRequestBuilder toBuilder() =>
      new SelectAggregateResourceConfigRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SelectAggregateResourceConfigRequest &&
        expression == other.expression &&
        configurationAggregatorName == other.configurationAggregatorName &&
        limit == other.limit &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, expression.hashCode);
    _$hash = $jc(_$hash, configurationAggregatorName.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SelectAggregateResourceConfigRequestBuilder
    implements
        Builder<SelectAggregateResourceConfigRequest,
            SelectAggregateResourceConfigRequestBuilder> {
  _$SelectAggregateResourceConfigRequest? _$v;

  String? _expression;
  String? get expression => _$this._expression;
  set expression(String? expression) => _$this._expression = expression;

  String? _configurationAggregatorName;
  String? get configurationAggregatorName =>
      _$this._configurationAggregatorName;
  set configurationAggregatorName(String? configurationAggregatorName) =>
      _$this._configurationAggregatorName = configurationAggregatorName;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  SelectAggregateResourceConfigRequestBuilder() {
    SelectAggregateResourceConfigRequest._init(this);
  }

  SelectAggregateResourceConfigRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _expression = $v.expression;
      _configurationAggregatorName = $v.configurationAggregatorName;
      _limit = $v.limit;
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelectAggregateResourceConfigRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SelectAggregateResourceConfigRequest;
  }

  @override
  void update(
      void Function(SelectAggregateResourceConfigRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SelectAggregateResourceConfigRequest build() => _build();

  _$SelectAggregateResourceConfigRequest _build() {
    final _$result = _$v ??
        new _$SelectAggregateResourceConfigRequest._(
            expression: BuiltValueNullFieldError.checkNotNull(expression,
                r'SelectAggregateResourceConfigRequest', 'expression'),
            configurationAggregatorName: BuiltValueNullFieldError.checkNotNull(
                configurationAggregatorName,
                r'SelectAggregateResourceConfigRequest',
                'configurationAggregatorName'),
            limit: BuiltValueNullFieldError.checkNotNull(
                limit, r'SelectAggregateResourceConfigRequest', 'limit'),
            maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                r'SelectAggregateResourceConfigRequest', 'maxResults'),
            nextToken: nextToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
