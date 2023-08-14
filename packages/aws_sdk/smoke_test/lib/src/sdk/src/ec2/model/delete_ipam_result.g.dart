// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_ipam_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteIpamResult extends DeleteIpamResult {
  @override
  final Ipam? ipam;

  factory _$DeleteIpamResult(
          [void Function(DeleteIpamResultBuilder)? updates]) =>
      (new DeleteIpamResultBuilder()..update(updates))._build();

  _$DeleteIpamResult._({this.ipam}) : super._();

  @override
  DeleteIpamResult rebuild(void Function(DeleteIpamResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteIpamResultBuilder toBuilder() =>
      new DeleteIpamResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteIpamResult && ipam == other.ipam;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipam.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteIpamResultBuilder
    implements Builder<DeleteIpamResult, DeleteIpamResultBuilder> {
  _$DeleteIpamResult? _$v;

  IpamBuilder? _ipam;
  IpamBuilder get ipam => _$this._ipam ??= new IpamBuilder();
  set ipam(IpamBuilder? ipam) => _$this._ipam = ipam;

  DeleteIpamResultBuilder();

  DeleteIpamResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipam = $v.ipam?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteIpamResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteIpamResult;
  }

  @override
  void update(void Function(DeleteIpamResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteIpamResult build() => _build();

  _$DeleteIpamResult _build() {
    _$DeleteIpamResult _$result;
    try {
      _$result = _$v ?? new _$DeleteIpamResult._(ipam: _ipam?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipam';
        _ipam?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteIpamResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
