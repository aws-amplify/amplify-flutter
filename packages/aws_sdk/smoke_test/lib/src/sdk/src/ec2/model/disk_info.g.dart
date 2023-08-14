// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disk_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DiskInfo extends DiskInfo {
  @override
  final _i2.Int64? sizeInGb;
  @override
  final int? count;
  @override
  final DiskType? type;

  factory _$DiskInfo([void Function(DiskInfoBuilder)? updates]) =>
      (new DiskInfoBuilder()..update(updates))._build();

  _$DiskInfo._({this.sizeInGb, this.count, this.type}) : super._();

  @override
  DiskInfo rebuild(void Function(DiskInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DiskInfoBuilder toBuilder() => new DiskInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DiskInfo &&
        sizeInGb == other.sizeInGb &&
        count == other.count &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sizeInGb.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DiskInfoBuilder implements Builder<DiskInfo, DiskInfoBuilder> {
  _$DiskInfo? _$v;

  _i2.Int64? _sizeInGb;
  _i2.Int64? get sizeInGb => _$this._sizeInGb;
  set sizeInGb(_i2.Int64? sizeInGb) => _$this._sizeInGb = sizeInGb;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  DiskType? _type;
  DiskType? get type => _$this._type;
  set type(DiskType? type) => _$this._type = type;

  DiskInfoBuilder();

  DiskInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sizeInGb = $v.sizeInGb;
      _count = $v.count;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DiskInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DiskInfo;
  }

  @override
  void update(void Function(DiskInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DiskInfo build() => _build();

  _$DiskInfo _build() {
    final _$result =
        _$v ?? new _$DiskInfo._(sizeInGb: sizeInGb, count: count, type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
