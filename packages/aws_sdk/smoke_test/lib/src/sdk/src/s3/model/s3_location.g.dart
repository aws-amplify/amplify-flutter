// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's3_location.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$S3Location extends S3Location {
  @override
  final String bucketName;
  @override
  final String prefix;
  @override
  final Encryption? encryption;
  @override
  final ObjectCannedAcl? cannedAcl;
  @override
  final _i2.BuiltList<Grant>? accessControlList;
  @override
  final Tagging? tagging;
  @override
  final _i2.BuiltList<MetadataEntry>? userMetadata;
  @override
  final StorageClass? storageClass;

  factory _$S3Location([void Function(S3LocationBuilder)? updates]) =>
      (new S3LocationBuilder()..update(updates))._build();

  _$S3Location._(
      {required this.bucketName,
      required this.prefix,
      this.encryption,
      this.cannedAcl,
      this.accessControlList,
      this.tagging,
      this.userMetadata,
      this.storageClass})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucketName, r'S3Location', 'bucketName');
    BuiltValueNullFieldError.checkNotNull(prefix, r'S3Location', 'prefix');
  }

  @override
  S3Location rebuild(void Function(S3LocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  S3LocationBuilder toBuilder() => new S3LocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is S3Location &&
        bucketName == other.bucketName &&
        prefix == other.prefix &&
        encryption == other.encryption &&
        cannedAcl == other.cannedAcl &&
        accessControlList == other.accessControlList &&
        tagging == other.tagging &&
        userMetadata == other.userMetadata &&
        storageClass == other.storageClass;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucketName.hashCode);
    _$hash = $jc(_$hash, prefix.hashCode);
    _$hash = $jc(_$hash, encryption.hashCode);
    _$hash = $jc(_$hash, cannedAcl.hashCode);
    _$hash = $jc(_$hash, accessControlList.hashCode);
    _$hash = $jc(_$hash, tagging.hashCode);
    _$hash = $jc(_$hash, userMetadata.hashCode);
    _$hash = $jc(_$hash, storageClass.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class S3LocationBuilder implements Builder<S3Location, S3LocationBuilder> {
  _$S3Location? _$v;

  String? _bucketName;
  String? get bucketName => _$this._bucketName;
  set bucketName(String? bucketName) => _$this._bucketName = bucketName;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  EncryptionBuilder? _encryption;
  EncryptionBuilder get encryption =>
      _$this._encryption ??= new EncryptionBuilder();
  set encryption(EncryptionBuilder? encryption) =>
      _$this._encryption = encryption;

  ObjectCannedAcl? _cannedAcl;
  ObjectCannedAcl? get cannedAcl => _$this._cannedAcl;
  set cannedAcl(ObjectCannedAcl? cannedAcl) => _$this._cannedAcl = cannedAcl;

  _i2.ListBuilder<Grant>? _accessControlList;
  _i2.ListBuilder<Grant> get accessControlList =>
      _$this._accessControlList ??= new _i2.ListBuilder<Grant>();
  set accessControlList(_i2.ListBuilder<Grant>? accessControlList) =>
      _$this._accessControlList = accessControlList;

  TaggingBuilder? _tagging;
  TaggingBuilder get tagging => _$this._tagging ??= new TaggingBuilder();
  set tagging(TaggingBuilder? tagging) => _$this._tagging = tagging;

  _i2.ListBuilder<MetadataEntry>? _userMetadata;
  _i2.ListBuilder<MetadataEntry> get userMetadata =>
      _$this._userMetadata ??= new _i2.ListBuilder<MetadataEntry>();
  set userMetadata(_i2.ListBuilder<MetadataEntry>? userMetadata) =>
      _$this._userMetadata = userMetadata;

  StorageClass? _storageClass;
  StorageClass? get storageClass => _$this._storageClass;
  set storageClass(StorageClass? storageClass) =>
      _$this._storageClass = storageClass;

  S3LocationBuilder();

  S3LocationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucketName = $v.bucketName;
      _prefix = $v.prefix;
      _encryption = $v.encryption?.toBuilder();
      _cannedAcl = $v.cannedAcl;
      _accessControlList = $v.accessControlList?.toBuilder();
      _tagging = $v.tagging?.toBuilder();
      _userMetadata = $v.userMetadata?.toBuilder();
      _storageClass = $v.storageClass;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(S3Location other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$S3Location;
  }

  @override
  void update(void Function(S3LocationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  S3Location build() => _build();

  _$S3Location _build() {
    _$S3Location _$result;
    try {
      _$result = _$v ??
          new _$S3Location._(
              bucketName: BuiltValueNullFieldError.checkNotNull(
                  bucketName, r'S3Location', 'bucketName'),
              prefix: BuiltValueNullFieldError.checkNotNull(
                  prefix, r'S3Location', 'prefix'),
              encryption: _encryption?.build(),
              cannedAcl: cannedAcl,
              accessControlList: _accessControlList?.build(),
              tagging: _tagging?.build(),
              userMetadata: _userMetadata?.build(),
              storageClass: storageClass);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'encryption';
        _encryption?.build();

        _$failedField = 'accessControlList';
        _accessControlList?.build();
        _$failedField = 'tagging';
        _tagging?.build();
        _$failedField = 'userMetadata';
        _userMetadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'S3Location', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
