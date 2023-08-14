// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disk_image.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DiskImage extends DiskImage {
  @override
  final String? description;
  @override
  final DiskImageDetail? image;
  @override
  final VolumeDetail? volume;

  factory _$DiskImage([void Function(DiskImageBuilder)? updates]) =>
      (new DiskImageBuilder()..update(updates))._build();

  _$DiskImage._({this.description, this.image, this.volume}) : super._();

  @override
  DiskImage rebuild(void Function(DiskImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DiskImageBuilder toBuilder() => new DiskImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DiskImage &&
        description == other.description &&
        image == other.image &&
        volume == other.volume;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, volume.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DiskImageBuilder implements Builder<DiskImage, DiskImageBuilder> {
  _$DiskImage? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DiskImageDetailBuilder? _image;
  DiskImageDetailBuilder get image =>
      _$this._image ??= new DiskImageDetailBuilder();
  set image(DiskImageDetailBuilder? image) => _$this._image = image;

  VolumeDetailBuilder? _volume;
  VolumeDetailBuilder get volume =>
      _$this._volume ??= new VolumeDetailBuilder();
  set volume(VolumeDetailBuilder? volume) => _$this._volume = volume;

  DiskImageBuilder();

  DiskImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _image = $v.image?.toBuilder();
      _volume = $v.volume?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DiskImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DiskImage;
  }

  @override
  void update(void Function(DiskImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DiskImage build() => _build();

  _$DiskImage _build() {
    _$DiskImage _$result;
    try {
      _$result = _$v ??
          new _$DiskImage._(
              description: description,
              image: _image?.build(),
              volume: _volume?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'image';
        _image?.build();
        _$failedField = 'volume';
        _volume?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DiskImage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
