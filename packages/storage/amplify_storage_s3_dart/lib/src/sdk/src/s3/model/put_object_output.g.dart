// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_storage_s3_dart.s3.model.put_object_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutObjectOutput extends PutObjectOutput {
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
  final _i3.RequestCharged? requestCharged;
  @override
  final _i4.ServerSideEncryption? serverSideEncryption;
  @override
  final String? sseCustomerAlgorithm;
  @override
  final String? sseCustomerKeyMd5;
  @override
  final String? ssekmsEncryptionContext;
  @override
  final String? ssekmsKeyId;
  @override
  final String? versionId;

  factory _$PutObjectOutput([void Function(PutObjectOutputBuilder)? updates]) =>
      (new PutObjectOutputBuilder()..update(updates))._build();

  _$PutObjectOutput._(
      {this.bucketKeyEnabled,
      this.checksumCrc32,
      this.checksumCrc32C,
      this.checksumSha1,
      this.checksumSha256,
      this.eTag,
      this.expiration,
      this.requestCharged,
      this.serverSideEncryption,
      this.sseCustomerAlgorithm,
      this.sseCustomerKeyMd5,
      this.ssekmsEncryptionContext,
      this.ssekmsKeyId,
      this.versionId})
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
        bucketKeyEnabled == other.bucketKeyEnabled &&
        checksumCrc32 == other.checksumCrc32 &&
        checksumCrc32C == other.checksumCrc32C &&
        checksumSha1 == other.checksumSha1 &&
        checksumSha256 == other.checksumSha256 &&
        eTag == other.eTag &&
        expiration == other.expiration &&
        requestCharged == other.requestCharged &&
        serverSideEncryption == other.serverSideEncryption &&
        sseCustomerAlgorithm == other.sseCustomerAlgorithm &&
        sseCustomerKeyMd5 == other.sseCustomerKeyMd5 &&
        ssekmsEncryptionContext == other.ssekmsEncryptionContext &&
        ssekmsKeyId == other.ssekmsKeyId &&
        versionId == other.versionId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            0,
                                                            bucketKeyEnabled
                                                                .hashCode),
                                                        checksumCrc32.hashCode),
                                                    checksumCrc32C.hashCode),
                                                checksumSha1.hashCode),
                                            checksumSha256.hashCode),
                                        eTag.hashCode),
                                    expiration.hashCode),
                                requestCharged.hashCode),
                            serverSideEncryption.hashCode),
                        sseCustomerAlgorithm.hashCode),
                    sseCustomerKeyMd5.hashCode),
                ssekmsEncryptionContext.hashCode),
            ssekmsKeyId.hashCode),
        versionId.hashCode));
  }
}

class PutObjectOutputBuilder
    implements Builder<PutObjectOutput, PutObjectOutputBuilder> {
  _$PutObjectOutput? _$v;

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

  _i3.RequestCharged? _requestCharged;
  _i3.RequestCharged? get requestCharged => _$this._requestCharged;
  set requestCharged(_i3.RequestCharged? requestCharged) =>
      _$this._requestCharged = requestCharged;

  _i4.ServerSideEncryption? _serverSideEncryption;
  _i4.ServerSideEncryption? get serverSideEncryption =>
      _$this._serverSideEncryption;
  set serverSideEncryption(_i4.ServerSideEncryption? serverSideEncryption) =>
      _$this._serverSideEncryption = serverSideEncryption;

  String? _sseCustomerAlgorithm;
  String? get sseCustomerAlgorithm => _$this._sseCustomerAlgorithm;
  set sseCustomerAlgorithm(String? sseCustomerAlgorithm) =>
      _$this._sseCustomerAlgorithm = sseCustomerAlgorithm;

  String? _sseCustomerKeyMd5;
  String? get sseCustomerKeyMd5 => _$this._sseCustomerKeyMd5;
  set sseCustomerKeyMd5(String? sseCustomerKeyMd5) =>
      _$this._sseCustomerKeyMd5 = sseCustomerKeyMd5;

  String? _ssekmsEncryptionContext;
  String? get ssekmsEncryptionContext => _$this._ssekmsEncryptionContext;
  set ssekmsEncryptionContext(String? ssekmsEncryptionContext) =>
      _$this._ssekmsEncryptionContext = ssekmsEncryptionContext;

  String? _ssekmsKeyId;
  String? get ssekmsKeyId => _$this._ssekmsKeyId;
  set ssekmsKeyId(String? ssekmsKeyId) => _$this._ssekmsKeyId = ssekmsKeyId;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  PutObjectOutputBuilder() {
    PutObjectOutput._init(this);
  }

  PutObjectOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucketKeyEnabled = $v.bucketKeyEnabled;
      _checksumCrc32 = $v.checksumCrc32;
      _checksumCrc32C = $v.checksumCrc32C;
      _checksumSha1 = $v.checksumSha1;
      _checksumSha256 = $v.checksumSha256;
      _eTag = $v.eTag;
      _expiration = $v.expiration;
      _requestCharged = $v.requestCharged;
      _serverSideEncryption = $v.serverSideEncryption;
      _sseCustomerAlgorithm = $v.sseCustomerAlgorithm;
      _sseCustomerKeyMd5 = $v.sseCustomerKeyMd5;
      _ssekmsEncryptionContext = $v.ssekmsEncryptionContext;
      _ssekmsKeyId = $v.ssekmsKeyId;
      _versionId = $v.versionId;
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
            bucketKeyEnabled: bucketKeyEnabled,
            checksumCrc32: checksumCrc32,
            checksumCrc32C: checksumCrc32C,
            checksumSha1: checksumSha1,
            checksumSha256: checksumSha256,
            eTag: eTag,
            expiration: expiration,
            requestCharged: requestCharged,
            serverSideEncryption: serverSideEncryption,
            sseCustomerAlgorithm: sseCustomerAlgorithm,
            sseCustomerKeyMd5: sseCustomerKeyMd5,
            ssekmsEncryptionContext: ssekmsEncryptionContext,
            ssekmsKeyId: ssekmsKeyId,
            versionId: versionId);
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

  PutObjectOutputPayloadBuilder() {
    PutObjectOutputPayload._init(this);
  }

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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
