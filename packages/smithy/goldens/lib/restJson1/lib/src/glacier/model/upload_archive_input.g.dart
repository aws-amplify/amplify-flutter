// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.glacier.model.upload_archive_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UploadArchiveInput extends UploadArchiveInput {
  @override
  final String accountId;
  @override
  final String? archiveDescription;
  @override
  final _i2.Stream<List<int>>? body;
  @override
  final String? checksum;
  @override
  final String vaultName;

  factory _$UploadArchiveInput(
          [void Function(UploadArchiveInputBuilder)? updates]) =>
      (new UploadArchiveInputBuilder()..update(updates))._build();

  _$UploadArchiveInput._(
      {required this.accountId,
      this.archiveDescription,
      this.body,
      this.checksum,
      required this.vaultName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accountId, r'UploadArchiveInput', 'accountId');
    BuiltValueNullFieldError.checkNotNull(
        vaultName, r'UploadArchiveInput', 'vaultName');
  }

  @override
  UploadArchiveInput rebuild(
          void Function(UploadArchiveInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UploadArchiveInputBuilder toBuilder() =>
      new UploadArchiveInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UploadArchiveInput &&
        accountId == other.accountId &&
        archiveDescription == other.archiveDescription &&
        body == other.body &&
        checksum == other.checksum &&
        vaultName == other.vaultName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, archiveDescription.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, checksum.hashCode);
    _$hash = $jc(_$hash, vaultName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UploadArchiveInputBuilder
    implements Builder<UploadArchiveInput, UploadArchiveInputBuilder> {
  _$UploadArchiveInput? _$v;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  String? _archiveDescription;
  String? get archiveDescription => _$this._archiveDescription;
  set archiveDescription(String? archiveDescription) =>
      _$this._archiveDescription = archiveDescription;

  _i2.Stream<List<int>>? _body;
  _i2.Stream<List<int>>? get body => _$this._body;
  set body(_i2.Stream<List<int>>? body) => _$this._body = body;

  String? _checksum;
  String? get checksum => _$this._checksum;
  set checksum(String? checksum) => _$this._checksum = checksum;

  String? _vaultName;
  String? get vaultName => _$this._vaultName;
  set vaultName(String? vaultName) => _$this._vaultName = vaultName;

  UploadArchiveInputBuilder() {
    UploadArchiveInput._init(this);
  }

  UploadArchiveInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _archiveDescription = $v.archiveDescription;
      _body = $v.body;
      _checksum = $v.checksum;
      _vaultName = $v.vaultName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UploadArchiveInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UploadArchiveInput;
  }

  @override
  void update(void Function(UploadArchiveInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UploadArchiveInput build() => _build();

  _$UploadArchiveInput _build() {
    final _$result = _$v ??
        new _$UploadArchiveInput._(
            accountId: BuiltValueNullFieldError.checkNotNull(
                accountId, r'UploadArchiveInput', 'accountId'),
            archiveDescription: archiveDescription,
            body: body,
            checksum: checksum,
            vaultName: BuiltValueNullFieldError.checkNotNull(
                vaultName, r'UploadArchiveInput', 'vaultName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
