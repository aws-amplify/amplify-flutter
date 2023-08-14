// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snapshot_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SnapshotDetail extends SnapshotDetail {
  @override
  final String? description;
  @override
  final String? deviceName;
  @override
  final double diskImageSize;
  @override
  final String? format;
  @override
  final String? progress;
  @override
  final String? snapshotId;
  @override
  final String? status;
  @override
  final String? statusMessage;
  @override
  final String? url;
  @override
  final UserBucketDetails? userBucket;

  factory _$SnapshotDetail([void Function(SnapshotDetailBuilder)? updates]) =>
      (new SnapshotDetailBuilder()..update(updates))._build();

  _$SnapshotDetail._(
      {this.description,
      this.deviceName,
      required this.diskImageSize,
      this.format,
      this.progress,
      this.snapshotId,
      this.status,
      this.statusMessage,
      this.url,
      this.userBucket})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        diskImageSize, r'SnapshotDetail', 'diskImageSize');
  }

  @override
  SnapshotDetail rebuild(void Function(SnapshotDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SnapshotDetailBuilder toBuilder() =>
      new SnapshotDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SnapshotDetail &&
        description == other.description &&
        deviceName == other.deviceName &&
        diskImageSize == other.diskImageSize &&
        format == other.format &&
        progress == other.progress &&
        snapshotId == other.snapshotId &&
        status == other.status &&
        statusMessage == other.statusMessage &&
        url == other.url &&
        userBucket == other.userBucket;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, deviceName.hashCode);
    _$hash = $jc(_$hash, diskImageSize.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, progress.hashCode);
    _$hash = $jc(_$hash, snapshotId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, statusMessage.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, userBucket.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SnapshotDetailBuilder
    implements Builder<SnapshotDetail, SnapshotDetailBuilder> {
  _$SnapshotDetail? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _deviceName;
  String? get deviceName => _$this._deviceName;
  set deviceName(String? deviceName) => _$this._deviceName = deviceName;

  double? _diskImageSize;
  double? get diskImageSize => _$this._diskImageSize;
  set diskImageSize(double? diskImageSize) =>
      _$this._diskImageSize = diskImageSize;

  String? _format;
  String? get format => _$this._format;
  set format(String? format) => _$this._format = format;

  String? _progress;
  String? get progress => _$this._progress;
  set progress(String? progress) => _$this._progress = progress;

  String? _snapshotId;
  String? get snapshotId => _$this._snapshotId;
  set snapshotId(String? snapshotId) => _$this._snapshotId = snapshotId;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _statusMessage;
  String? get statusMessage => _$this._statusMessage;
  set statusMessage(String? statusMessage) =>
      _$this._statusMessage = statusMessage;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  UserBucketDetailsBuilder? _userBucket;
  UserBucketDetailsBuilder get userBucket =>
      _$this._userBucket ??= new UserBucketDetailsBuilder();
  set userBucket(UserBucketDetailsBuilder? userBucket) =>
      _$this._userBucket = userBucket;

  SnapshotDetailBuilder() {
    SnapshotDetail._init(this);
  }

  SnapshotDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _deviceName = $v.deviceName;
      _diskImageSize = $v.diskImageSize;
      _format = $v.format;
      _progress = $v.progress;
      _snapshotId = $v.snapshotId;
      _status = $v.status;
      _statusMessage = $v.statusMessage;
      _url = $v.url;
      _userBucket = $v.userBucket?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SnapshotDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SnapshotDetail;
  }

  @override
  void update(void Function(SnapshotDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SnapshotDetail build() => _build();

  _$SnapshotDetail _build() {
    _$SnapshotDetail _$result;
    try {
      _$result = _$v ??
          new _$SnapshotDetail._(
              description: description,
              deviceName: deviceName,
              diskImageSize: BuiltValueNullFieldError.checkNotNull(
                  diskImageSize, r'SnapshotDetail', 'diskImageSize'),
              format: format,
              progress: progress,
              snapshotId: snapshotId,
              status: status,
              statusMessage: statusMessage,
              url: url,
              userBucket: _userBucket?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userBucket';
        _userBucket?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SnapshotDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
