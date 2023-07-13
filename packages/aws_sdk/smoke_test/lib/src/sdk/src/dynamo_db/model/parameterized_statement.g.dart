// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parameterized_statement.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ParameterizedStatement extends ParameterizedStatement {
  @override
  final String statement;
  @override
  final _i4.BuiltList<_i2.AttributeValue>? parameters;
  @override
  final _i3.ReturnValuesOnConditionCheckFailure?
      returnValuesOnConditionCheckFailure;

  factory _$ParameterizedStatement(
          [void Function(ParameterizedStatementBuilder)? updates]) =>
      (new ParameterizedStatementBuilder()..update(updates))._build();

  _$ParameterizedStatement._(
      {required this.statement,
      this.parameters,
      this.returnValuesOnConditionCheckFailure})
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
        parameters == other.parameters &&
        returnValuesOnConditionCheckFailure ==
            other.returnValuesOnConditionCheckFailure;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, statement.hashCode);
    _$hash = $jc(_$hash, parameters.hashCode);
    _$hash = $jc(_$hash, returnValuesOnConditionCheckFailure.hashCode);
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

  _i4.ListBuilder<_i2.AttributeValue>? _parameters;
  _i4.ListBuilder<_i2.AttributeValue> get parameters =>
      _$this._parameters ??= new _i4.ListBuilder<_i2.AttributeValue>();
  set parameters(_i4.ListBuilder<_i2.AttributeValue>? parameters) =>
      _$this._parameters = parameters;

  _i3.ReturnValuesOnConditionCheckFailure? _returnValuesOnConditionCheckFailure;
  _i3.ReturnValuesOnConditionCheckFailure?
      get returnValuesOnConditionCheckFailure =>
          _$this._returnValuesOnConditionCheckFailure;
  set returnValuesOnConditionCheckFailure(
          _i3.ReturnValuesOnConditionCheckFailure?
              returnValuesOnConditionCheckFailure) =>
      _$this._returnValuesOnConditionCheckFailure =
          returnValuesOnConditionCheckFailure;

  ParameterizedStatementBuilder() {
    ParameterizedStatement._init(this);
  }

  ParameterizedStatementBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _statement = $v.statement;
      _parameters = $v.parameters?.toBuilder();
      _returnValuesOnConditionCheckFailure =
          $v.returnValuesOnConditionCheckFailure;
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
              parameters: _parameters?.build(),
              returnValuesOnConditionCheckFailure:
                  returnValuesOnConditionCheckFailure);
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
