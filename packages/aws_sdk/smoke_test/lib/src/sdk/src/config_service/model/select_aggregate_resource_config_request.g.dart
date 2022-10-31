// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.select_aggregate_resource_config_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SelectAggregateResourceConfigRequest
    extends SelectAggregateResourceConfigRequest {
  @override
  final String configurationAggregatorName;
  @override
  final String expression;
  @override
  final int? limit;
  @override
  final int? maxResults;
  @override
  final String? nextToken;

  factory _$SelectAggregateResourceConfigRequest(
          [void Function(SelectAggregateResourceConfigRequestBuilder)?
              updates]) =>
      (new SelectAggregateResourceConfigRequestBuilder()..update(updates))
          ._build();

  _$SelectAggregateResourceConfigRequest._(
      {required this.configurationAggregatorName,
      required this.expression,
      this.limit,
      this.maxResults,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(configurationAggregatorName,
        r'SelectAggregateResourceConfigRequest', 'configurationAggregatorName');
    BuiltValueNullFieldError.checkNotNull(
        expression, r'SelectAggregateResourceConfigRequest', 'expression');
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
        configurationAggregatorName == other.configurationAggregatorName &&
        expression == other.expression &&
        limit == other.limit &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc(0, configurationAggregatorName.hashCode),
                    expression.hashCode),
                limit.hashCode),
            maxResults.hashCode),
        nextToken.hashCode));
  }
}

class SelectAggregateResourceConfigRequestBuilder
    implements
        Builder<SelectAggregateResourceConfigRequest,
            SelectAggregateResourceConfigRequestBuilder> {
  _$SelectAggregateResourceConfigRequest? _$v;

  String? _configurationAggregatorName;
  String? get configurationAggregatorName =>
      _$this._configurationAggregatorName;
  set configurationAggregatorName(String? configurationAggregatorName) =>
      _$this._configurationAggregatorName = configurationAggregatorName;

  String? _expression;
  String? get expression => _$this._expression;
  set expression(String? expression) => _$this._expression = expression;

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
      _configurationAggregatorName = $v.configurationAggregatorName;
      _expression = $v.expression;
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
            configurationAggregatorName: BuiltValueNullFieldError.checkNotNull(
                configurationAggregatorName,
                r'SelectAggregateResourceConfigRequest',
                'configurationAggregatorName'),
            expression: BuiltValueNullFieldError.checkNotNull(expression,
                r'SelectAggregateResourceConfigRequest', 'expression'),
            limit: limit,
            maxResults: maxResults,
            nextToken: nextToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
