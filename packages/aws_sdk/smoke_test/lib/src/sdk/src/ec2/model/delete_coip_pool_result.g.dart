// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_coip_pool_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteCoipPoolResult extends DeleteCoipPoolResult {
  @override
  final CoipPool? coipPool;

  factory _$DeleteCoipPoolResult(
          [void Function(DeleteCoipPoolResultBuilder)? updates]) =>
      (new DeleteCoipPoolResultBuilder()..update(updates))._build();

  _$DeleteCoipPoolResult._({this.coipPool}) : super._();

  @override
  DeleteCoipPoolResult rebuild(
          void Function(DeleteCoipPoolResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteCoipPoolResultBuilder toBuilder() =>
      new DeleteCoipPoolResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteCoipPoolResult && coipPool == other.coipPool;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, coipPool.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteCoipPoolResultBuilder
    implements Builder<DeleteCoipPoolResult, DeleteCoipPoolResultBuilder> {
  _$DeleteCoipPoolResult? _$v;

  CoipPoolBuilder? _coipPool;
  CoipPoolBuilder get coipPool => _$this._coipPool ??= new CoipPoolBuilder();
  set coipPool(CoipPoolBuilder? coipPool) => _$this._coipPool = coipPool;

  DeleteCoipPoolResultBuilder();

  DeleteCoipPoolResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _coipPool = $v.coipPool?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteCoipPoolResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteCoipPoolResult;
  }

  @override
  void update(void Function(DeleteCoipPoolResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteCoipPoolResult build() => _build();

  _$DeleteCoipPoolResult _build() {
    _$DeleteCoipPoolResult _$result;
    try {
      _$result =
          _$v ?? new _$DeleteCoipPoolResult._(coipPool: _coipPool?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'coipPool';
        _coipPool?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteCoipPoolResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
