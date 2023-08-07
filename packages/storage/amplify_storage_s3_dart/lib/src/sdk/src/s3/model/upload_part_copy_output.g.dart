// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_part_copy_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UploadPartCopyOutput extends UploadPartCopyOutput {
  @override
  final String? copySourceVersionId;
  @override
  final CopyPartResult? copyPartResult;
  @override
  final ServerSideEncryption? serverSideEncryption;
  @override
  final String? sseCustomerAlgorithm;
  @override
  final String? sseCustomerKeyMd5;
  @override
  final String? ssekmsKeyId;
  @override
  final bool? bucketKeyEnabled;
  @override
  final RequestCharged? requestCharged;

  factory _$UploadPartCopyOutput(
          [void Function(UploadPartCopyOutputBuilder)? updates]) =>
      (new UploadPartCopyOutputBuilder()..update(updates))._build();

  _$UploadPartCopyOutput._(
      {this.copySourceVersionId,
      this.copyPartResult,
      this.serverSideEncryption,
      this.sseCustomerAlgorithm,
      this.sseCustomerKeyMd5,
      this.ssekmsKeyId,
      this.bucketKeyEnabled,
      this.requestCharged})
      : super._();

  @override
  UploadPartCopyOutput rebuild(
          void Function(UploadPartCopyOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UploadPartCopyOutputBuilder toBuilder() =>
      new UploadPartCopyOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UploadPartCopyOutput &&
        copySourceVersionId == other.copySourceVersionId &&
        copyPartResult == other.copyPartResult &&
        serverSideEncryption == other.serverSideEncryption &&
        sseCustomerAlgorithm == other.sseCustomerAlgorithm &&
        sseCustomerKeyMd5 == other.sseCustomerKeyMd5 &&
        ssekmsKeyId == other.ssekmsKeyId &&
        bucketKeyEnabled == other.bucketKeyEnabled &&
        requestCharged == other.requestCharged;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, copySourceVersionId.hashCode);
    _$hash = $jc(_$hash, copyPartResult.hashCode);
    _$hash = $jc(_$hash, serverSideEncryption.hashCode);
    _$hash = $jc(_$hash, sseCustomerAlgorithm.hashCode);
    _$hash = $jc(_$hash, sseCustomerKeyMd5.hashCode);
    _$hash = $jc(_$hash, ssekmsKeyId.hashCode);
    _$hash = $jc(_$hash, bucketKeyEnabled.hashCode);
    _$hash = $jc(_$hash, requestCharged.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UploadPartCopyOutputBuilder
    implements Builder<UploadPartCopyOutput, UploadPartCopyOutputBuilder> {
  _$UploadPartCopyOutput? _$v;

  String? _copySourceVersionId;
  String? get copySourceVersionId => _$this._copySourceVersionId;
  set copySourceVersionId(String? copySourceVersionId) =>
      _$this._copySourceVersionId = copySourceVersionId;

  CopyPartResultBuilder? _copyPartResult;
  CopyPartResultBuilder get copyPartResult =>
      _$this._copyPartResult ??= new CopyPartResultBuilder();
  set copyPartResult(CopyPartResultBuilder? copyPartResult) =>
      _$this._copyPartResult = copyPartResult;

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

  bool? _bucketKeyEnabled;
  bool? get bucketKeyEnabled => _$this._bucketKeyEnabled;
  set bucketKeyEnabled(bool? bucketKeyEnabled) =>
      _$this._bucketKeyEnabled = bucketKeyEnabled;

  RequestCharged? _requestCharged;
  RequestCharged? get requestCharged => _$this._requestCharged;
  set requestCharged(RequestCharged? requestCharged) =>
      _$this._requestCharged = requestCharged;

  UploadPartCopyOutputBuilder();

  UploadPartCopyOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _copySourceVersionId = $v.copySourceVersionId;
      _copyPartResult = $v.copyPartResult?.toBuilder();
      _serverSideEncryption = $v.serverSideEncryption;
      _sseCustomerAlgorithm = $v.sseCustomerAlgorithm;
      _sseCustomerKeyMd5 = $v.sseCustomerKeyMd5;
      _ssekmsKeyId = $v.ssekmsKeyId;
      _bucketKeyEnabled = $v.bucketKeyEnabled;
      _requestCharged = $v.requestCharged;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UploadPartCopyOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UploadPartCopyOutput;
  }

  @override
  void update(void Function(UploadPartCopyOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UploadPartCopyOutput build() => _build();

  _$UploadPartCopyOutput _build() {
    _$UploadPartCopyOutput _$result;
    try {
      _$result = _$v ??
          new _$UploadPartCopyOutput._(
              copySourceVersionId: copySourceVersionId,
              copyPartResult: _copyPartResult?.build(),
              serverSideEncryption: serverSideEncryption,
              sseCustomerAlgorithm: sseCustomerAlgorithm,
              sseCustomerKeyMd5: sseCustomerKeyMd5,
              ssekmsKeyId: ssekmsKeyId,
              bucketKeyEnabled: bucketKeyEnabled,
              requestCharged: requestCharged);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'copyPartResult';
        _copyPartResult?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UploadPartCopyOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
