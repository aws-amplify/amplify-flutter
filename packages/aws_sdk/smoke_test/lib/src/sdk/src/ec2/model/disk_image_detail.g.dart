// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disk_image_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DiskImageDetail extends DiskImageDetail {
  @override
  final _i2.Int64 bytes;
  @override
  final DiskImageFormat? format;
  @override
  final String? importManifestUrl;

  factory _$DiskImageDetail([void Function(DiskImageDetailBuilder)? updates]) =>
      (new DiskImageDetailBuilder()..update(updates))._build();

  _$DiskImageDetail._(
      {required this.bytes, this.format, this.importManifestUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(bytes, r'DiskImageDetail', 'bytes');
  }

  @override
  DiskImageDetail rebuild(void Function(DiskImageDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DiskImageDetailBuilder toBuilder() =>
      new DiskImageDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DiskImageDetail &&
        bytes == other.bytes &&
        format == other.format &&
        importManifestUrl == other.importManifestUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bytes.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, importManifestUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DiskImageDetailBuilder
    implements Builder<DiskImageDetail, DiskImageDetailBuilder> {
  _$DiskImageDetail? _$v;

  _i2.Int64? _bytes;
  _i2.Int64? get bytes => _$this._bytes;
  set bytes(_i2.Int64? bytes) => _$this._bytes = bytes;

  DiskImageFormat? _format;
  DiskImageFormat? get format => _$this._format;
  set format(DiskImageFormat? format) => _$this._format = format;

  String? _importManifestUrl;
  String? get importManifestUrl => _$this._importManifestUrl;
  set importManifestUrl(String? importManifestUrl) =>
      _$this._importManifestUrl = importManifestUrl;

  DiskImageDetailBuilder() {
    DiskImageDetail._init(this);
  }

  DiskImageDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bytes = $v.bytes;
      _format = $v.format;
      _importManifestUrl = $v.importManifestUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DiskImageDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DiskImageDetail;
  }

  @override
  void update(void Function(DiskImageDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DiskImageDetail build() => _build();

  _$DiskImageDetail _build() {
    final _$result = _$v ??
        new _$DiskImageDetail._(
            bytes: BuiltValueNullFieldError.checkNotNull(
                bytes, r'DiskImageDetail', 'bytes'),
            format: format,
            importManifestUrl: importManifestUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
