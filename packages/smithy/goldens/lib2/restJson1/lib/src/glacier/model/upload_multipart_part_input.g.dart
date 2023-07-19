// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_multipart_part_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UploadMultipartPartInput extends UploadMultipartPartInput {
  @override
  final String accountId;
  @override
  final String vaultName;
  @override
  final String uploadId;
  @override
  final String? checksum;
  @override
  final String? range;
  @override
  final _i2.Stream<List<int>> body;

  factory _$UploadMultipartPartInput(
          [void Function(UploadMultipartPartInputBuilder)? updates]) =>
      (new UploadMultipartPartInputBuilder()..update(updates))._build();

  _$UploadMultipartPartInput._(
      {required this.accountId,
      required this.vaultName,
      required this.uploadId,
      this.checksum,
      this.range,
      required this.body})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accountId, r'UploadMultipartPartInput', 'accountId');
    BuiltValueNullFieldError.checkNotNull(
        vaultName, r'UploadMultipartPartInput', 'vaultName');
    BuiltValueNullFieldError.checkNotNull(
        uploadId, r'UploadMultipartPartInput', 'uploadId');
    BuiltValueNullFieldError.checkNotNull(
        body, r'UploadMultipartPartInput', 'body');
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
        vaultName == other.vaultName &&
        uploadId == other.uploadId &&
        checksum == other.checksum &&
        range == other.range &&
        body == other.body;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, vaultName.hashCode);
    _$hash = $jc(_$hash, uploadId.hashCode);
    _$hash = $jc(_$hash, checksum.hashCode);
    _$hash = $jc(_$hash, range.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
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

  String? _vaultName;
  String? get vaultName => _$this._vaultName;
  set vaultName(String? vaultName) => _$this._vaultName = vaultName;

  String? _uploadId;
  String? get uploadId => _$this._uploadId;
  set uploadId(String? uploadId) => _$this._uploadId = uploadId;

  String? _checksum;
  String? get checksum => _$this._checksum;
  set checksum(String? checksum) => _$this._checksum = checksum;

  String? _range;
  String? get range => _$this._range;
  set range(String? range) => _$this._range = range;

  _i2.Stream<List<int>>? _body;
  _i2.Stream<List<int>>? get body => _$this._body;
  set body(_i2.Stream<List<int>>? body) => _$this._body = body;

  UploadMultipartPartInputBuilder() {
    UploadMultipartPartInput._init(this);
  }

  UploadMultipartPartInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _vaultName = $v.vaultName;
      _uploadId = $v.uploadId;
      _checksum = $v.checksum;
      _range = $v.range;
      _body = $v.body;
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
            vaultName: BuiltValueNullFieldError.checkNotNull(
                vaultName, r'UploadMultipartPartInput', 'vaultName'),
            uploadId: BuiltValueNullFieldError.checkNotNull(
                uploadId, r'UploadMultipartPartInput', 'uploadId'),
            checksum: checksum,
            range: range,
            body: BuiltValueNullFieldError.checkNotNull(
                body, r'UploadMultipartPartInput', 'body'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
