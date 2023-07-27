// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_statement_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchStatementResponse extends BatchStatementResponse {
  @override
  final _i2.BatchStatementError? error;
  @override
  final String? tableName;
  @override
  final _i4.BuiltMap<String, _i3.AttributeValue>? item;

  factory _$BatchStatementResponse(
          [void Function(BatchStatementResponseBuilder)? updates]) =>
      (new BatchStatementResponseBuilder()..update(updates))._build();

  _$BatchStatementResponse._({this.error, this.tableName, this.item})
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
        tableName == other.tableName &&
        item == other.item;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jc(_$hash, item.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class BatchStatementResponseBuilder
    implements Builder<BatchStatementResponse, BatchStatementResponseBuilder> {
  _$BatchStatementResponse? _$v;

  _i2.BatchStatementErrorBuilder? _error;
  _i2.BatchStatementErrorBuilder get error =>
      _$this._error ??= new _i2.BatchStatementErrorBuilder();
  set error(_i2.BatchStatementErrorBuilder? error) => _$this._error = error;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  _i4.MapBuilder<String, _i3.AttributeValue>? _item;
  _i4.MapBuilder<String, _i3.AttributeValue> get item =>
      _$this._item ??= new _i4.MapBuilder<String, _i3.AttributeValue>();
  set item(_i4.MapBuilder<String, _i3.AttributeValue>? item) =>
      _$this._item = item;

  BatchStatementResponseBuilder();

  BatchStatementResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error?.toBuilder();
      _tableName = $v.tableName;
      _item = $v.item?.toBuilder();
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
              tableName: tableName,
              item: _item?.build());
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
