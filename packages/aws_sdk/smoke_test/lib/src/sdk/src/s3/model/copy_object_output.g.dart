// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'copy_object_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CopyObjectOutput extends CopyObjectOutput {
  @override
  final CopyObjectResult? copyObjectResult;
  @override
  final String? expiration;
  @override
  final String? copySourceVersionId;
  @override
  final String? versionId;
  @override
  final ServerSideEncryption? serverSideEncryption;
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

  factory _$CopyObjectOutput(
          [void Function(CopyObjectOutputBuilder)? updates]) =>
      (new CopyObjectOutputBuilder()..update(updates))._build();

  _$CopyObjectOutput._(
      {this.copyObjectResult,
      this.expiration,
      this.copySourceVersionId,
      this.versionId,
      this.serverSideEncryption,
      this.sseCustomerAlgorithm,
      this.sseCustomerKeyMd5,
      this.ssekmsKeyId,
      this.ssekmsEncryptionContext,
      this.bucketKeyEnabled,
      this.requestCharged})
      : super._();

  @override
  CopyObjectOutput rebuild(void Function(CopyObjectOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CopyObjectOutputBuilder toBuilder() =>
      new CopyObjectOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CopyObjectOutput &&
        copyObjectResult == other.copyObjectResult &&
        expiration == other.expiration &&
        copySourceVersionId == other.copySourceVersionId &&
        versionId == other.versionId &&
        serverSideEncryption == other.serverSideEncryption &&
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
    _$hash = $jc(_$hash, copyObjectResult.hashCode);
    _$hash = $jc(_$hash, expiration.hashCode);
    _$hash = $jc(_$hash, copySourceVersionId.hashCode);
    _$hash = $jc(_$hash, versionId.hashCode);
    _$hash = $jc(_$hash, serverSideEncryption.hashCode);
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

class CopyObjectOutputBuilder
    implements Builder<CopyObjectOutput, CopyObjectOutputBuilder> {
  _$CopyObjectOutput? _$v;

  CopyObjectResultBuilder? _copyObjectResult;
  CopyObjectResultBuilder get copyObjectResult =>
      _$this._copyObjectResult ??= new CopyObjectResultBuilder();
  set copyObjectResult(CopyObjectResultBuilder? copyObjectResult) =>
      _$this._copyObjectResult = copyObjectResult;

  String? _expiration;
  String? get expiration => _$this._expiration;
  set expiration(String? expiration) => _$this._expiration = expiration;

  String? _copySourceVersionId;
  String? get copySourceVersionId => _$this._copySourceVersionId;
  set copySourceVersionId(String? copySourceVersionId) =>
      _$this._copySourceVersionId = copySourceVersionId;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  ServerSideEncryption? _serverSideEncryption;
  ServerSideEncryption? get serverSideEncryption =>
      _$this._serverSideEncryption;
  set serverSideEncryption(ServerSideEncryption? serverSideEncryption) =>
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

  RequestCharged? _requestCharged;
  RequestCharged? get requestCharged => _$this._requestCharged;
  set requestCharged(RequestCharged? requestCharged) =>
      _$this._requestCharged = requestCharged;

  CopyObjectOutputBuilder();

  CopyObjectOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _copyObjectResult = $v.copyObjectResult?.toBuilder();
      _expiration = $v.expiration;
      _copySourceVersionId = $v.copySourceVersionId;
      _versionId = $v.versionId;
      _serverSideEncryption = $v.serverSideEncryption;
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
  void replace(CopyObjectOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CopyObjectOutput;
  }

  @override
  void update(void Function(CopyObjectOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CopyObjectOutput build() => _build();

  _$CopyObjectOutput _build() {
    _$CopyObjectOutput _$result;
    try {
      _$result = _$v ??
          new _$CopyObjectOutput._(
              copyObjectResult: _copyObjectResult?.build(),
              expiration: expiration,
              copySourceVersionId: copySourceVersionId,
              versionId: versionId,
              serverSideEncryption: serverSideEncryption,
              sseCustomerAlgorithm: sseCustomerAlgorithm,
              sseCustomerKeyMd5: sseCustomerKeyMd5,
              ssekmsKeyId: ssekmsKeyId,
              ssekmsEncryptionContext: ssekmsEncryptionContext,
              bucketKeyEnabled: bucketKeyEnabled,
              requestCharged: requestCharged);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'copyObjectResult';
        _copyObjectResult?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CopyObjectOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
