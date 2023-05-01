// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.execute_statement_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExecuteStatementInput extends ExecuteStatementInput {
  @override
  final String statement;
  @override
  final _i5.BuiltList<_i3.AttributeValue>? parameters;
  @override
  final bool? consistentRead;
  @override
  final String? nextToken;
  @override
  final _i4.ReturnConsumedCapacity? returnConsumedCapacity;
  @override
  final int? limit;

  factory _$ExecuteStatementInput(
          [void Function(ExecuteStatementInputBuilder)? updates]) =>
      (new ExecuteStatementInputBuilder()..update(updates))._build();

  _$ExecuteStatementInput._(
      {required this.statement,
      this.parameters,
      this.consistentRead,
      this.nextToken,
      this.returnConsumedCapacity,
      this.limit})
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
        statement == other.statement &&
        parameters == other.parameters &&
        consistentRead == other.consistentRead &&
        nextToken == other.nextToken &&
        returnConsumedCapacity == other.returnConsumedCapacity &&
        limit == other.limit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, statement.hashCode);
    _$hash = $jc(_$hash, parameters.hashCode);
    _$hash = $jc(_$hash, consistentRead.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, returnConsumedCapacity.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ExecuteStatementInputBuilder
    implements Builder<ExecuteStatementInput, ExecuteStatementInputBuilder> {
  _$ExecuteStatementInput? _$v;

  String? _statement;
  String? get statement => _$this._statement;
  set statement(String? statement) => _$this._statement = statement;

  _i5.ListBuilder<_i3.AttributeValue>? _parameters;
  _i5.ListBuilder<_i3.AttributeValue> get parameters =>
      _$this._parameters ??= new _i5.ListBuilder<_i3.AttributeValue>();
  set parameters(_i5.ListBuilder<_i3.AttributeValue>? parameters) =>
      _$this._parameters = parameters;

  bool? _consistentRead;
  bool? get consistentRead => _$this._consistentRead;
  set consistentRead(bool? consistentRead) =>
      _$this._consistentRead = consistentRead;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i4.ReturnConsumedCapacity? _returnConsumedCapacity;
  _i4.ReturnConsumedCapacity? get returnConsumedCapacity =>
      _$this._returnConsumedCapacity;
  set returnConsumedCapacity(
          _i4.ReturnConsumedCapacity? returnConsumedCapacity) =>
      _$this._returnConsumedCapacity = returnConsumedCapacity;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  ExecuteStatementInputBuilder() {
    ExecuteStatementInput._init(this);
  }

  ExecuteStatementInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _statement = $v.statement;
      _parameters = $v.parameters?.toBuilder();
      _consistentRead = $v.consistentRead;
      _nextToken = $v.nextToken;
      _returnConsumedCapacity = $v.returnConsumedCapacity;
      _limit = $v.limit;
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
              statement: BuiltValueNullFieldError.checkNotNull(
                  statement, r'ExecuteStatementInput', 'statement'),
              parameters: _parameters?.build(),
              consistentRead: consistentRead,
              nextToken: nextToken,
              returnConsumedCapacity: returnConsumedCapacity,
              limit: limit);
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
