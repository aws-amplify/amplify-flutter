// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.execute_transaction_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExecuteTransactionInput extends ExecuteTransactionInput {
  @override
  final String? clientRequestToken;
  @override
  final _i3.ReturnConsumedCapacity? returnConsumedCapacity;
  @override
  final _i5.BuiltList<_i4.ParameterizedStatement> transactStatements;

  factory _$ExecuteTransactionInput(
          [void Function(ExecuteTransactionInputBuilder)? updates]) =>
      (new ExecuteTransactionInputBuilder()..update(updates))._build();

  _$ExecuteTransactionInput._(
      {this.clientRequestToken,
      this.returnConsumedCapacity,
      required this.transactStatements})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        transactStatements, r'ExecuteTransactionInput', 'transactStatements');
  }

  @override
  ExecuteTransactionInput rebuild(
          void Function(ExecuteTransactionInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExecuteTransactionInputBuilder toBuilder() =>
      new ExecuteTransactionInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExecuteTransactionInput &&
        clientRequestToken == other.clientRequestToken &&
        returnConsumedCapacity == other.returnConsumedCapacity &&
        transactStatements == other.transactStatements;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, clientRequestToken.hashCode),
            returnConsumedCapacity.hashCode),
        transactStatements.hashCode));
  }
}

class ExecuteTransactionInputBuilder
    implements
        Builder<ExecuteTransactionInput, ExecuteTransactionInputBuilder> {
  _$ExecuteTransactionInput? _$v;

  String? _clientRequestToken;
  String? get clientRequestToken => _$this._clientRequestToken;
  set clientRequestToken(String? clientRequestToken) =>
      _$this._clientRequestToken = clientRequestToken;

  _i3.ReturnConsumedCapacity? _returnConsumedCapacity;
  _i3.ReturnConsumedCapacity? get returnConsumedCapacity =>
      _$this._returnConsumedCapacity;
  set returnConsumedCapacity(
          _i3.ReturnConsumedCapacity? returnConsumedCapacity) =>
      _$this._returnConsumedCapacity = returnConsumedCapacity;

  _i5.ListBuilder<_i4.ParameterizedStatement>? _transactStatements;
  _i5.ListBuilder<_i4.ParameterizedStatement> get transactStatements =>
      _$this._transactStatements ??=
          new _i5.ListBuilder<_i4.ParameterizedStatement>();
  set transactStatements(
          _i5.ListBuilder<_i4.ParameterizedStatement>? transactStatements) =>
      _$this._transactStatements = transactStatements;

  ExecuteTransactionInputBuilder() {
    ExecuteTransactionInput._init(this);
  }

  ExecuteTransactionInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientRequestToken = $v.clientRequestToken;
      _returnConsumedCapacity = $v.returnConsumedCapacity;
      _transactStatements = $v.transactStatements.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExecuteTransactionInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExecuteTransactionInput;
  }

  @override
  void update(void Function(ExecuteTransactionInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExecuteTransactionInput build() => _build();

  _$ExecuteTransactionInput _build() {
    _$ExecuteTransactionInput _$result;
    try {
      _$result = _$v ??
          new _$ExecuteTransactionInput._(
              clientRequestToken: clientRequestToken,
              returnConsumedCapacity: returnConsumedCapacity,
              transactStatements: transactStatements.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transactStatements';
        transactStatements.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ExecuteTransactionInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
