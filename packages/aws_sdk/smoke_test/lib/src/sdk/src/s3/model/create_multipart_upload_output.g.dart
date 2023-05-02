// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.create_multipart_upload_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateMultipartUploadOutput extends CreateMultipartUploadOutput {
  @override
  final DateTime? abortDate;
  @override
  final String? abortRuleId;
  @override
  final String? bucket;
  @override
  final String? key;
  @override
  final String? uploadId;
  @override
  final _i3.ServerSideEncryption? serverSideEncryption;
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
  final _i4.RequestCharged? requestCharged;
  @override
  final _i5.ChecksumAlgorithm? checksumAlgorithm;

  factory _$CreateMultipartUploadOutput(
          [void Function(CreateMultipartUploadOutputBuilder)? updates]) =>
      (new CreateMultipartUploadOutputBuilder()..update(updates))._build();

  _$CreateMultipartUploadOutput._(
      {this.abortDate,
      this.abortRuleId,
      this.bucket,
      this.key,
      this.uploadId,
      this.serverSideEncryption,
      this.sseCustomerAlgorithm,
      this.sseCustomerKeyMd5,
      this.ssekmsKeyId,
      this.ssekmsEncryptionContext,
      this.bucketKeyEnabled,
      this.requestCharged,
      this.checksumAlgorithm})
      : super._();

  @override
  CreateMultipartUploadOutput rebuild(
          void Function(CreateMultipartUploadOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateMultipartUploadOutputBuilder toBuilder() =>
      new CreateMultipartUploadOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateMultipartUploadOutput &&
        abortDate == other.abortDate &&
        abortRuleId == other.abortRuleId &&
        bucket == other.bucket &&
        key == other.key &&
        uploadId == other.uploadId &&
        serverSideEncryption == other.serverSideEncryption &&
        sseCustomerAlgorithm == other.sseCustomerAlgorithm &&
        sseCustomerKeyMd5 == other.sseCustomerKeyMd5 &&
        ssekmsKeyId == other.ssekmsKeyId &&
        ssekmsEncryptionContext == other.ssekmsEncryptionContext &&
        bucketKeyEnabled == other.bucketKeyEnabled &&
        requestCharged == other.requestCharged &&
        checksumAlgorithm == other.checksumAlgorithm;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, abortDate.hashCode);
    _$hash = $jc(_$hash, abortRuleId.hashCode);
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, uploadId.hashCode);
    _$hash = $jc(_$hash, serverSideEncryption.hashCode);
    _$hash = $jc(_$hash, sseCustomerAlgorithm.hashCode);
    _$hash = $jc(_$hash, sseCustomerKeyMd5.hashCode);
    _$hash = $jc(_$hash, ssekmsKeyId.hashCode);
    _$hash = $jc(_$hash, ssekmsEncryptionContext.hashCode);
    _$hash = $jc(_$hash, bucketKeyEnabled.hashCode);
    _$hash = $jc(_$hash, requestCharged.hashCode);
    _$hash = $jc(_$hash, checksumAlgorithm.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateMultipartUploadOutputBuilder
    implements
        Builder<CreateMultipartUploadOutput,
            CreateMultipartUploadOutputBuilder> {
  _$CreateMultipartUploadOutput? _$v;

  DateTime? _abortDate;
  DateTime? get abortDate => _$this._abortDate;
  set abortDate(DateTime? abortDate) => _$this._abortDate = abortDate;

  String? _abortRuleId;
  String? get abortRuleId => _$this._abortRuleId;
  set abortRuleId(String? abortRuleId) => _$this._abortRuleId = abortRuleId;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _uploadId;
  String? get uploadId => _$this._uploadId;
  set uploadId(String? uploadId) => _$this._uploadId = uploadId;

  _i3.ServerSideEncryption? _serverSideEncryption;
  _i3.ServerSideEncryption? get serverSideEncryption =>
      _$this._serverSideEncryption;
  set serverSideEncryption(_i3.ServerSideEncryption? serverSideEncryption) =>
      _$this._serverSideEncryption = serverSideEncryption;

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

  _i4.RequestCharged? _requestCharged;
  _i4.RequestCharged? get requestCharged => _$this._requestCharged;
  set requestCharged(_i4.RequestCharged? requestCharged) =>
      _$this._requestCharged = requestCharged;

  _i5.ChecksumAlgorithm? _checksumAlgorithm;
  _i5.ChecksumAlgorithm? get checksumAlgorithm => _$this._checksumAlgorithm;
  set checksumAlgorithm(_i5.ChecksumAlgorithm? checksumAlgorithm) =>
      _$this._checksumAlgorithm = checksumAlgorithm;

  CreateMultipartUploadOutputBuilder() {
    CreateMultipartUploadOutput._init(this);
  }

  CreateMultipartUploadOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _abortDate = $v.abortDate;
      _abortRuleId = $v.abortRuleId;
      _bucket = $v.bucket;
      _key = $v.key;
      _uploadId = $v.uploadId;
      _serverSideEncryption = $v.serverSideEncryption;
      _sseCustomerAlgorithm = $v.sseCustomerAlgorithm;
      _sseCustomerKeyMd5 = $v.sseCustomerKeyMd5;
      _ssekmsKeyId = $v.ssekmsKeyId;
      _ssekmsEncryptionContext = $v.ssekmsEncryptionContext;
      _bucketKeyEnabled = $v.bucketKeyEnabled;
      _requestCharged = $v.requestCharged;
      _checksumAlgorithm = $v.checksumAlgorithm;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateMultipartUploadOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateMultipartUploadOutput;
  }

  @override
  void update(void Function(CreateMultipartUploadOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateMultipartUploadOutput build() => _build();

  _$CreateMultipartUploadOutput _build() {
    final _$result = _$v ??
        new _$CreateMultipartUploadOutput._(
            abortDate: abortDate,
            abortRuleId: abortRuleId,
            bucket: bucket,
            key: key,
            uploadId: uploadId,
            serverSideEncryption: serverSideEncryption,
            sseCustomerAlgorithm: sseCustomerAlgorithm,
            sseCustomerKeyMd5: sseCustomerKeyMd5,
            ssekmsKeyId: ssekmsKeyId,
            ssekmsEncryptionContext: ssekmsEncryptionContext,
            bucketKeyEnabled: bucketKeyEnabled,
            requestCharged: requestCharged,
            checksumAlgorithm: checksumAlgorithm);
    replace(_$result);
    return _$result;
  }
}

class _$CreateMultipartUploadOutputPayload
    extends CreateMultipartUploadOutputPayload {
  @override
  final String? bucket;
  @override
  final String? key;
  @override
  final String? uploadId;

  factory _$CreateMultipartUploadOutputPayload(
          [void Function(CreateMultipartUploadOutputPayloadBuilder)?
              updates]) =>
      (new CreateMultipartUploadOutputPayloadBuilder()..update(updates))
          ._build();

  _$CreateMultipartUploadOutputPayload._({this.bucket, this.key, this.uploadId})
      : super._();

  @override
  CreateMultipartUploadOutputPayload rebuild(
          void Function(CreateMultipartUploadOutputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateMultipartUploadOutputPayloadBuilder toBuilder() =>
      new CreateMultipartUploadOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateMultipartUploadOutputPayload &&
        bucket == other.bucket &&
        key == other.key &&
        uploadId == other.uploadId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, uploadId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateMultipartUploadOutputPayloadBuilder
    implements
        Builder<CreateMultipartUploadOutputPayload,
            CreateMultipartUploadOutputPayloadBuilder> {
  _$CreateMultipartUploadOutputPayload? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _uploadId;
  String? get uploadId => _$this._uploadId;
  set uploadId(String? uploadId) => _$this._uploadId = uploadId;

  CreateMultipartUploadOutputPayloadBuilder() {
    CreateMultipartUploadOutputPayload._init(this);
  }

  CreateMultipartUploadOutputPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _key = $v.key;
      _uploadId = $v.uploadId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateMultipartUploadOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateMultipartUploadOutputPayload;
  }

  @override
  void update(
      void Function(CreateMultipartUploadOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateMultipartUploadOutputPayload build() => _build();

  _$CreateMultipartUploadOutputPayload _build() {
    final _$result = _$v ??
        new _$CreateMultipartUploadOutputPayload._(
            bucket: bucket, key: key, uploadId: uploadId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
