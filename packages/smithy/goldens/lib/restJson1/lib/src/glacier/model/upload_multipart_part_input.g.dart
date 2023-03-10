// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.glacier.model.upload_multipart_part_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UploadMultipartPartInput extends UploadMultipartPartInput {
  @override
  final String accountId;
  @override
  final _i2.Stream<List<int>>? body;
  @override
  final String? checksum;
  @override
  final String? range;
  @override
  final String uploadId;
  @override
  final String vaultName;

  factory _$UploadMultipartPartInput(
          [void Function(UploadMultipartPartInputBuilder)? updates]) =>
      (new UploadMultipartPartInputBuilder()..update(updates))._build();

  _$UploadMultipartPartInput._(
      {required this.accountId,
      this.body,
      this.checksum,
      this.range,
      required this.uploadId,
      required this.vaultName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accountId, r'UploadMultipartPartInput', 'accountId');
    BuiltValueNullFieldError.checkNotNull(
        uploadId, r'UploadMultipartPartInput', 'uploadId');
    BuiltValueNullFieldError.checkNotNull(
        vaultName, r'UploadMultipartPartInput', 'vaultName');
  }

  @override
  UploadMultipartPartInput rebuild(
          void Function(UploadMultipartPartInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UploadMultipartPartInputBuilder toBuilder() =>
      new UploadMultipartPartInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UploadMultipartPartInput &&
        accountId == other.accountId &&
        body == other.body &&
        checksum == other.checksum &&
        range == other.range &&
        uploadId == other.uploadId &&
        vaultName == other.vaultName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, checksum.hashCode);
    _$hash = $jc(_$hash, range.hashCode);
    _$hash = $jc(_$hash, uploadId.hashCode);
    _$hash = $jc(_$hash, vaultName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UploadMultipartPartInputBuilder
    implements
        Builder<UploadMultipartPartInput, UploadMultipartPartInputBuilder> {
  _$UploadMultipartPartInput? _$v;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  _i2.Stream<List<int>>? _body;
  _i2.Stream<List<int>>? get body => _$this._body;
  set body(_i2.Stream<List<int>>? body) => _$this._body = body;

  String? _checksum;
  String? get checksum => _$this._checksum;
  set checksum(String? checksum) => _$this._checksum = checksum;

  String? _range;
  String? get range => _$this._range;
  set range(String? range) => _$this._range = range;

  String? _uploadId;
  String? get uploadId => _$this._uploadId;
  set uploadId(String? uploadId) => _$this._uploadId = uploadId;

  String? _vaultName;
  String? get vaultName => _$this._vaultName;
  set vaultName(String? vaultName) => _$this._vaultName = vaultName;

  UploadMultipartPartInputBuilder() {
    UploadMultipartPartInput._init(this);
  }

  UploadMultipartPartInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _body = $v.body;
      _checksum = $v.checksum;
      _range = $v.range;
      _uploadId = $v.uploadId;
      _vaultName = $v.vaultName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UploadMultipartPartInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UploadMultipartPartInput;
  }

  @override
  void update(void Function(UploadMultipartPartInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UploadMultipartPartInput build() => _build();

  _$UploadMultipartPartInput _build() {
    final _$result = _$v ??
        new _$UploadMultipartPartInput._(
            accountId: BuiltValueNullFieldError.checkNotNull(
                accountId, r'UploadMultipartPartInput', 'accountId'),
            body: body,
            checksum: checksum,
            range: range,
            uploadId: BuiltValueNullFieldError.checkNotNull(
                uploadId, r'UploadMultipartPartInput', 'uploadId'),
            vaultName: BuiltValueNullFieldError.checkNotNull(
                vaultName, r'UploadMultipartPartInput', 'vaultName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
