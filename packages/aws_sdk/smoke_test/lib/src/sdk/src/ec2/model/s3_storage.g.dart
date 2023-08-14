// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's3_storage.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$S3Storage extends S3Storage {
  @override
  final String? awsAccessKeyId;
  @override
  final String? bucket;
  @override
  final String? prefix;
  @override
  final _i2.Uint8List? uploadPolicy;
  @override
  final String? uploadPolicySignature;

  factory _$S3Storage([void Function(S3StorageBuilder)? updates]) =>
      (new S3StorageBuilder()..update(updates))._build();

  _$S3Storage._(
      {this.awsAccessKeyId,
      this.bucket,
      this.prefix,
      this.uploadPolicy,
      this.uploadPolicySignature})
      : super._();

  @override
  S3Storage rebuild(void Function(S3StorageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  S3StorageBuilder toBuilder() => new S3StorageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is S3Storage &&
        awsAccessKeyId == other.awsAccessKeyId &&
        bucket == other.bucket &&
        prefix == other.prefix &&
        uploadPolicy == other.uploadPolicy &&
        uploadPolicySignature == other.uploadPolicySignature;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, awsAccessKeyId.hashCode);
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, prefix.hashCode);
    _$hash = $jc(_$hash, uploadPolicy.hashCode);
    _$hash = $jc(_$hash, uploadPolicySignature.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class S3StorageBuilder implements Builder<S3Storage, S3StorageBuilder> {
  _$S3Storage? _$v;

  String? _awsAccessKeyId;
  String? get awsAccessKeyId => _$this._awsAccessKeyId;
  set awsAccessKeyId(String? awsAccessKeyId) =>
      _$this._awsAccessKeyId = awsAccessKeyId;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  _i2.Uint8List? _uploadPolicy;
  _i2.Uint8List? get uploadPolicy => _$this._uploadPolicy;
  set uploadPolicy(_i2.Uint8List? uploadPolicy) =>
      _$this._uploadPolicy = uploadPolicy;

  String? _uploadPolicySignature;
  String? get uploadPolicySignature => _$this._uploadPolicySignature;
  set uploadPolicySignature(String? uploadPolicySignature) =>
      _$this._uploadPolicySignature = uploadPolicySignature;

  S3StorageBuilder();

  S3StorageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _awsAccessKeyId = $v.awsAccessKeyId;
      _bucket = $v.bucket;
      _prefix = $v.prefix;
      _uploadPolicy = $v.uploadPolicy;
      _uploadPolicySignature = $v.uploadPolicySignature;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(S3Storage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$S3Storage;
  }

  @override
  void update(void Function(S3StorageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  S3Storage build() => _build();

  _$S3Storage _build() {
    final _$result = _$v ??
        new _$S3Storage._(
            awsAccessKeyId: awsAccessKeyId,
            bucket: bucket,
            prefix: prefix,
            uploadPolicy: uploadPolicy,
            uploadPolicySignature: uploadPolicySignature);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
