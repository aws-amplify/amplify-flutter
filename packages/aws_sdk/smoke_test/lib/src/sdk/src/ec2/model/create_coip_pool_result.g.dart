// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_coip_pool_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateCoipPoolResult extends CreateCoipPoolResult {
  @override
  final CoipPool? coipPool;

  factory _$CreateCoipPoolResult(
          [void Function(CreateCoipPoolResultBuilder)? updates]) =>
      (new CreateCoipPoolResultBuilder()..update(updates))._build();

  _$CreateCoipPoolResult._({this.coipPool}) : super._();

  @override
  CreateCoipPoolResult rebuild(
          void Function(CreateCoipPoolResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateCoipPoolResultBuilder toBuilder() =>
      new CreateCoipPoolResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateCoipPoolResult && coipPool == other.coipPool;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, coipPool.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateCoipPoolResultBuilder
    implements Builder<CreateCoipPoolResult, CreateCoipPoolResultBuilder> {
  _$CreateCoipPoolResult? _$v;

  CoipPoolBuilder? _coipPool;
  CoipPoolBuilder get coipPool => _$this._coipPool ??= new CoipPoolBuilder();
  set coipPool(CoipPoolBuilder? coipPool) => _$this._coipPool = coipPool;

  CreateCoipPoolResultBuilder();

  CreateCoipPoolResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _coipPool = $v.coipPool?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateCoipPoolResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateCoipPoolResult;
  }

  @override
  void update(void Function(CreateCoipPoolResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateCoipPoolResult build() => _build();

  _$CreateCoipPoolResult _build() {
    _$CreateCoipPoolResult _$result;
    try {
      _$result =
          _$v ?? new _$CreateCoipPoolResult._(coipPool: _coipPool?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'coipPool';
        _coipPool?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateCoipPoolResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
