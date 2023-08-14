// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_storage_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceStorageInfo extends InstanceStorageInfo {
  @override
  final _i2.Int64? totalSizeInGb;
  @override
  final _i3.BuiltList<DiskInfo>? disks;
  @override
  final EphemeralNvmeSupport? nvmeSupport;
  @override
  final InstanceStorageEncryptionSupport? encryptionSupport;

  factory _$InstanceStorageInfo(
          [void Function(InstanceStorageInfoBuilder)? updates]) =>
      (new InstanceStorageInfoBuilder()..update(updates))._build();

  _$InstanceStorageInfo._(
      {this.totalSizeInGb,
      this.disks,
      this.nvmeSupport,
      this.encryptionSupport})
      : super._();

  @override
  InstanceStorageInfo rebuild(
          void Function(InstanceStorageInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceStorageInfoBuilder toBuilder() =>
      new InstanceStorageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceStorageInfo &&
        totalSizeInGb == other.totalSizeInGb &&
        disks == other.disks &&
        nvmeSupport == other.nvmeSupport &&
        encryptionSupport == other.encryptionSupport;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalSizeInGb.hashCode);
    _$hash = $jc(_$hash, disks.hashCode);
    _$hash = $jc(_$hash, nvmeSupport.hashCode);
    _$hash = $jc(_$hash, encryptionSupport.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceStorageInfoBuilder
    implements Builder<InstanceStorageInfo, InstanceStorageInfoBuilder> {
  _$InstanceStorageInfo? _$v;

  _i2.Int64? _totalSizeInGb;
  _i2.Int64? get totalSizeInGb => _$this._totalSizeInGb;
  set totalSizeInGb(_i2.Int64? totalSizeInGb) =>
      _$this._totalSizeInGb = totalSizeInGb;

  _i3.ListBuilder<DiskInfo>? _disks;
  _i3.ListBuilder<DiskInfo> get disks =>
      _$this._disks ??= new _i3.ListBuilder<DiskInfo>();
  set disks(_i3.ListBuilder<DiskInfo>? disks) => _$this._disks = disks;

  EphemeralNvmeSupport? _nvmeSupport;
  EphemeralNvmeSupport? get nvmeSupport => _$this._nvmeSupport;
  set nvmeSupport(EphemeralNvmeSupport? nvmeSupport) =>
      _$this._nvmeSupport = nvmeSupport;

  InstanceStorageEncryptionSupport? _encryptionSupport;
  InstanceStorageEncryptionSupport? get encryptionSupport =>
      _$this._encryptionSupport;
  set encryptionSupport(InstanceStorageEncryptionSupport? encryptionSupport) =>
      _$this._encryptionSupport = encryptionSupport;

  InstanceStorageInfoBuilder();

  InstanceStorageInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalSizeInGb = $v.totalSizeInGb;
      _disks = $v.disks?.toBuilder();
      _nvmeSupport = $v.nvmeSupport;
      _encryptionSupport = $v.encryptionSupport;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceStorageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceStorageInfo;
  }

  @override
  void update(void Function(InstanceStorageInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceStorageInfo build() => _build();

  _$InstanceStorageInfo _build() {
    _$InstanceStorageInfo _$result;
    try {
      _$result = _$v ??
          new _$InstanceStorageInfo._(
              totalSizeInGb: totalSizeInGb,
              disks: _disks?.build(),
              nvmeSupport: nvmeSupport,
              encryptionSupport: encryptionSupport);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'disks';
        _disks?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InstanceStorageInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
