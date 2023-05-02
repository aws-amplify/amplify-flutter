// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.parameterized_statement;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ParameterizedStatement extends ParameterizedStatement {
  @override
  final String statement;
  @override
  final _i3.BuiltList<_i2.AttributeValue>? parameters;

  factory _$ParameterizedStatement(
          [void Function(ParameterizedStatementBuilder)? updates]) =>
      (new ParameterizedStatementBuilder()..update(updates))._build();

  _$ParameterizedStatement._({required this.statement, this.parameters})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        statement, r'ParameterizedStatement', 'statement');
  }

  @override
  ParameterizedStatement rebuild(
          void Function(ParameterizedStatementBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParameterizedStatementBuilder toBuilder() =>
      new ParameterizedStatementBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParameterizedStatement &&
        statement == other.statement &&
        parameters == other.parameters;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, statement.hashCode);
    _$hash = $jc(_$hash, parameters.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ParameterizedStatementBuilder
    implements Builder<ParameterizedStatement, ParameterizedStatementBuilder> {
  _$ParameterizedStatement? _$v;

  String? _statement;
  String? get statement => _$this._statement;
  set statement(String? statement) => _$this._statement = statement;

  _i3.ListBuilder<_i2.AttributeValue>? _parameters;
  _i3.ListBuilder<_i2.AttributeValue> get parameters =>
      _$this._parameters ??= new _i3.ListBuilder<_i2.AttributeValue>();
  set parameters(_i3.ListBuilder<_i2.AttributeValue>? parameters) =>
      _$this._parameters = parameters;

  ParameterizedStatementBuilder() {
    ParameterizedStatement._init(this);
  }

  ParameterizedStatementBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _statement = $v.statement;
      _parameters = $v.parameters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParameterizedStatement other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParameterizedStatement;
  }

  @override
  void update(void Function(ParameterizedStatementBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParameterizedStatement build() => _build();

  _$ParameterizedStatement _build() {
    _$ParameterizedStatement _$result;
    try {
      _$result = _$v ??
          new _$ParameterizedStatement._(
              statement: BuiltValueNullFieldError.checkNotNull(
                  statement, r'ParameterizedStatement', 'statement'),
              parameters: _parameters?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parameters';
        _parameters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ParameterizedStatement', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
