// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'managed_prefix_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ManagedPrefixList extends ManagedPrefixList {
  @override
  final String? prefixListId;
  @override
  final String? addressFamily;
  @override
  final PrefixListState? state;
  @override
  final String? stateMessage;
  @override
  final String? prefixListArn;
  @override
  final String? prefixListName;
  @override
  final int maxEntries;
  @override
  final _i2.Int64 version;
  @override
  final _i3.BuiltList<Tag>? tags;
  @override
  final String? ownerId;

  factory _$ManagedPrefixList(
          [void Function(ManagedPrefixListBuilder)? updates]) =>
      (new ManagedPrefixListBuilder()..update(updates))._build();

  _$ManagedPrefixList._(
      {this.prefixListId,
      this.addressFamily,
      this.state,
      this.stateMessage,
      this.prefixListArn,
      this.prefixListName,
      required this.maxEntries,
      required this.version,
      this.tags,
      this.ownerId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxEntries, r'ManagedPrefixList', 'maxEntries');
    BuiltValueNullFieldError.checkNotNull(
        version, r'ManagedPrefixList', 'version');
  }

  @override
  ManagedPrefixList rebuild(void Function(ManagedPrefixListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ManagedPrefixListBuilder toBuilder() =>
      new ManagedPrefixListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ManagedPrefixList &&
        prefixListId == other.prefixListId &&
        addressFamily == other.addressFamily &&
        state == other.state &&
        stateMessage == other.stateMessage &&
        prefixListArn == other.prefixListArn &&
        prefixListName == other.prefixListName &&
        maxEntries == other.maxEntries &&
        version == other.version &&
        tags == other.tags &&
        ownerId == other.ownerId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, prefixListId.hashCode);
    _$hash = $jc(_$hash, addressFamily.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, stateMessage.hashCode);
    _$hash = $jc(_$hash, prefixListArn.hashCode);
    _$hash = $jc(_$hash, prefixListName.hashCode);
    _$hash = $jc(_$hash, maxEntries.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ManagedPrefixListBuilder
    implements Builder<ManagedPrefixList, ManagedPrefixListBuilder> {
  _$ManagedPrefixList? _$v;

  String? _prefixListId;
  String? get prefixListId => _$this._prefixListId;
  set prefixListId(String? prefixListId) => _$this._prefixListId = prefixListId;

  String? _addressFamily;
  String? get addressFamily => _$this._addressFamily;
  set addressFamily(String? addressFamily) =>
      _$this._addressFamily = addressFamily;

  PrefixListState? _state;
  PrefixListState? get state => _$this._state;
  set state(PrefixListState? state) => _$this._state = state;

  String? _stateMessage;
  String? get stateMessage => _$this._stateMessage;
  set stateMessage(String? stateMessage) => _$this._stateMessage = stateMessage;

  String? _prefixListArn;
  String? get prefixListArn => _$this._prefixListArn;
  set prefixListArn(String? prefixListArn) =>
      _$this._prefixListArn = prefixListArn;

  String? _prefixListName;
  String? get prefixListName => _$this._prefixListName;
  set prefixListName(String? prefixListName) =>
      _$this._prefixListName = prefixListName;

  int? _maxEntries;
  int? get maxEntries => _$this._maxEntries;
  set maxEntries(int? maxEntries) => _$this._maxEntries = maxEntries;

  _i2.Int64? _version;
  _i2.Int64? get version => _$this._version;
  set version(_i2.Int64? version) => _$this._version = version;

  _i3.ListBuilder<Tag>? _tags;
  _i3.ListBuilder<Tag> get tags => _$this._tags ??= new _i3.ListBuilder<Tag>();
  set tags(_i3.ListBuilder<Tag>? tags) => _$this._tags = tags;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  ManagedPrefixListBuilder() {
    ManagedPrefixList._init(this);
  }

  ManagedPrefixListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _prefixListId = $v.prefixListId;
      _addressFamily = $v.addressFamily;
      _state = $v.state;
      _stateMessage = $v.stateMessage;
      _prefixListArn = $v.prefixListArn;
      _prefixListName = $v.prefixListName;
      _maxEntries = $v.maxEntries;
      _version = $v.version;
      _tags = $v.tags?.toBuilder();
      _ownerId = $v.ownerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ManagedPrefixList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ManagedPrefixList;
  }

  @override
  void update(void Function(ManagedPrefixListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ManagedPrefixList build() => _build();

  _$ManagedPrefixList _build() {
    _$ManagedPrefixList _$result;
    try {
      _$result = _$v ??
          new _$ManagedPrefixList._(
              prefixListId: prefixListId,
              addressFamily: addressFamily,
              state: state,
              stateMessage: stateMessage,
              prefixListArn: prefixListArn,
              prefixListName: prefixListName,
              maxEntries: BuiltValueNullFieldError.checkNotNull(
                  maxEntries, r'ManagedPrefixList', 'maxEntries'),
              version: BuiltValueNullFieldError.checkNotNull(
                  version, r'ManagedPrefixList', 'version'),
              tags: _tags?.build(),
              ownerId: ownerId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ManagedPrefixList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
