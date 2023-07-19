// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_archive_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UploadArchiveInput extends UploadArchiveInput {
  @override
  final String vaultName;
  @override
  final String accountId;
  @override
  final String? archiveDescription;
  @override
  final String? checksum;
  @override
  final _i2.Stream<List<int>>? body;

  factory _$UploadArchiveInput(
          [void Function(UploadArchiveInputBuilder)? updates]) =>
      (new UploadArchiveInputBuilder()..update(updates))._build();

  _$UploadArchiveInput._(
      {required this.vaultName,
      required this.accountId,
      this.archiveDescription,
      this.checksum,
      this.body})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vaultName, r'UploadArchiveInput', 'vaultName');
    BuiltValueNullFieldError.checkNotNull(
        accountId, r'UploadArchiveInput', 'accountId');
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
        vaultName == other.vaultName &&
        accountId == other.accountId &&
        archiveDescription == other.archiveDescription &&
        checksum == other.checksum &&
        body == other.body;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vaultName.hashCode);
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, archiveDescription.hashCode);
    _$hash = $jc(_$hash, checksum.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UploadArchiveInputBuilder
    implements Builder<UploadArchiveInput, UploadArchiveInputBuilder> {
  _$UploadArchiveInput? _$v;

  String? _vaultName;
  String? get vaultName => _$this._vaultName;
  set vaultName(String? vaultName) => _$this._vaultName = vaultName;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  String? _archiveDescription;
  String? get archiveDescription => _$this._archiveDescription;
  set archiveDescription(String? archiveDescription) =>
      _$this._archiveDescription = archiveDescription;

  String? _checksum;
  String? get checksum => _$this._checksum;
  set checksum(String? checksum) => _$this._checksum = checksum;

  _i2.Stream<List<int>>? _body;
  _i2.Stream<List<int>>? get body => _$this._body;
  set body(_i2.Stream<List<int>>? body) => _$this._body = body;

  UploadArchiveInputBuilder();

  UploadArchiveInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vaultName = $v.vaultName;
      _accountId = $v.accountId;
      _archiveDescription = $v.archiveDescription;
      _checksum = $v.checksum;
      _body = $v.body;
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
            vaultName: BuiltValueNullFieldError.checkNotNull(
                vaultName, r'UploadArchiveInput', 'vaultName'),
            accountId: BuiltValueNullFieldError.checkNotNull(
                accountId, r'UploadArchiveInput', 'accountId'),
            archiveDescription: archiveDescription,
            checksum: checksum,
            body: body);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
