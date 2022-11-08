// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.copy_object_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CopyObjectOutput extends CopyObjectOutput {
  @override
  final bool? bucketKeyEnabled;
  @override
  final _i3.CopyObjectResult? copyObjectResult;
  @override
  final String? copySourceVersionId;
  @override
  final String? expiration;
  @override
  final _i4.RequestCharged? requestCharged;
  @override
  final _i5.ServerSideEncryption? serverSideEncryption;
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

  factory _$CopyObjectOutput(
          [void Function(CopyObjectOutputBuilder)? updates]) =>
      (new CopyObjectOutputBuilder()..update(updates))._build();

  _$CopyObjectOutput._(
      {this.bucketKeyEnabled,
      this.copyObjectResult,
      this.copySourceVersionId,
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
  CopyObjectOutput rebuild(void Function(CopyObjectOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CopyObjectOutputBuilder toBuilder() =>
      new CopyObjectOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CopyObjectOutput &&
        bucketKeyEnabled == other.bucketKeyEnabled &&
        copyObjectResult == other.copyObjectResult &&
        copySourceVersionId == other.copySourceVersionId &&
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
                                        $jc($jc(0, bucketKeyEnabled.hashCode),
                                            copyObjectResult.hashCode),
                                        copySourceVersionId.hashCode),
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

class CopyObjectOutputBuilder
    implements Builder<CopyObjectOutput, CopyObjectOutputBuilder> {
  _$CopyObjectOutput? _$v;

  bool? _bucketKeyEnabled;
  bool? get bucketKeyEnabled => _$this._bucketKeyEnabled;
  set bucketKeyEnabled(bool? bucketKeyEnabled) =>
      _$this._bucketKeyEnabled = bucketKeyEnabled;

  _i3.CopyObjectResultBuilder? _copyObjectResult;
  _i3.CopyObjectResultBuilder get copyObjectResult =>
      _$this._copyObjectResult ??= new _i3.CopyObjectResultBuilder();
  set copyObjectResult(_i3.CopyObjectResultBuilder? copyObjectResult) =>
      _$this._copyObjectResult = copyObjectResult;

  String? _copySourceVersionId;
  String? get copySourceVersionId => _$this._copySourceVersionId;
  set copySourceVersionId(String? copySourceVersionId) =>
      _$this._copySourceVersionId = copySourceVersionId;

  String? _expiration;
  String? get expiration => _$this._expiration;
  set expiration(String? expiration) => _$this._expiration = expiration;

  _i4.RequestCharged? _requestCharged;
  _i4.RequestCharged? get requestCharged => _$this._requestCharged;
  set requestCharged(_i4.RequestCharged? requestCharged) =>
      _$this._requestCharged = requestCharged;

  _i5.ServerSideEncryption? _serverSideEncryption;
  _i5.ServerSideEncryption? get serverSideEncryption =>
      _$this._serverSideEncryption;
  set serverSideEncryption(_i5.ServerSideEncryption? serverSideEncryption) =>
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

  CopyObjectOutputBuilder() {
    CopyObjectOutput._init(this);
  }

  CopyObjectOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucketKeyEnabled = $v.bucketKeyEnabled;
      _copyObjectResult = $v.copyObjectResult?.toBuilder();
      _copySourceVersionId = $v.copySourceVersionId;
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
              bucketKeyEnabled: bucketKeyEnabled,
              copyObjectResult: _copyObjectResult?.build(),
              copySourceVersionId: copySourceVersionId,
              expiration: expiration,
              requestCharged: requestCharged,
              serverSideEncryption: serverSideEncryption,
              sseCustomerAlgorithm: sseCustomerAlgorithm,
              sseCustomerKeyMd5: sseCustomerKeyMd5,
              ssekmsEncryptionContext: ssekmsEncryptionContext,
              ssekmsKeyId: ssekmsKeyId,
              versionId: versionId);
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
