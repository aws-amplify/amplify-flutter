// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.select_resource_config_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SelectResourceConfigRequest extends SelectResourceConfigRequest {
  @override
  final String expression;
  @override
  final int? limit;
  @override
  final String? nextToken;

  factory _$SelectResourceConfigRequest(
          [void Function(SelectResourceConfigRequestBuilder)? updates]) =>
      (new SelectResourceConfigRequestBuilder()..update(updates))._build();

  _$SelectResourceConfigRequest._(
      {required this.expression, this.limit, this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        expression, r'SelectResourceConfigRequest', 'expression');
  }

  @override
  SelectResourceConfigRequest rebuild(
          void Function(SelectResourceConfigRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SelectResourceConfigRequestBuilder toBuilder() =>
      new SelectResourceConfigRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SelectResourceConfigRequest &&
        expression == other.expression &&
        limit == other.limit &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, expression.hashCode), limit.hashCode), nextToken.hashCode));
  }
}

class SelectResourceConfigRequestBuilder
    implements
        Builder<SelectResourceConfigRequest,
            SelectResourceConfigRequestBuilder> {
  _$SelectResourceConfigRequest? _$v;

  String? _expression;
  String? get expression => _$this._expression;
  set expression(String? expression) => _$this._expression = expression;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  SelectResourceConfigRequestBuilder() {
    SelectResourceConfigRequest._init(this);
  }

  SelectResourceConfigRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _expression = $v.expression;
      _limit = $v.limit;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelectResourceConfigRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SelectResourceConfigRequest;
  }

  @override
  void update(void Function(SelectResourceConfigRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SelectResourceConfigRequest build() => _build();

  _$SelectResourceConfigRequest _build() {
    final _$result = _$v ??
        new _$SelectResourceConfigRequest._(
            expression: BuiltValueNullFieldError.checkNotNull(
                expression, r'SelectResourceConfigRequest', 'expression'),
            limit: limit,
            nextToken: nextToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
