// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_disk_container.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImageDiskContainer extends ImageDiskContainer {
  @override
  final String? description;
  @override
  final String? deviceName;
  @override
  final String? format;
  @override
  final String? snapshotId;
  @override
  final String? url;
  @override
  final UserBucket? userBucket;

  factory _$ImageDiskContainer(
          [void Function(ImageDiskContainerBuilder)? updates]) =>
      (new ImageDiskContainerBuilder()..update(updates))._build();

  _$ImageDiskContainer._(
      {this.description,
      this.deviceName,
      this.format,
      this.snapshotId,
      this.url,
      this.userBucket})
      : super._();

  @override
  ImageDiskContainer rebuild(
          void Function(ImageDiskContainerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageDiskContainerBuilder toBuilder() =>
      new ImageDiskContainerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImageDiskContainer &&
        description == other.description &&
        deviceName == other.deviceName &&
        format == other.format &&
        snapshotId == other.snapshotId &&
        url == other.url &&
        userBucket == other.userBucket;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, deviceName.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, snapshotId.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, userBucket.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ImageDiskContainerBuilder
    implements Builder<ImageDiskContainer, ImageDiskContainerBuilder> {
  _$ImageDiskContainer? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _deviceName;
  String? get deviceName => _$this._deviceName;
  set deviceName(String? deviceName) => _$this._deviceName = deviceName;

  String? _format;
  String? get format => _$this._format;
  set format(String? format) => _$this._format = format;

  String? _snapshotId;
  String? get snapshotId => _$this._snapshotId;
  set snapshotId(String? snapshotId) => _$this._snapshotId = snapshotId;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  UserBucketBuilder? _userBucket;
  UserBucketBuilder get userBucket =>
      _$this._userBucket ??= new UserBucketBuilder();
  set userBucket(UserBucketBuilder? userBucket) =>
      _$this._userBucket = userBucket;

  ImageDiskContainerBuilder();

  ImageDiskContainerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _deviceName = $v.deviceName;
      _format = $v.format;
      _snapshotId = $v.snapshotId;
      _url = $v.url;
      _userBucket = $v.userBucket?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImageDiskContainer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImageDiskContainer;
  }

  @override
  void update(void Function(ImageDiskContainerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImageDiskContainer build() => _build();

  _$ImageDiskContainer _build() {
    _$ImageDiskContainer _$result;
    try {
      _$result = _$v ??
          new _$ImageDiskContainer._(
              description: description,
              deviceName: deviceName,
              format: format,
              snapshotId: snapshotId,
              url: url,
              userBucket: _userBucket?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userBucket';
        _userBucket?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ImageDiskContainer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
