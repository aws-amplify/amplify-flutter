// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'release_ipam_pool_allocation_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReleaseIpamPoolAllocationResult
    extends ReleaseIpamPoolAllocationResult {
  @override
  final bool success;

  factory _$ReleaseIpamPoolAllocationResult(
          [void Function(ReleaseIpamPoolAllocationResultBuilder)? updates]) =>
      (new ReleaseIpamPoolAllocationResultBuilder()..update(updates))._build();

  _$ReleaseIpamPoolAllocationResult._({required this.success}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        success, r'ReleaseIpamPoolAllocationResult', 'success');
  }

  @override
  ReleaseIpamPoolAllocationResult rebuild(
          void Function(ReleaseIpamPoolAllocationResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReleaseIpamPoolAllocationResultBuilder toBuilder() =>
      new ReleaseIpamPoolAllocationResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReleaseIpamPoolAllocationResult && success == other.success;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReleaseIpamPoolAllocationResultBuilder
    implements
        Builder<ReleaseIpamPoolAllocationResult,
            ReleaseIpamPoolAllocationResultBuilder> {
  _$ReleaseIpamPoolAllocationResult? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  ReleaseIpamPoolAllocationResultBuilder() {
    ReleaseIpamPoolAllocationResult._init(this);
  }

  ReleaseIpamPoolAllocationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReleaseIpamPoolAllocationResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReleaseIpamPoolAllocationResult;
  }

  @override
  void update(void Function(ReleaseIpamPoolAllocationResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReleaseIpamPoolAllocationResult build() => _build();

  _$ReleaseIpamPoolAllocationResult _build() {
    final _$result = _$v ??
        new _$ReleaseIpamPoolAllocationResult._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'ReleaseIpamPoolAllocationResult', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
