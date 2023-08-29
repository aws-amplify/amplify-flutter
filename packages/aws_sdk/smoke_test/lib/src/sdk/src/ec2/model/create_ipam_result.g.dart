// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_ipam_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateIpamResult extends CreateIpamResult {
  @override
  final Ipam? ipam;

  factory _$CreateIpamResult(
          [void Function(CreateIpamResultBuilder)? updates]) =>
      (new CreateIpamResultBuilder()..update(updates))._build();

  _$CreateIpamResult._({this.ipam}) : super._();

  @override
  CreateIpamResult rebuild(void Function(CreateIpamResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateIpamResultBuilder toBuilder() =>
      new CreateIpamResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateIpamResult && ipam == other.ipam;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipam.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateIpamResultBuilder
    implements Builder<CreateIpamResult, CreateIpamResultBuilder> {
  _$CreateIpamResult? _$v;

  IpamBuilder? _ipam;
  IpamBuilder get ipam => _$this._ipam ??= new IpamBuilder();
  set ipam(IpamBuilder? ipam) => _$this._ipam = ipam;

  CreateIpamResultBuilder();

  CreateIpamResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipam = $v.ipam?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateIpamResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateIpamResult;
  }

  @override
  void update(void Function(CreateIpamResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateIpamResult build() => _build();

  _$CreateIpamResult _build() {
    _$CreateIpamResult _$result;
    try {
      _$result = _$v ?? new _$CreateIpamResult._(ipam: _ipam?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipam';
        _ipam?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateIpamResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
