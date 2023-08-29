// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disk_image_volume_description.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DiskImageVolumeDescription extends DiskImageVolumeDescription {
  @override
  final String? id;
  @override
  final _i2.Int64 size;

  factory _$DiskImageVolumeDescription(
          [void Function(DiskImageVolumeDescriptionBuilder)? updates]) =>
      (new DiskImageVolumeDescriptionBuilder()..update(updates))._build();

  _$DiskImageVolumeDescription._({this.id, required this.size}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        size, r'DiskImageVolumeDescription', 'size');
  }

  @override
  DiskImageVolumeDescription rebuild(
          void Function(DiskImageVolumeDescriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DiskImageVolumeDescriptionBuilder toBuilder() =>
      new DiskImageVolumeDescriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DiskImageVolumeDescription &&
        id == other.id &&
        size == other.size;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DiskImageVolumeDescriptionBuilder
    implements
        Builder<DiskImageVolumeDescription, DiskImageVolumeDescriptionBuilder> {
  _$DiskImageVolumeDescription? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i2.Int64? _size;
  _i2.Int64? get size => _$this._size;
  set size(_i2.Int64? size) => _$this._size = size;

  DiskImageVolumeDescriptionBuilder() {
    DiskImageVolumeDescription._init(this);
  }

  DiskImageVolumeDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _size = $v.size;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DiskImageVolumeDescription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DiskImageVolumeDescription;
  }

  @override
  void update(void Function(DiskImageVolumeDescriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DiskImageVolumeDescription build() => _build();

  _$DiskImageVolumeDescription _build() {
    final _$result = _$v ??
        new _$DiskImageVolumeDescription._(
            id: id,
            size: BuiltValueNullFieldError.checkNotNull(
                size, r'DiskImageVolumeDescription', 'size'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
