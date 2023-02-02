// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.parameterized_statement;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ParameterizedStatement extends ParameterizedStatement {
  @override
  final _i3.BuiltList<_i2.AttributeValue>? parameters;
  @override
  final String statement;

  factory _$ParameterizedStatement(
          [void Function(ParameterizedStatementBuilder)? updates]) =>
      (new ParameterizedStatementBuilder()..update(updates))._build();

  _$ParameterizedStatement._({this.parameters, required this.statement})
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
        parameters == other.parameters &&
        statement == other.statement;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, parameters.hashCode);
    _$hash = $jc(_$hash, statement.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ParameterizedStatementBuilder
    implements Builder<ParameterizedStatement, ParameterizedStatementBuilder> {
  _$ParameterizedStatement? _$v;

  _i3.ListBuilder<_i2.AttributeValue>? _parameters;
  _i3.ListBuilder<_i2.AttributeValue> get parameters =>
      _$this._parameters ??= new _i3.ListBuilder<_i2.AttributeValue>();
  set parameters(_i3.ListBuilder<_i2.AttributeValue>? parameters) =>
      _$this._parameters = parameters;

  String? _statement;
  String? get statement => _$this._statement;
  set statement(String? statement) => _$this._statement = statement;

  ParameterizedStatementBuilder() {
    ParameterizedStatement._init(this);
  }

  ParameterizedStatementBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _parameters = $v.parameters?.toBuilder();
      _statement = $v.statement;
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
              parameters: _parameters?.build(),
              statement: BuiltValueNullFieldError.checkNotNull(
                  statement, r'ParameterizedStatement', 'statement'));
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
