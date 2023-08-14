// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_managed_prefix_list_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateManagedPrefixListRequest extends CreateManagedPrefixListRequest {
  @override
  final bool dryRun;
  @override
  final String? prefixListName;
  @override
  final _i3.BuiltList<AddPrefixListEntry>? entries;
  @override
  final int maxEntries;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final String? addressFamily;
  @override
  final String? clientToken;

  factory _$CreateManagedPrefixListRequest(
          [void Function(CreateManagedPrefixListRequestBuilder)? updates]) =>
      (new CreateManagedPrefixListRequestBuilder()..update(updates))._build();

  _$CreateManagedPrefixListRequest._(
      {required this.dryRun,
      this.prefixListName,
      this.entries,
      required this.maxEntries,
      this.tagSpecifications,
      this.addressFamily,
      this.clientToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateManagedPrefixListRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxEntries, r'CreateManagedPrefixListRequest', 'maxEntries');
  }

  @override
  CreateManagedPrefixListRequest rebuild(
          void Function(CreateManagedPrefixListRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateManagedPrefixListRequestBuilder toBuilder() =>
      new CreateManagedPrefixListRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateManagedPrefixListRequest &&
        dryRun == other.dryRun &&
        prefixListName == other.prefixListName &&
        entries == other.entries &&
        maxEntries == other.maxEntries &&
        tagSpecifications == other.tagSpecifications &&
        addressFamily == other.addressFamily &&
        clientToken == other.clientToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, prefixListName.hashCode);
    _$hash = $jc(_$hash, entries.hashCode);
    _$hash = $jc(_$hash, maxEntries.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, addressFamily.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateManagedPrefixListRequestBuilder
    implements
        Builder<CreateManagedPrefixListRequest,
            CreateManagedPrefixListRequestBuilder> {
  _$CreateManagedPrefixListRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _prefixListName;
  String? get prefixListName => _$this._prefixListName;
  set prefixListName(String? prefixListName) =>
      _$this._prefixListName = prefixListName;

  _i3.ListBuilder<AddPrefixListEntry>? _entries;
  _i3.ListBuilder<AddPrefixListEntry> get entries =>
      _$this._entries ??= new _i3.ListBuilder<AddPrefixListEntry>();
  set entries(_i3.ListBuilder<AddPrefixListEntry>? entries) =>
      _$this._entries = entries;

  int? _maxEntries;
  int? get maxEntries => _$this._maxEntries;
  set maxEntries(int? maxEntries) => _$this._maxEntries = maxEntries;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  String? _addressFamily;
  String? get addressFamily => _$this._addressFamily;
  set addressFamily(String? addressFamily) =>
      _$this._addressFamily = addressFamily;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  CreateManagedPrefixListRequestBuilder() {
    CreateManagedPrefixListRequest._init(this);
  }

  CreateManagedPrefixListRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _prefixListName = $v.prefixListName;
      _entries = $v.entries?.toBuilder();
      _maxEntries = $v.maxEntries;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _addressFamily = $v.addressFamily;
      _clientToken = $v.clientToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateManagedPrefixListRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateManagedPrefixListRequest;
  }

  @override
  void update(void Function(CreateManagedPrefixListRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateManagedPrefixListRequest build() => _build();

  _$CreateManagedPrefixListRequest _build() {
    _$CreateManagedPrefixListRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateManagedPrefixListRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateManagedPrefixListRequest', 'dryRun'),
              prefixListName: prefixListName,
              entries: _entries?.build(),
              maxEntries: BuiltValueNullFieldError.checkNotNull(
                  maxEntries, r'CreateManagedPrefixListRequest', 'maxEntries'),
              tagSpecifications: _tagSpecifications?.build(),
              addressFamily: addressFamily,
              clientToken: clientToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'entries';
        _entries?.build();

        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateManagedPrefixListRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
