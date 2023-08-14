// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snapshot_disk_container.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SnapshotDiskContainer extends SnapshotDiskContainer {
  @override
  final String? description;
  @override
  final String? format;
  @override
  final String? url;
  @override
  final UserBucket? userBucket;

  factory _$SnapshotDiskContainer(
          [void Function(SnapshotDiskContainerBuilder)? updates]) =>
      (new SnapshotDiskContainerBuilder()..update(updates))._build();

  _$SnapshotDiskContainer._(
      {this.description, this.format, this.url, this.userBucket})
      : super._();

  @override
  SnapshotDiskContainer rebuild(
          void Function(SnapshotDiskContainerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SnapshotDiskContainerBuilder toBuilder() =>
      new SnapshotDiskContainerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SnapshotDiskContainer &&
        description == other.description &&
        format == other.format &&
        url == other.url &&
        userBucket == other.userBucket;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, userBucket.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SnapshotDiskContainerBuilder
    implements Builder<SnapshotDiskContainer, SnapshotDiskContainerBuilder> {
  _$SnapshotDiskContainer? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _format;
  String? get format => _$this._format;
  set format(String? format) => _$this._format = format;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  UserBucketBuilder? _userBucket;
  UserBucketBuilder get userBucket =>
      _$this._userBucket ??= new UserBucketBuilder();
  set userBucket(UserBucketBuilder? userBucket) =>
      _$this._userBucket = userBucket;

  SnapshotDiskContainerBuilder();

  SnapshotDiskContainerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _format = $v.format;
      _url = $v.url;
      _userBucket = $v.userBucket?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SnapshotDiskContainer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SnapshotDiskContainer;
  }

  @override
  void update(void Function(SnapshotDiskContainerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SnapshotDiskContainer build() => _build();

  _$SnapshotDiskContainer _build() {
    _$SnapshotDiskContainer _$result;
    try {
      _$result = _$v ??
          new _$SnapshotDiskContainer._(
              description: description,
              format: format,
              url: url,
              userBucket: _userBucket?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userBucket';
        _userBucket?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SnapshotDiskContainer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
