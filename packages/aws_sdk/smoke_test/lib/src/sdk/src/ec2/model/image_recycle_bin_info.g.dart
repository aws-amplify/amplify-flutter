// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_recycle_bin_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImageRecycleBinInfo extends ImageRecycleBinInfo {
  @override
  final String? imageId;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final DateTime? recycleBinEnterTime;
  @override
  final DateTime? recycleBinExitTime;

  factory _$ImageRecycleBinInfo(
          [void Function(ImageRecycleBinInfoBuilder)? updates]) =>
      (new ImageRecycleBinInfoBuilder()..update(updates))._build();

  _$ImageRecycleBinInfo._(
      {this.imageId,
      this.name,
      this.description,
      this.recycleBinEnterTime,
      this.recycleBinExitTime})
      : super._();

  @override
  ImageRecycleBinInfo rebuild(
          void Function(ImageRecycleBinInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageRecycleBinInfoBuilder toBuilder() =>
      new ImageRecycleBinInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImageRecycleBinInfo &&
        imageId == other.imageId &&
        name == other.name &&
        description == other.description &&
        recycleBinEnterTime == other.recycleBinEnterTime &&
        recycleBinExitTime == other.recycleBinExitTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imageId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, recycleBinEnterTime.hashCode);
    _$hash = $jc(_$hash, recycleBinExitTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ImageRecycleBinInfoBuilder
    implements Builder<ImageRecycleBinInfo, ImageRecycleBinInfoBuilder> {
  _$ImageRecycleBinInfo? _$v;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DateTime? _recycleBinEnterTime;
  DateTime? get recycleBinEnterTime => _$this._recycleBinEnterTime;
  set recycleBinEnterTime(DateTime? recycleBinEnterTime) =>
      _$this._recycleBinEnterTime = recycleBinEnterTime;

  DateTime? _recycleBinExitTime;
  DateTime? get recycleBinExitTime => _$this._recycleBinExitTime;
  set recycleBinExitTime(DateTime? recycleBinExitTime) =>
      _$this._recycleBinExitTime = recycleBinExitTime;

  ImageRecycleBinInfoBuilder();

  ImageRecycleBinInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageId = $v.imageId;
      _name = $v.name;
      _description = $v.description;
      _recycleBinEnterTime = $v.recycleBinEnterTime;
      _recycleBinExitTime = $v.recycleBinExitTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImageRecycleBinInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImageRecycleBinInfo;
  }

  @override
  void update(void Function(ImageRecycleBinInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImageRecycleBinInfo build() => _build();

  _$ImageRecycleBinInfo _build() {
    final _$result = _$v ??
        new _$ImageRecycleBinInfo._(
            imageId: imageId,
            name: name,
            description: description,
            recycleBinEnterTime: recycleBinEnterTime,
            recycleBinExitTime: recycleBinExitTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
