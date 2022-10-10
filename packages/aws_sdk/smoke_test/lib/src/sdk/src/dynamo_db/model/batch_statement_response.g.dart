// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.batch_statement_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchStatementResponse extends BatchStatementResponse {
  @override
  final _i2.BatchStatementError? error;
  @override
  final _i4.BuiltMap<String, _i3.AttributeValue>? item;
  @override
  final String? tableName;

  factory _$BatchStatementResponse(
          [void Function(BatchStatementResponseBuilder)? updates]) =>
      (new BatchStatementResponseBuilder()..update(updates))._build();

  _$BatchStatementResponse._({this.error, this.item, this.tableName})
      : super._();

  @override
  BatchStatementResponse rebuild(
          void Function(BatchStatementResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BatchStatementResponseBuilder toBuilder() =>
      new BatchStatementResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchStatementResponse &&
        error == other.error &&
        item == other.item &&
        tableName == other.tableName;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, error.hashCode), item.hashCode), tableName.hashCode));
  }
}

class BatchStatementResponseBuilder
    implements Builder<BatchStatementResponse, BatchStatementResponseBuilder> {
  _$BatchStatementResponse? _$v;

  _i2.BatchStatementErrorBuilder? _error;
  _i2.BatchStatementErrorBuilder get error =>
      _$this._error ??= new _i2.BatchStatementErrorBuilder();
  set error(_i2.BatchStatementErrorBuilder? error) => _$this._error = error;

  _i4.MapBuilder<String, _i3.AttributeValue>? _item;
  _i4.MapBuilder<String, _i3.AttributeValue> get item =>
      _$this._item ??= new _i4.MapBuilder<String, _i3.AttributeValue>();
  set item(_i4.MapBuilder<String, _i3.AttributeValue>? item) =>
      _$this._item = item;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  BatchStatementResponseBuilder() {
    BatchStatementResponse._init(this);
  }

  BatchStatementResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error?.toBuilder();
      _item = $v.item?.toBuilder();
      _tableName = $v.tableName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchStatementResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BatchStatementResponse;
  }

  @override
  void update(void Function(BatchStatementResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchStatementResponse build() => _build();

  _$BatchStatementResponse _build() {
    _$BatchStatementResponse _$result;
    try {
      _$result = _$v ??
          new _$BatchStatementResponse._(
              error: _error?.build(),
              item: _item?.build(),
              tableName: tableName);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'error';
        _error?.build();
        _$failedField = 'item';
        _item?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BatchStatementResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
