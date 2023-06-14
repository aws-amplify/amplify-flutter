// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_records_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetRecordsInput extends GetRecordsInput {
  @override
  final String shardIterator;
  @override
  final int? limit;

  factory _$GetRecordsInput([void Function(GetRecordsInputBuilder)? updates]) =>
      (new GetRecordsInputBuilder()..update(updates))._build();

  _$GetRecordsInput._({required this.shardIterator, this.limit}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        shardIterator, r'GetRecordsInput', 'shardIterator');
  }

  @override
  GetRecordsInput rebuild(void Function(GetRecordsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetRecordsInputBuilder toBuilder() =>
      new GetRecordsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetRecordsInput &&
        shardIterator == other.shardIterator &&
        limit == other.limit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, shardIterator.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetRecordsInputBuilder
    implements Builder<GetRecordsInput, GetRecordsInputBuilder> {
  _$GetRecordsInput? _$v;

  String? _shardIterator;
  String? get shardIterator => _$this._shardIterator;
  set shardIterator(String? shardIterator) =>
      _$this._shardIterator = shardIterator;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  GetRecordsInputBuilder() {
    GetRecordsInput._init(this);
  }

  GetRecordsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shardIterator = $v.shardIterator;
      _limit = $v.limit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetRecordsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetRecordsInput;
  }

  @override
  void update(void Function(GetRecordsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetRecordsInput build() => _build();

  _$GetRecordsInput _build() {
    final _$result = _$v ??
        new _$GetRecordsInput._(
            shardIterator: BuiltValueNullFieldError.checkNotNull(
                shardIterator, r'GetRecordsInput', 'shardIterator'),
            limit: limit);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
