// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_public_ipv4_pool_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeletePublicIpv4PoolResult extends DeletePublicIpv4PoolResult {
  @override
  final bool returnValue;

  factory _$DeletePublicIpv4PoolResult(
          [void Function(DeletePublicIpv4PoolResultBuilder)? updates]) =>
      (new DeletePublicIpv4PoolResultBuilder()..update(updates))._build();

  _$DeletePublicIpv4PoolResult._({required this.returnValue}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        returnValue, r'DeletePublicIpv4PoolResult', 'returnValue');
  }

  @override
  DeletePublicIpv4PoolResult rebuild(
          void Function(DeletePublicIpv4PoolResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeletePublicIpv4PoolResultBuilder toBuilder() =>
      new DeletePublicIpv4PoolResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeletePublicIpv4PoolResult &&
        returnValue == other.returnValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, returnValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeletePublicIpv4PoolResultBuilder
    implements
        Builder<DeletePublicIpv4PoolResult, DeletePublicIpv4PoolResultBuilder> {
  _$DeletePublicIpv4PoolResult? _$v;

  bool? _returnValue;
  bool? get returnValue => _$this._returnValue;
  set returnValue(bool? returnValue) => _$this._returnValue = returnValue;

  DeletePublicIpv4PoolResultBuilder() {
    DeletePublicIpv4PoolResult._init(this);
  }

  DeletePublicIpv4PoolResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _returnValue = $v.returnValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeletePublicIpv4PoolResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeletePublicIpv4PoolResult;
  }

  @override
  void update(void Function(DeletePublicIpv4PoolResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeletePublicIpv4PoolResult build() => _build();

  _$DeletePublicIpv4PoolResult _build() {
    final _$result = _$v ??
        new _$DeletePublicIpv4PoolResult._(
            returnValue: BuiltValueNullFieldError.checkNotNull(
                returnValue, r'DeletePublicIpv4PoolResult', 'returnValue'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
