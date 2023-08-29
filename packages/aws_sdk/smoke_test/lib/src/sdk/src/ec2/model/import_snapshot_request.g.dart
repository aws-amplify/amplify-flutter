// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_snapshot_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportSnapshotRequest extends ImportSnapshotRequest {
  @override
  final ClientData? clientData;
  @override
  final String? clientToken;
  @override
  final String? description;
  @override
  final SnapshotDiskContainer? diskContainer;
  @override
  final bool dryRun;
  @override
  final bool encrypted;
  @override
  final String? kmsKeyId;
  @override
  final String? roleName;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;

  factory _$ImportSnapshotRequest(
          [void Function(ImportSnapshotRequestBuilder)? updates]) =>
      (new ImportSnapshotRequestBuilder()..update(updates))._build();

  _$ImportSnapshotRequest._(
      {this.clientData,
      this.clientToken,
      this.description,
      this.diskContainer,
      required this.dryRun,
      required this.encrypted,
      this.kmsKeyId,
      this.roleName,
      this.tagSpecifications})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ImportSnapshotRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        encrypted, r'ImportSnapshotRequest', 'encrypted');
  }

  @override
  ImportSnapshotRequest rebuild(
          void Function(ImportSnapshotRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportSnapshotRequestBuilder toBuilder() =>
      new ImportSnapshotRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportSnapshotRequest &&
        clientData == other.clientData &&
        clientToken == other.clientToken &&
        description == other.description &&
        diskContainer == other.diskContainer &&
        dryRun == other.dryRun &&
        encrypted == other.encrypted &&
        kmsKeyId == other.kmsKeyId &&
        roleName == other.roleName &&
        tagSpecifications == other.tagSpecifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientData.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, diskContainer.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, encrypted.hashCode);
    _$hash = $jc(_$hash, kmsKeyId.hashCode);
    _$hash = $jc(_$hash, roleName.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ImportSnapshotRequestBuilder
    implements Builder<ImportSnapshotRequest, ImportSnapshotRequestBuilder> {
  _$ImportSnapshotRequest? _$v;

  ClientDataBuilder? _clientData;
  ClientDataBuilder get clientData =>
      _$this._clientData ??= new ClientDataBuilder();
  set clientData(ClientDataBuilder? clientData) =>
      _$this._clientData = clientData;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  SnapshotDiskContainerBuilder? _diskContainer;
  SnapshotDiskContainerBuilder get diskContainer =>
      _$this._diskContainer ??= new SnapshotDiskContainerBuilder();
  set diskContainer(SnapshotDiskContainerBuilder? diskContainer) =>
      _$this._diskContainer = diskContainer;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  bool? _encrypted;
  bool? get encrypted => _$this._encrypted;
  set encrypted(bool? encrypted) => _$this._encrypted = encrypted;

  String? _kmsKeyId;
  String? get kmsKeyId => _$this._kmsKeyId;
  set kmsKeyId(String? kmsKeyId) => _$this._kmsKeyId = kmsKeyId;

  String? _roleName;
  String? get roleName => _$this._roleName;
  set roleName(String? roleName) => _$this._roleName = roleName;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  ImportSnapshotRequestBuilder() {
    ImportSnapshotRequest._init(this);
  }

  ImportSnapshotRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientData = $v.clientData?.toBuilder();
      _clientToken = $v.clientToken;
      _description = $v.description;
      _diskContainer = $v.diskContainer?.toBuilder();
      _dryRun = $v.dryRun;
      _encrypted = $v.encrypted;
      _kmsKeyId = $v.kmsKeyId;
      _roleName = $v.roleName;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportSnapshotRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImportSnapshotRequest;
  }

  @override
  void update(void Function(ImportSnapshotRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportSnapshotRequest build() => _build();

  _$ImportSnapshotRequest _build() {
    _$ImportSnapshotRequest _$result;
    try {
      _$result = _$v ??
          new _$ImportSnapshotRequest._(
              clientData: _clientData?.build(),
              clientToken: clientToken,
              description: description,
              diskContainer: _diskContainer?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'ImportSnapshotRequest', 'dryRun'),
              encrypted: BuiltValueNullFieldError.checkNotNull(
                  encrypted, r'ImportSnapshotRequest', 'encrypted'),
              kmsKeyId: kmsKeyId,
              roleName: roleName,
              tagSpecifications: _tagSpecifications?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'clientData';
        _clientData?.build();

        _$failedField = 'diskContainer';
        _diskContainer?.build();

        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ImportSnapshotRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
