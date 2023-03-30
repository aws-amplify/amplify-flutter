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
    var _$hash = 0;
    _$hash = $jc(_$hash, expression.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
