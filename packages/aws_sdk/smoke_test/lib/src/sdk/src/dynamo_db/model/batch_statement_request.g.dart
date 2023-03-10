// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.batch_statement_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchStatementRequest extends BatchStatementRequest {
  @override
  final bool? consistentRead;
  @override
  final _i3.BuiltList<_i2.AttributeValue>? parameters;
  @override
  final String statement;

  factory _$BatchStatementRequest(
          [void Function(BatchStatementRequestBuilder)? updates]) =>
      (new BatchStatementRequestBuilder()..update(updates))._build();

  _$BatchStatementRequest._(
      {this.consistentRead, this.parameters, required this.statement})
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
        consistentRead == other.consistentRead &&
        parameters == other.parameters &&
        statement == other.statement;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, consistentRead.hashCode);
    _$hash = $jc(_$hash, parameters.hashCode);
    _$hash = $jc(_$hash, statement.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class BatchStatementRequestBuilder
    implements Builder<BatchStatementRequest, BatchStatementRequestBuilder> {
  _$BatchStatementRequest? _$v;

  bool? _consistentRead;
  bool? get consistentRead => _$this._consistentRead;
  set consistentRead(bool? consistentRead) =>
      _$this._consistentRead = consistentRead;

  _i3.ListBuilder<_i2.AttributeValue>? _parameters;
  _i3.ListBuilder<_i2.AttributeValue> get parameters =>
      _$this._parameters ??= new _i3.ListBuilder<_i2.AttributeValue>();
  set parameters(_i3.ListBuilder<_i2.AttributeValue>? parameters) =>
      _$this._parameters = parameters;

  String? _statement;
  String? get statement => _$this._statement;
  set statement(String? statement) => _$this._statement = statement;

  BatchStatementRequestBuilder() {
    BatchStatementRequest._init(this);
  }

  BatchStatementRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _consistentRead = $v.consistentRead;
      _parameters = $v.parameters?.toBuilder();
      _statement = $v.statement;
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
              consistentRead: consistentRead,
              parameters: _parameters?.build(),
              statement: BuiltValueNullFieldError.checkNotNull(
                  statement, r'BatchStatementRequest', 'statement'));
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
