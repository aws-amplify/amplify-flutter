// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.access_key;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccessKey extends AccessKey {
  @override
  final String userName;
  @override
  final String accessKeyId;
  @override
  final _i2.StatusType status;
  @override
  final String secretAccessKey;
  @override
  final DateTime? createDate;

  factory _$AccessKey([void Function(AccessKeyBuilder)? updates]) =>
      (new AccessKeyBuilder()..update(updates))._build();

  _$AccessKey._(
      {required this.userName,
      required this.accessKeyId,
      required this.status,
      required this.secretAccessKey,
      this.createDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(userName, r'AccessKey', 'userName');
    BuiltValueNullFieldError.checkNotNull(
        accessKeyId, r'AccessKey', 'accessKeyId');
    BuiltValueNullFieldError.checkNotNull(status, r'AccessKey', 'status');
    BuiltValueNullFieldError.checkNotNull(
        secretAccessKey, r'AccessKey', 'secretAccessKey');
  }

  @override
  AccessKey rebuild(void Function(AccessKeyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccessKeyBuilder toBuilder() => new AccessKeyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccessKey &&
        userName == other.userName &&
        accessKeyId == other.accessKeyId &&
        status == other.status &&
        secretAccessKey == other.secretAccessKey &&
        createDate == other.createDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, accessKeyId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, secretAccessKey.hashCode);
    _$hash = $jc(_$hash, createDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AccessKeyBuilder implements Builder<AccessKey, AccessKeyBuilder> {
  _$AccessKey? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _accessKeyId;
  String? get accessKeyId => _$this._accessKeyId;
  set accessKeyId(String? accessKeyId) => _$this._accessKeyId = accessKeyId;

  _i2.StatusType? _status;
  _i2.StatusType? get status => _$this._status;
  set status(_i2.StatusType? status) => _$this._status = status;

  String? _secretAccessKey;
  String? get secretAccessKey => _$this._secretAccessKey;
  set secretAccessKey(String? secretAccessKey) =>
      _$this._secretAccessKey = secretAccessKey;

  DateTime? _createDate;
  DateTime? get createDate => _$this._createDate;
  set createDate(DateTime? createDate) => _$this._createDate = createDate;

  AccessKeyBuilder() {
    AccessKey._init(this);
  }

  AccessKeyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _accessKeyId = $v.accessKeyId;
      _status = $v.status;
      _secretAccessKey = $v.secretAccessKey;
      _createDate = $v.createDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccessKey other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccessKey;
  }

  @override
  void update(void Function(AccessKeyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccessKey build() => _build();

  _$AccessKey _build() {
    final _$result = _$v ??
        new _$AccessKey._(
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, r'AccessKey', 'userName'),
            accessKeyId: BuiltValueNullFieldError.checkNotNull(
                accessKeyId, r'AccessKey', 'accessKeyId'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'AccessKey', 'status'),
            secretAccessKey: BuiltValueNullFieldError.checkNotNull(
                secretAccessKey, r'AccessKey', 'secretAccessKey'),
            createDate: createDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
