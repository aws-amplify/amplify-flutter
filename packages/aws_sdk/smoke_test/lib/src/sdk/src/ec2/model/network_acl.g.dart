// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_acl.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NetworkAcl extends NetworkAcl {
  @override
  final _i2.BuiltList<NetworkAclAssociation>? associations;
  @override
  final _i2.BuiltList<NetworkAclEntry>? entries;
  @override
  final bool isDefault;
  @override
  final String? networkAclId;
  @override
  final _i2.BuiltList<Tag>? tags;
  @override
  final String? vpcId;
  @override
  final String? ownerId;

  factory _$NetworkAcl([void Function(NetworkAclBuilder)? updates]) =>
      (new NetworkAclBuilder()..update(updates))._build();

  _$NetworkAcl._(
      {this.associations,
      this.entries,
      required this.isDefault,
      this.networkAclId,
      this.tags,
      this.vpcId,
      this.ownerId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isDefault, r'NetworkAcl', 'isDefault');
  }

  @override
  NetworkAcl rebuild(void Function(NetworkAclBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NetworkAclBuilder toBuilder() => new NetworkAclBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NetworkAcl &&
        associations == other.associations &&
        entries == other.entries &&
        isDefault == other.isDefault &&
        networkAclId == other.networkAclId &&
        tags == other.tags &&
        vpcId == other.vpcId &&
        ownerId == other.ownerId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, associations.hashCode);
    _$hash = $jc(_$hash, entries.hashCode);
    _$hash = $jc(_$hash, isDefault.hashCode);
    _$hash = $jc(_$hash, networkAclId.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NetworkAclBuilder implements Builder<NetworkAcl, NetworkAclBuilder> {
  _$NetworkAcl? _$v;

  _i2.ListBuilder<NetworkAclAssociation>? _associations;
  _i2.ListBuilder<NetworkAclAssociation> get associations =>
      _$this._associations ??= new _i2.ListBuilder<NetworkAclAssociation>();
  set associations(_i2.ListBuilder<NetworkAclAssociation>? associations) =>
      _$this._associations = associations;

  _i2.ListBuilder<NetworkAclEntry>? _entries;
  _i2.ListBuilder<NetworkAclEntry> get entries =>
      _$this._entries ??= new _i2.ListBuilder<NetworkAclEntry>();
  set entries(_i2.ListBuilder<NetworkAclEntry>? entries) =>
      _$this._entries = entries;

  bool? _isDefault;
  bool? get isDefault => _$this._isDefault;
  set isDefault(bool? isDefault) => _$this._isDefault = isDefault;

  String? _networkAclId;
  String? get networkAclId => _$this._networkAclId;
  set networkAclId(String? networkAclId) => _$this._networkAclId = networkAclId;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  NetworkAclBuilder() {
    NetworkAcl._init(this);
  }

  NetworkAclBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _associations = $v.associations?.toBuilder();
      _entries = $v.entries?.toBuilder();
      _isDefault = $v.isDefault;
      _networkAclId = $v.networkAclId;
      _tags = $v.tags?.toBuilder();
      _vpcId = $v.vpcId;
      _ownerId = $v.ownerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NetworkAcl other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NetworkAcl;
  }

  @override
  void update(void Function(NetworkAclBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NetworkAcl build() => _build();

  _$NetworkAcl _build() {
    _$NetworkAcl _$result;
    try {
      _$result = _$v ??
          new _$NetworkAcl._(
              associations: _associations?.build(),
              entries: _entries?.build(),
              isDefault: BuiltValueNullFieldError.checkNotNull(
                  isDefault, r'NetworkAcl', 'isDefault'),
              networkAclId: networkAclId,
              tags: _tags?.build(),
              vpcId: vpcId,
              ownerId: ownerId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'associations';
        _associations?.build();
        _$failedField = 'entries';
        _entries?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NetworkAcl', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
