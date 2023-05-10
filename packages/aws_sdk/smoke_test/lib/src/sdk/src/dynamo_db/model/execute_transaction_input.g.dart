// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.execute_transaction_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExecuteTransactionInput extends ExecuteTransactionInput {
  @override
  final _i5.BuiltList<_i3.ParameterizedStatement> transactStatements;
  @override
  final String? clientRequestToken;
  @override
  final _i4.ReturnConsumedCapacity? returnConsumedCapacity;

  factory _$ExecuteTransactionInput(
          [void Function(ExecuteTransactionInputBuilder)? updates]) =>
      (new ExecuteTransactionInputBuilder()..update(updates))._build();

  _$ExecuteTransactionInput._(
      {required this.transactStatements,
      this.clientRequestToken,
      this.returnConsumedCapacity})
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
        transactStatements == other.transactStatements &&
        clientRequestToken == other.clientRequestToken &&
        returnConsumedCapacity == other.returnConsumedCapacity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transactStatements.hashCode);
    _$hash = $jc(_$hash, clientRequestToken.hashCode);
    _$hash = $jc(_$hash, returnConsumedCapacity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ExecuteTransactionInputBuilder
    implements
        Builder<ExecuteTransactionInput, ExecuteTransactionInputBuilder> {
  _$ExecuteTransactionInput? _$v;

  _i5.ListBuilder<_i3.ParameterizedStatement>? _transactStatements;
  _i5.ListBuilder<_i3.ParameterizedStatement> get transactStatements =>
      _$this._transactStatements ??=
          new _i5.ListBuilder<_i3.ParameterizedStatement>();
  set transactStatements(
          _i5.ListBuilder<_i3.ParameterizedStatement>? transactStatements) =>
      _$this._transactStatements = transactStatements;

  String? _clientRequestToken;
  String? get clientRequestToken => _$this._clientRequestToken;
  set clientRequestToken(String? clientRequestToken) =>
      _$this._clientRequestToken = clientRequestToken;

  _i4.ReturnConsumedCapacity? _returnConsumedCapacity;
  _i4.ReturnConsumedCapacity? get returnConsumedCapacity =>
      _$this._returnConsumedCapacity;
  set returnConsumedCapacity(
          _i4.ReturnConsumedCapacity? returnConsumedCapacity) =>
      _$this._returnConsumedCapacity = returnConsumedCapacity;

  ExecuteTransactionInputBuilder() {
    ExecuteTransactionInput._init(this);
  }

  ExecuteTransactionInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transactStatements = $v.transactStatements.toBuilder();
      _clientRequestToken = $v.clientRequestToken;
      _returnConsumedCapacity = $v.returnConsumedCapacity;
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
              transactStatements: transactStatements.build(),
              clientRequestToken: clientRequestToken,
              returnConsumedCapacity: returnConsumedCapacity);
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
