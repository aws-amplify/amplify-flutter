// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'volume_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VolumeDetail extends VolumeDetail {
  @override
  final _i2.Int64 size;

  factory _$VolumeDetail([void Function(VolumeDetailBuilder)? updates]) =>
      (new VolumeDetailBuilder()..update(updates))._build();

  _$VolumeDetail._({required this.size}) : super._() {
    BuiltValueNullFieldError.checkNotNull(size, r'VolumeDetail', 'size');
  }

  @override
  VolumeDetail rebuild(void Function(VolumeDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VolumeDetailBuilder toBuilder() => new VolumeDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VolumeDetail && size == other.size;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VolumeDetailBuilder
    implements Builder<VolumeDetail, VolumeDetailBuilder> {
  _$VolumeDetail? _$v;

  _i2.Int64? _size;
  _i2.Int64? get size => _$this._size;
  set size(_i2.Int64? size) => _$this._size = size;

  VolumeDetailBuilder() {
    VolumeDetail._init(this);
  }

  VolumeDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _size = $v.size;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VolumeDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VolumeDetail;
  }

  @override
  void update(void Function(VolumeDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VolumeDetail build() => _build();

  _$VolumeDetail _build() {
    final _$result = _$v ??
        new _$VolumeDetail._(
            size: BuiltValueNullFieldError.checkNotNull(
                size, r'VolumeDetail', 'size'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
