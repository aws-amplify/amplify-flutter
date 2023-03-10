// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.complete_multipart_upload_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CompleteMultipartUploadOutput extends CompleteMultipartUploadOutput {
  @override
  final String? bucket;
  @override
  final bool? bucketKeyEnabled;
  @override
  final String? checksumCrc32;
  @override
  final String? checksumCrc32C;
  @override
  final String? checksumSha1;
  @override
  final String? checksumSha256;
  @override
  final String? eTag;
  @override
  final String? expiration;
  @override
  final String? key;
  @override
  final String? location;
  @override
  final _i3.RequestCharged? requestCharged;
  @override
  final _i4.ServerSideEncryption? serverSideEncryption;
  @override
  final String? ssekmsKeyId;
  @override
  final String? versionId;

  factory _$CompleteMultipartUploadOutput(
          [void Function(CompleteMultipartUploadOutputBuilder)? updates]) =>
      (new CompleteMultipartUploadOutputBuilder()..update(updates))._build();

  _$CompleteMultipartUploadOutput._(
      {this.bucket,
      this.bucketKeyEnabled,
      this.checksumCrc32,
      this.checksumCrc32C,
      this.checksumSha1,
      this.checksumSha256,
      this.eTag,
      this.expiration,
      this.key,
      this.location,
      this.requestCharged,
      this.serverSideEncryption,
      this.ssekmsKeyId,
      this.versionId})
      : super._();

  @override
  CompleteMultipartUploadOutput rebuild(
          void Function(CompleteMultipartUploadOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompleteMultipartUploadOutputBuilder toBuilder() =>
      new CompleteMultipartUploadOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompleteMultipartUploadOutput &&
        bucket == other.bucket &&
        bucketKeyEnabled == other.bucketKeyEnabled &&
        checksumCrc32 == other.checksumCrc32 &&
        checksumCrc32C == other.checksumCrc32C &&
        checksumSha1 == other.checksumSha1 &&
        checksumSha256 == other.checksumSha256 &&
        eTag == other.eTag &&
        expiration == other.expiration &&
        key == other.key &&
        location == other.location &&
        requestCharged == other.requestCharged &&
        serverSideEncryption == other.serverSideEncryption &&
        ssekmsKeyId == other.ssekmsKeyId &&
        versionId == other.versionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, bucketKeyEnabled.hashCode);
    _$hash = $jc(_$hash, checksumCrc32.hashCode);
    _$hash = $jc(_$hash, checksumCrc32C.hashCode);
    _$hash = $jc(_$hash, checksumSha1.hashCode);
    _$hash = $jc(_$hash, checksumSha256.hashCode);
    _$hash = $jc(_$hash, eTag.hashCode);
    _$hash = $jc(_$hash, expiration.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, requestCharged.hashCode);
    _$hash = $jc(_$hash, serverSideEncryption.hashCode);
    _$hash = $jc(_$hash, ssekmsKeyId.hashCode);
    _$hash = $jc(_$hash, versionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CompleteMultipartUploadOutputBuilder
    implements
        Builder<CompleteMultipartUploadOutput,
            CompleteMultipartUploadOutputBuilder> {
  _$CompleteMultipartUploadOutput? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  bool? _bucketKeyEnabled;
  bool? get bucketKeyEnabled => _$this._bucketKeyEnabled;
  set bucketKeyEnabled(bool? bucketKeyEnabled) =>
      _$this._bucketKeyEnabled = bucketKeyEnabled;

  String? _checksumCrc32;
  String? get checksumCrc32 => _$this._checksumCrc32;
  set checksumCrc32(String? checksumCrc32) =>
      _$this._checksumCrc32 = checksumCrc32;

  String? _checksumCrc32C;
  String? get checksumCrc32C => _$this._checksumCrc32C;
  set checksumCrc32C(String? checksumCrc32C) =>
      _$this._checksumCrc32C = checksumCrc32C;

  String? _checksumSha1;
  String? get checksumSha1 => _$this._checksumSha1;
  set checksumSha1(String? checksumSha1) => _$this._checksumSha1 = checksumSha1;

  String? _checksumSha256;
  String? get checksumSha256 => _$this._checksumSha256;
  set checksumSha256(String? checksumSha256) =>
      _$this._checksumSha256 = checksumSha256;

  String? _eTag;
  String? get eTag => _$this._eTag;
  set eTag(String? eTag) => _$this._eTag = eTag;

  String? _expiration;
  String? get expiration => _$this._expiration;
  set expiration(String? expiration) => _$this._expiration = expiration;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  _i3.RequestCharged? _requestCharged;
  _i3.RequestCharged? get requestCharged => _$this._requestCharged;
  set requestCharged(_i3.RequestCharged? requestCharged) =>
      _$this._requestCharged = requestCharged;

  _i4.ServerSideEncryption? _serverSideEncryption;
  _i4.ServerSideEncryption? get serverSideEncryption =>
      _$this._serverSideEncryption;
  set serverSideEncryption(_i4.ServerSideEncryption? serverSideEncryption) =>
      _$this._serverSideEncryption = serverSideEncryption;

  String? _ssekmsKeyId;
  String? get ssekmsKeyId => _$this._ssekmsKeyId;
  set ssekmsKeyId(String? ssekmsKeyId) => _$this._ssekmsKeyId = ssekmsKeyId;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  CompleteMultipartUploadOutputBuilder() {
    CompleteMultipartUploadOutput._init(this);
  }

  CompleteMultipartUploadOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _bucketKeyEnabled = $v.bucketKeyEnabled;
      _checksumCrc32 = $v.checksumCrc32;
      _checksumCrc32C = $v.checksumCrc32C;
      _checksumSha1 = $v.checksumSha1;
      _checksumSha256 = $v.checksumSha256;
      _eTag = $v.eTag;
      _expiration = $v.expiration;
      _key = $v.key;
      _location = $v.location;
      _requestCharged = $v.requestCharged;
      _serverSideEncryption = $v.serverSideEncryption;
      _ssekmsKeyId = $v.ssekmsKeyId;
      _versionId = $v.versionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompleteMultipartUploadOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CompleteMultipartUploadOutput;
  }

  @override
  void update(void Function(CompleteMultipartUploadOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CompleteMultipartUploadOutput build() => _build();

  _$CompleteMultipartUploadOutput _build() {
    final _$result = _$v ??
        new _$CompleteMultipartUploadOutput._(
            bucket: bucket,
            bucketKeyEnabled: bucketKeyEnabled,
            checksumCrc32: checksumCrc32,
            checksumCrc32C: checksumCrc32C,
            checksumSha1: checksumSha1,
            checksumSha256: checksumSha256,
            eTag: eTag,
            expiration: expiration,
            key: key,
            location: location,
            requestCharged: requestCharged,
            serverSideEncryption: serverSideEncryption,
            ssekmsKeyId: ssekmsKeyId,
            versionId: versionId);
    replace(_$result);
    return _$result;
  }
}

class _$CompleteMultipartUploadOutputPayload
    extends CompleteMultipartUploadOutputPayload {
  @override
  final String? bucket;
  @override
  final String? checksumCrc32;
  @override
  final String? checksumCrc32C;
  @override
  final String? checksumSha1;
  @override
  final String? checksumSha256;
  @override
  final String? eTag;
  @override
  final String? key;
  @override
  final String? location;

  factory _$CompleteMultipartUploadOutputPayload(
          [void Function(CompleteMultipartUploadOutputPayloadBuilder)?
              updates]) =>
      (new CompleteMultipartUploadOutputPayloadBuilder()..update(updates))
          ._build();

  _$CompleteMultipartUploadOutputPayload._(
      {this.bucket,
      this.checksumCrc32,
      this.checksumCrc32C,
      this.checksumSha1,
      this.checksumSha256,
      this.eTag,
      this.key,
      this.location})
      : super._();

  @override
  CompleteMultipartUploadOutputPayload rebuild(
          void Function(CompleteMultipartUploadOutputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompleteMultipartUploadOutputPayloadBuilder toBuilder() =>
      new CompleteMultipartUploadOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompleteMultipartUploadOutputPayload &&
        bucket == other.bucket &&
        checksumCrc32 == other.checksumCrc32 &&
        checksumCrc32C == other.checksumCrc32C &&
        checksumSha1 == other.checksumSha1 &&
        checksumSha256 == other.checksumSha256 &&
        eTag == other.eTag &&
        key == other.key &&
        location == other.location;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, checksumCrc32.hashCode);
    _$hash = $jc(_$hash, checksumCrc32C.hashCode);
    _$hash = $jc(_$hash, checksumSha1.hashCode);
    _$hash = $jc(_$hash, checksumSha256.hashCode);
    _$hash = $jc(_$hash, eTag.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CompleteMultipartUploadOutputPayloadBuilder
    implements
        Builder<CompleteMultipartUploadOutputPayload,
            CompleteMultipartUploadOutputPayloadBuilder> {
  _$CompleteMultipartUploadOutputPayload? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _checksumCrc32;
  String? get checksumCrc32 => _$this._checksumCrc32;
  set checksumCrc32(String? checksumCrc32) =>
      _$this._checksumCrc32 = checksumCrc32;

  String? _checksumCrc32C;
  String? get checksumCrc32C => _$this._checksumCrc32C;
  set checksumCrc32C(String? checksumCrc32C) =>
      _$this._checksumCrc32C = checksumCrc32C;

  String? _checksumSha1;
  String? get checksumSha1 => _$this._checksumSha1;
  set checksumSha1(String? checksumSha1) => _$this._checksumSha1 = checksumSha1;

  String? _checksumSha256;
  String? get checksumSha256 => _$this._checksumSha256;
  set checksumSha256(String? checksumSha256) =>
      _$this._checksumSha256 = checksumSha256;

  String? _eTag;
  String? get eTag => _$this._eTag;
  set eTag(String? eTag) => _$this._eTag = eTag;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  CompleteMultipartUploadOutputPayloadBuilder() {
    CompleteMultipartUploadOutputPayload._init(this);
  }

  CompleteMultipartUploadOutputPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _checksumCrc32 = $v.checksumCrc32;
      _checksumCrc32C = $v.checksumCrc32C;
      _checksumSha1 = $v.checksumSha1;
      _checksumSha256 = $v.checksumSha256;
      _eTag = $v.eTag;
      _key = $v.key;
      _location = $v.location;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompleteMultipartUploadOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CompleteMultipartUploadOutputPayload;
  }

  @override
  void update(
      void Function(CompleteMultipartUploadOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CompleteMultipartUploadOutputPayload build() => _build();

  _$CompleteMultipartUploadOutputPayload _build() {
    final _$result = _$v ??
        new _$CompleteMultipartUploadOutputPayload._(
            bucket: bucket,
            checksumCrc32: checksumCrc32,
            checksumCrc32C: checksumCrc32C,
            checksumSha1: checksumSha1,
            checksumSha256: checksumSha256,
            eTag: eTag,
            key: key,
            location: location);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
