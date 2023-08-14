// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disk_image_description.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DiskImageDescription extends DiskImageDescription {
  @override
  final String? checksum;
  @override
  final DiskImageFormat? format;
  @override
  final String? importManifestUrl;
  @override
  final _i2.Int64 size;

  factory _$DiskImageDescription(
          [void Function(DiskImageDescriptionBuilder)? updates]) =>
      (new DiskImageDescriptionBuilder()..update(updates))._build();

  _$DiskImageDescription._(
      {this.checksum, this.format, this.importManifestUrl, required this.size})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        size, r'DiskImageDescription', 'size');
  }

  @override
  DiskImageDescription rebuild(
          void Function(DiskImageDescriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DiskImageDescriptionBuilder toBuilder() =>
      new DiskImageDescriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DiskImageDescription &&
        checksum == other.checksum &&
        format == other.format &&
        importManifestUrl == other.importManifestUrl &&
        size == other.size;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, checksum.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, importManifestUrl.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DiskImageDescriptionBuilder
    implements Builder<DiskImageDescription, DiskImageDescriptionBuilder> {
  _$DiskImageDescription? _$v;

  String? _checksum;
  String? get checksum => _$this._checksum;
  set checksum(String? checksum) => _$this._checksum = checksum;

  DiskImageFormat? _format;
  DiskImageFormat? get format => _$this._format;
  set format(DiskImageFormat? format) => _$this._format = format;

  String? _importManifestUrl;
  String? get importManifestUrl => _$this._importManifestUrl;
  set importManifestUrl(String? importManifestUrl) =>
      _$this._importManifestUrl = importManifestUrl;

  _i2.Int64? _size;
  _i2.Int64? get size => _$this._size;
  set size(_i2.Int64? size) => _$this._size = size;

  DiskImageDescriptionBuilder() {
    DiskImageDescription._init(this);
  }

  DiskImageDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _checksum = $v.checksum;
      _format = $v.format;
      _importManifestUrl = $v.importManifestUrl;
      _size = $v.size;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DiskImageDescription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DiskImageDescription;
  }

  @override
  void update(void Function(DiskImageDescriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DiskImageDescription build() => _build();

  _$DiskImageDescription _build() {
    final _$result = _$v ??
        new _$DiskImageDescription._(
            checksum: checksum,
            format: format,
            importManifestUrl: importManifestUrl,
            size: BuiltValueNullFieldError.checkNotNull(
                size, r'DiskImageDescription', 'size'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
