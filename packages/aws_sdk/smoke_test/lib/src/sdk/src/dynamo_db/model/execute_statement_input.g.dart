// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.execute_statement_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExecuteStatementInput extends ExecuteStatementInput {
  @override
  final bool? consistentRead;
  @override
  final int? limit;
  @override
  final String? nextToken;
  @override
  final _i5.BuiltList<_i3.AttributeValue>? parameters;
  @override
  final _i4.ReturnConsumedCapacity? returnConsumedCapacity;
  @override
  final String statement;

  factory _$ExecuteStatementInput(
          [void Function(ExecuteStatementInputBuilder)? updates]) =>
      (new ExecuteStatementInputBuilder()..update(updates))._build();

  _$ExecuteStatementInput._(
      {this.consistentRead,
      this.limit,
      this.nextToken,
      this.parameters,
      this.returnConsumedCapacity,
      required this.statement})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        statement, r'ExecuteStatementInput', 'statement');
  }

  @override
  ExecuteStatementInput rebuild(
          void Function(ExecuteStatementInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExecuteStatementInputBuilder toBuilder() =>
      new ExecuteStatementInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExecuteStatementInput &&
        consistentRead == other.consistentRead &&
        limit == other.limit &&
        nextToken == other.nextToken &&
        parameters == other.parameters &&
        returnConsumedCapacity == other.returnConsumedCapacity &&
        statement == other.statement;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, consistentRead.hashCode), limit.hashCode),
                    nextToken.hashCode),
                parameters.hashCode),
            returnConsumedCapacity.hashCode),
        statement.hashCode));
  }
}

class ExecuteStatementInputBuilder
    implements Builder<ExecuteStatementInput, ExecuteStatementInputBuilder> {
  _$ExecuteStatementInput? _$v;

  bool? _consistentRead;
  bool? get consistentRead => _$this._consistentRead;
  set consistentRead(bool? consistentRead) =>
      _$this._consistentRead = consistentRead;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i5.ListBuilder<_i3.AttributeValue>? _parameters;
  _i5.ListBuilder<_i3.AttributeValue> get parameters =>
      _$this._parameters ??= new _i5.ListBuilder<_i3.AttributeValue>();
  set parameters(_i5.ListBuilder<_i3.AttributeValue>? parameters) =>
      _$this._parameters = parameters;

  _i4.ReturnConsumedCapacity? _returnConsumedCapacity;
  _i4.ReturnConsumedCapacity? get returnConsumedCapacity =>
      _$this._returnConsumedCapacity;
  set returnConsumedCapacity(
          _i4.ReturnConsumedCapacity? returnConsumedCapacity) =>
      _$this._returnConsumedCapacity = returnConsumedCapacity;

  String? _statement;
  String? get statement => _$this._statement;
  set statement(String? statement) => _$this._statement = statement;

  ExecuteStatementInputBuilder() {
    ExecuteStatementInput._init(this);
  }

  ExecuteStatementInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _consistentRead = $v.consistentRead;
      _limit = $v.limit;
      _nextToken = $v.nextToken;
      _parameters = $v.parameters?.toBuilder();
      _returnConsumedCapacity = $v.returnConsumedCapacity;
      _statement = $v.statement;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExecuteStatementInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExecuteStatementInput;
  }

  @override
  void update(void Function(ExecuteStatementInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExecuteStatementInput build() => _build();

  _$ExecuteStatementInput _build() {
    _$ExecuteStatementInput _$result;
    try {
      _$result = _$v ??
          new _$ExecuteStatementInput._(
              consistentRead: consistentRead,
              limit: limit,
              nextToken: nextToken,
              parameters: _parameters?.build(),
              returnConsumedCapacity: returnConsumedCapacity,
              statement: BuiltValueNullFieldError.checkNotNull(
                  statement, r'ExecuteStatementInput', 'statement'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parameters';
        _parameters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ExecuteStatementInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
