// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_managed_prefix_list_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyManagedPrefixListRequest extends ModifyManagedPrefixListRequest {
  @override
  final bool dryRun;
  @override
  final String? prefixListId;
  @override
  final _i3.Int64 currentVersion;
  @override
  final String? prefixListName;
  @override
  final _i4.BuiltList<AddPrefixListEntry>? addEntries;
  @override
  final _i4.BuiltList<RemovePrefixListEntry>? removeEntries;
  @override
  final int maxEntries;

  factory _$ModifyManagedPrefixListRequest(
          [void Function(ModifyManagedPrefixListRequestBuilder)? updates]) =>
      (new ModifyManagedPrefixListRequestBuilder()..update(updates))._build();

  _$ModifyManagedPrefixListRequest._(
      {required this.dryRun,
      this.prefixListId,
      required this.currentVersion,
      this.prefixListName,
      this.addEntries,
      this.removeEntries,
      required this.maxEntries})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyManagedPrefixListRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        currentVersion, r'ModifyManagedPrefixListRequest', 'currentVersion');
    BuiltValueNullFieldError.checkNotNull(
        maxEntries, r'ModifyManagedPrefixListRequest', 'maxEntries');
  }

  @override
  ModifyManagedPrefixListRequest rebuild(
          void Function(ModifyManagedPrefixListRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyManagedPrefixListRequestBuilder toBuilder() =>
      new ModifyManagedPrefixListRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyManagedPrefixListRequest &&
        dryRun == other.dryRun &&
        prefixListId == other.prefixListId &&
        currentVersion == other.currentVersion &&
        prefixListName == other.prefixListName &&
        addEntries == other.addEntries &&
        removeEntries == other.removeEntries &&
        maxEntries == other.maxEntries;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, prefixListId.hashCode);
    _$hash = $jc(_$hash, currentVersion.hashCode);
    _$hash = $jc(_$hash, prefixListName.hashCode);
    _$hash = $jc(_$hash, addEntries.hashCode);
    _$hash = $jc(_$hash, removeEntries.hashCode);
    _$hash = $jc(_$hash, maxEntries.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyManagedPrefixListRequestBuilder
    implements
        Builder<ModifyManagedPrefixListRequest,
            ModifyManagedPrefixListRequestBuilder> {
  _$ModifyManagedPrefixListRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _prefixListId;
  String? get prefixListId => _$this._prefixListId;
  set prefixListId(String? prefixListId) => _$this._prefixListId = prefixListId;

  _i3.Int64? _currentVersion;
  _i3.Int64? get currentVersion => _$this._currentVersion;
  set currentVersion(_i3.Int64? currentVersion) =>
      _$this._currentVersion = currentVersion;

  String? _prefixListName;
  String? get prefixListName => _$this._prefixListName;
  set prefixListName(String? prefixListName) =>
      _$this._prefixListName = prefixListName;

  _i4.ListBuilder<AddPrefixListEntry>? _addEntries;
  _i4.ListBuilder<AddPrefixListEntry> get addEntries =>
      _$this._addEntries ??= new _i4.ListBuilder<AddPrefixListEntry>();
  set addEntries(_i4.ListBuilder<AddPrefixListEntry>? addEntries) =>
      _$this._addEntries = addEntries;

  _i4.ListBuilder<RemovePrefixListEntry>? _removeEntries;
  _i4.ListBuilder<RemovePrefixListEntry> get removeEntries =>
      _$this._removeEntries ??= new _i4.ListBuilder<RemovePrefixListEntry>();
  set removeEntries(_i4.ListBuilder<RemovePrefixListEntry>? removeEntries) =>
      _$this._removeEntries = removeEntries;

  int? _maxEntries;
  int? get maxEntries => _$this._maxEntries;
  set maxEntries(int? maxEntries) => _$this._maxEntries = maxEntries;

  ModifyManagedPrefixListRequestBuilder() {
    ModifyManagedPrefixListRequest._init(this);
  }

  ModifyManagedPrefixListRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _prefixListId = $v.prefixListId;
      _currentVersion = $v.currentVersion;
      _prefixListName = $v.prefixListName;
      _addEntries = $v.addEntries?.toBuilder();
      _removeEntries = $v.removeEntries?.toBuilder();
      _maxEntries = $v.maxEntries;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyManagedPrefixListRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyManagedPrefixListRequest;
  }

  @override
  void update(void Function(ModifyManagedPrefixListRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyManagedPrefixListRequest build() => _build();

  _$ModifyManagedPrefixListRequest _build() {
    _$ModifyManagedPrefixListRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifyManagedPrefixListRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'ModifyManagedPrefixListRequest', 'dryRun'),
              prefixListId: prefixListId,
              currentVersion: BuiltValueNullFieldError.checkNotNull(
                  currentVersion,
                  r'ModifyManagedPrefixListRequest',
                  'currentVersion'),
              prefixListName: prefixListName,
              addEntries: _addEntries?.build(),
              removeEntries: _removeEntries?.build(),
              maxEntries: BuiltValueNullFieldError.checkNotNull(
                  maxEntries, r'ModifyManagedPrefixListRequest', 'maxEntries'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addEntries';
        _addEntries?.build();
        _$failedField = 'removeEntries';
        _removeEntries?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyManagedPrefixListRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
