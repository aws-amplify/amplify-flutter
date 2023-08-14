// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snapshot_task_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SnapshotTaskDetail extends SnapshotTaskDetail {
  @override
  final String? description;
  @override
  final double diskImageSize;
  @override
  final bool encrypted;
  @override
  final String? format;
  @override
  final String? kmsKeyId;
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

  factory _$SnapshotTaskDetail(
          [void Function(SnapshotTaskDetailBuilder)? updates]) =>
      (new SnapshotTaskDetailBuilder()..update(updates))._build();

  _$SnapshotTaskDetail._(
      {this.description,
      required this.diskImageSize,
      required this.encrypted,
      this.format,
      this.kmsKeyId,
      this.progress,
      this.snapshotId,
      this.status,
      this.statusMessage,
      this.url,
      this.userBucket})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        diskImageSize, r'SnapshotTaskDetail', 'diskImageSize');
    BuiltValueNullFieldError.checkNotNull(
        encrypted, r'SnapshotTaskDetail', 'encrypted');
  }

  @override
  SnapshotTaskDetail rebuild(
          void Function(SnapshotTaskDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SnapshotTaskDetailBuilder toBuilder() =>
      new SnapshotTaskDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SnapshotTaskDetail &&
        description == other.description &&
        diskImageSize == other.diskImageSize &&
        encrypted == other.encrypted &&
        format == other.format &&
        kmsKeyId == other.kmsKeyId &&
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
    _$hash = $jc(_$hash, diskImageSize.hashCode);
    _$hash = $jc(_$hash, encrypted.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, kmsKeyId.hashCode);
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

class SnapshotTaskDetailBuilder
    implements Builder<SnapshotTaskDetail, SnapshotTaskDetailBuilder> {
  _$SnapshotTaskDetail? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  double? _diskImageSize;
  double? get diskImageSize => _$this._diskImageSize;
  set diskImageSize(double? diskImageSize) =>
      _$this._diskImageSize = diskImageSize;

  bool? _encrypted;
  bool? get encrypted => _$this._encrypted;
  set encrypted(bool? encrypted) => _$this._encrypted = encrypted;

  String? _format;
  String? get format => _$this._format;
  set format(String? format) => _$this._format = format;

  String? _kmsKeyId;
  String? get kmsKeyId => _$this._kmsKeyId;
  set kmsKeyId(String? kmsKeyId) => _$this._kmsKeyId = kmsKeyId;

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

  SnapshotTaskDetailBuilder() {
    SnapshotTaskDetail._init(this);
  }

  SnapshotTaskDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _diskImageSize = $v.diskImageSize;
      _encrypted = $v.encrypted;
      _format = $v.format;
      _kmsKeyId = $v.kmsKeyId;
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
  void replace(SnapshotTaskDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SnapshotTaskDetail;
  }

  @override
  void update(void Function(SnapshotTaskDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SnapshotTaskDetail build() => _build();

  _$SnapshotTaskDetail _build() {
    _$SnapshotTaskDetail _$result;
    try {
      _$result = _$v ??
          new _$SnapshotTaskDetail._(
              description: description,
              diskImageSize: BuiltValueNullFieldError.checkNotNull(
                  diskImageSize, r'SnapshotTaskDetail', 'diskImageSize'),
              encrypted: BuiltValueNullFieldError.checkNotNull(
                  encrypted, r'SnapshotTaskDetail', 'encrypted'),
              format: format,
              kmsKeyId: kmsKeyId,
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
            r'SnapshotTaskDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
