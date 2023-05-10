// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db_streams.model.list_streams_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListStreamsInput extends ListStreamsInput {
  @override
  final String? tableName;
  @override
  final int? limit;
  @override
  final String? exclusiveStartStreamArn;

  factory _$ListStreamsInput(
          [void Function(ListStreamsInputBuilder)? updates]) =>
      (new ListStreamsInputBuilder()..update(updates))._build();

  _$ListStreamsInput._(
      {this.tableName, this.limit, this.exclusiveStartStreamArn})
      : super._();

  @override
  ListStreamsInput rebuild(void Function(ListStreamsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListStreamsInputBuilder toBuilder() =>
      new ListStreamsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListStreamsInput &&
        tableName == other.tableName &&
        limit == other.limit &&
        exclusiveStartStreamArn == other.exclusiveStartStreamArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, exclusiveStartStreamArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListStreamsInputBuilder
    implements Builder<ListStreamsInput, ListStreamsInputBuilder> {
  _$ListStreamsInput? _$v;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _exclusiveStartStreamArn;
  String? get exclusiveStartStreamArn => _$this._exclusiveStartStreamArn;
  set exclusiveStartStreamArn(String? exclusiveStartStreamArn) =>
      _$this._exclusiveStartStreamArn = exclusiveStartStreamArn;

  ListStreamsInputBuilder() {
    ListStreamsInput._init(this);
  }

  ListStreamsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableName = $v.tableName;
      _limit = $v.limit;
      _exclusiveStartStreamArn = $v.exclusiveStartStreamArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListStreamsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListStreamsInput;
  }

  @override
  void update(void Function(ListStreamsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListStreamsInput build() => _build();

  _$ListStreamsInput _build() {
    final _$result = _$v ??
        new _$ListStreamsInput._(
            tableName: tableName,
            limit: limit,
            exclusiveStartStreamArn: exclusiveStartStreamArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
