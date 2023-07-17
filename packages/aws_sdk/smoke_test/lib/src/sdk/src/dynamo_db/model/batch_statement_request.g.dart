// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_statement_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchStatementRequest extends BatchStatementRequest {
  @override
  final String statement;
  @override
  final _i4.BuiltList<_i2.AttributeValue>? parameters;
  @override
  final bool? consistentRead;
  @override
  final _i3.ReturnValuesOnConditionCheckFailure?
      returnValuesOnConditionCheckFailure;

  factory _$BatchStatementRequest(
          [void Function(BatchStatementRequestBuilder)? updates]) =>
      (new BatchStatementRequestBuilder()..update(updates))._build();

  _$BatchStatementRequest._(
      {required this.statement,
      this.parameters,
      this.consistentRead,
      this.returnValuesOnConditionCheckFailure})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        statement, r'BatchStatementRequest', 'statement');
  }

  @override
  BatchStatementRequest rebuild(
          void Function(BatchStatementRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BatchStatementRequestBuilder toBuilder() =>
      new BatchStatementRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchStatementRequest &&
        statement == other.statement &&
        parameters == other.parameters &&
        consistentRead == other.consistentRead &&
        returnValuesOnConditionCheckFailure ==
            other.returnValuesOnConditionCheckFailure;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, statement.hashCode);
    _$hash = $jc(_$hash, parameters.hashCode);
    _$hash = $jc(_$hash, consistentRead.hashCode);
    _$hash = $jc(_$hash, returnValuesOnConditionCheckFailure.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class BatchStatementRequestBuilder
    implements Builder<BatchStatementRequest, BatchStatementRequestBuilder> {
  _$BatchStatementRequest? _$v;

  String? _statement;
  String? get statement => _$this._statement;
  set statement(String? statement) => _$this._statement = statement;

  _i4.ListBuilder<_i2.AttributeValue>? _parameters;
  _i4.ListBuilder<_i2.AttributeValue> get parameters =>
      _$this._parameters ??= new _i4.ListBuilder<_i2.AttributeValue>();
  set parameters(_i4.ListBuilder<_i2.AttributeValue>? parameters) =>
      _$this._parameters = parameters;

  bool? _consistentRead;
  bool? get consistentRead => _$this._consistentRead;
  set consistentRead(bool? consistentRead) =>
      _$this._consistentRead = consistentRead;

  _i3.ReturnValuesOnConditionCheckFailure? _returnValuesOnConditionCheckFailure;
  _i3.ReturnValuesOnConditionCheckFailure?
      get returnValuesOnConditionCheckFailure =>
          _$this._returnValuesOnConditionCheckFailure;
  set returnValuesOnConditionCheckFailure(
          _i3.ReturnValuesOnConditionCheckFailure?
              returnValuesOnConditionCheckFailure) =>
      _$this._returnValuesOnConditionCheckFailure =
          returnValuesOnConditionCheckFailure;

  BatchStatementRequestBuilder() {
    BatchStatementRequest._init(this);
  }

  BatchStatementRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _statement = $v.statement;
      _parameters = $v.parameters?.toBuilder();
      _consistentRead = $v.consistentRead;
      _returnValuesOnConditionCheckFailure =
          $v.returnValuesOnConditionCheckFailure;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchStatementRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BatchStatementRequest;
  }

  @override
  void update(void Function(BatchStatementRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchStatementRequest build() => _build();

  _$BatchStatementRequest _build() {
    _$BatchStatementRequest _$result;
    try {
      _$result = _$v ??
          new _$BatchStatementRequest._(
              statement: BuiltValueNullFieldError.checkNotNull(
                  statement, r'BatchStatementRequest', 'statement'),
              parameters: _parameters?.build(),
              consistentRead: consistentRead,
              returnValuesOnConditionCheckFailure:
                  returnValuesOnConditionCheckFailure);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parameters';
        _parameters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BatchStatementRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
