// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_object_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutObjectOutput extends PutObjectOutput {
  @override
  final String? expiration;
  @override
  final String? eTag;
  @override
  final String? checksumCrc32;
  @override
  final String? checksumCrc32C;
  @override
  final String? checksumSha1;
  @override
  final String? checksumSha256;
  @override
  final ServerSideEncryption? serverSideEncryption;
  @override
  final String? versionId;
  @override
  final String? sseCustomerAlgorithm;
  @override
  final String? sseCustomerKeyMd5;
  @override
  final String? ssekmsKeyId;
  @override
  final String? ssekmsEncryptionContext;
  @override
  final bool? bucketKeyEnabled;
  @override
  final RequestCharged? requestCharged;

  factory _$PutObjectOutput([void Function(PutObjectOutputBuilder)? updates]) =>
      (new PutObjectOutputBuilder()..update(updates))._build();

  _$PutObjectOutput._(
      {this.expiration,
      this.eTag,
      this.checksumCrc32,
      this.checksumCrc32C,
      this.checksumSha1,
      this.checksumSha256,
      this.serverSideEncryption,
      this.versionId,
      this.sseCustomerAlgorithm,
      this.sseCustomerKeyMd5,
      this.ssekmsKeyId,
      this.ssekmsEncryptionContext,
      this.bucketKeyEnabled,
      this.requestCharged})
      : super._();

  @override
  PutObjectOutput rebuild(void Function(PutObjectOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutObjectOutputBuilder toBuilder() =>
      new PutObjectOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutObjectOutput &&
        expiration == other.expiration &&
        eTag == other.eTag &&
        checksumCrc32 == other.checksumCrc32 &&
        checksumCrc32C == other.checksumCrc32C &&
        checksumSha1 == other.checksumSha1 &&
        checksumSha256 == other.checksumSha256 &&
        serverSideEncryption == other.serverSideEncryption &&
        versionId == other.versionId &&
        sseCustomerAlgorithm == other.sseCustomerAlgorithm &&
        sseCustomerKeyMd5 == other.sseCustomerKeyMd5 &&
        ssekmsKeyId == other.ssekmsKeyId &&
        ssekmsEncryptionContext == other.ssekmsEncryptionContext &&
        bucketKeyEnabled == other.bucketKeyEnabled &&
        requestCharged == other.requestCharged;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, expiration.hashCode);
    _$hash = $jc(_$hash, eTag.hashCode);
    _$hash = $jc(_$hash, checksumCrc32.hashCode);
    _$hash = $jc(_$hash, checksumCrc32C.hashCode);
    _$hash = $jc(_$hash, checksumSha1.hashCode);
    _$hash = $jc(_$hash, checksumSha256.hashCode);
    _$hash = $jc(_$hash, serverSideEncryption.hashCode);
    _$hash = $jc(_$hash, versionId.hashCode);
    _$hash = $jc(_$hash, sseCustomerAlgorithm.hashCode);
    _$hash = $jc(_$hash, sseCustomerKeyMd5.hashCode);
    _$hash = $jc(_$hash, ssekmsKeyId.hashCode);
    _$hash = $jc(_$hash, ssekmsEncryptionContext.hashCode);
    _$hash = $jc(_$hash, bucketKeyEnabled.hashCode);
    _$hash = $jc(_$hash, requestCharged.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutObjectOutputBuilder
    implements Builder<PutObjectOutput, PutObjectOutputBuilder> {
  _$PutObjectOutput? _$v;

  String? _expiration;
  String? get expiration => _$this._expiration;
  set expiration(String? expiration) => _$this._expiration = expiration;

  String? _eTag;
  String? get eTag => _$this._eTag;
  set eTag(String? eTag) => _$this._eTag = eTag;

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

  ServerSideEncryption? _serverSideEncryption;
  ServerSideEncryption? get serverSideEncryption =>
      _$this._serverSideEncryption;
  set serverSideEncryption(ServerSideEncryption? serverSideEncryption) =>
      _$this._serverSideEncryption = serverSideEncryption;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  String? _sseCustomerAlgorithm;
  String? get sseCustomerAlgorithm => _$this._sseCustomerAlgorithm;
  set sseCustomerAlgorithm(String? sseCustomerAlgorithm) =>
      _$this._sseCustomerAlgorithm = sseCustomerAlgorithm;

  String? _sseCustomerKeyMd5;
  String? get sseCustomerKeyMd5 => _$this._sseCustomerKeyMd5;
  set sseCustomerKeyMd5(String? sseCustomerKeyMd5) =>
      _$this._sseCustomerKeyMd5 = sseCustomerKeyMd5;

  String? _ssekmsKeyId;
  String? get ssekmsKeyId => _$this._ssekmsKeyId;
  set ssekmsKeyId(String? ssekmsKeyId) => _$this._ssekmsKeyId = ssekmsKeyId;

  String? _ssekmsEncryptionContext;
  String? get ssekmsEncryptionContext => _$this._ssekmsEncryptionContext;
  set ssekmsEncryptionContext(String? ssekmsEncryptionContext) =>
      _$this._ssekmsEncryptionContext = ssekmsEncryptionContext;

  bool? _bucketKeyEnabled;
  bool? get bucketKeyEnabled => _$this._bucketKeyEnabled;
  set bucketKeyEnabled(bool? bucketKeyEnabled) =>
      _$this._bucketKeyEnabled = bucketKeyEnabled;

  RequestCharged? _requestCharged;
  RequestCharged? get requestCharged => _$this._requestCharged;
  set requestCharged(RequestCharged? requestCharged) =>
      _$this._requestCharged = requestCharged;

  PutObjectOutputBuilder();

  PutObjectOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _expiration = $v.expiration;
      _eTag = $v.eTag;
      _checksumCrc32 = $v.checksumCrc32;
      _checksumCrc32C = $v.checksumCrc32C;
      _checksumSha1 = $v.checksumSha1;
      _checksumSha256 = $v.checksumSha256;
      _serverSideEncryption = $v.serverSideEncryption;
      _versionId = $v.versionId;
      _sseCustomerAlgorithm = $v.sseCustomerAlgorithm;
      _sseCustomerKeyMd5 = $v.sseCustomerKeyMd5;
      _ssekmsKeyId = $v.ssekmsKeyId;
      _ssekmsEncryptionContext = $v.ssekmsEncryptionContext;
      _bucketKeyEnabled = $v.bucketKeyEnabled;
      _requestCharged = $v.requestCharged;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutObjectOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutObjectOutput;
  }

  @override
  void update(void Function(PutObjectOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutObjectOutput build() => _build();

  _$PutObjectOutput _build() {
    final _$result = _$v ??
        new _$PutObjectOutput._(
            expiration: expiration,
            eTag: eTag,
            checksumCrc32: checksumCrc32,
            checksumCrc32C: checksumCrc32C,
            checksumSha1: checksumSha1,
            checksumSha256: checksumSha256,
            serverSideEncryption: serverSideEncryption,
            versionId: versionId,
            sseCustomerAlgorithm: sseCustomerAlgorithm,
            sseCustomerKeyMd5: sseCustomerKeyMd5,
            ssekmsKeyId: ssekmsKeyId,
            ssekmsEncryptionContext: ssekmsEncryptionContext,
            bucketKeyEnabled: bucketKeyEnabled,
            requestCharged: requestCharged);
    replace(_$result);
    return _$result;
  }
}

class _$PutObjectOutputPayload extends PutObjectOutputPayload {
  factory _$PutObjectOutputPayload(
          [void Function(PutObjectOutputPayloadBuilder)? updates]) =>
      (new PutObjectOutputPayloadBuilder()..update(updates))._build();

  _$PutObjectOutputPayload._() : super._();

  @override
  PutObjectOutputPayload rebuild(
          void Function(PutObjectOutputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutObjectOutputPayloadBuilder toBuilder() =>
      new PutObjectOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutObjectOutputPayload;
  }

  @override
  int get hashCode {
    return 463365711;
  }
}

class PutObjectOutputPayloadBuilder
    implements Builder<PutObjectOutputPayload, PutObjectOutputPayloadBuilder> {
  _$PutObjectOutputPayload? _$v;

  PutObjectOutputPayloadBuilder();

  @override
  void replace(PutObjectOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutObjectOutputPayload;
  }

  @override
  void update(void Function(PutObjectOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutObjectOutputPayload build() => _build();

  _$PutObjectOutputPayload _build() {
    final _$result = _$v ?? new _$PutObjectOutputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
