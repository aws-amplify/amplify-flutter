// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.access_key_metadata;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccessKeyMetadata extends AccessKeyMetadata {
  @override
  final String? userName;
  @override
  final String? accessKeyId;
  @override
  final _i2.StatusType? status;
  @override
  final DateTime? createDate;

  factory _$AccessKeyMetadata(
          [void Function(AccessKeyMetadataBuilder)? updates]) =>
      (new AccessKeyMetadataBuilder()..update(updates))._build();

  _$AccessKeyMetadata._(
      {this.userName, this.accessKeyId, this.status, this.createDate})
      : super._();

  @override
  AccessKeyMetadata rebuild(void Function(AccessKeyMetadataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccessKeyMetadataBuilder toBuilder() =>
      new AccessKeyMetadataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccessKeyMetadata &&
        userName == other.userName &&
        accessKeyId == other.accessKeyId &&
        status == other.status &&
        createDate == other.createDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, accessKeyId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, createDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AccessKeyMetadataBuilder
    implements Builder<AccessKeyMetadata, AccessKeyMetadataBuilder> {
  _$AccessKeyMetadata? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _accessKeyId;
  String? get accessKeyId => _$this._accessKeyId;
  set accessKeyId(String? accessKeyId) => _$this._accessKeyId = accessKeyId;

  _i2.StatusType? _status;
  _i2.StatusType? get status => _$this._status;
  set status(_i2.StatusType? status) => _$this._status = status;

  DateTime? _createDate;
  DateTime? get createDate => _$this._createDate;
  set createDate(DateTime? createDate) => _$this._createDate = createDate;

  AccessKeyMetadataBuilder() {
    AccessKeyMetadata._init(this);
  }

  AccessKeyMetadataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _accessKeyId = $v.accessKeyId;
      _status = $v.status;
      _createDate = $v.createDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccessKeyMetadata other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccessKeyMetadata;
  }

  @override
  void update(void Function(AccessKeyMetadataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccessKeyMetadata build() => _build();

  _$AccessKeyMetadata _build() {
    final _$result = _$v ??
        new _$AccessKeyMetadata._(
            userName: userName,
            accessKeyId: accessKeyId,
            status: status,
            createDate: createDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
