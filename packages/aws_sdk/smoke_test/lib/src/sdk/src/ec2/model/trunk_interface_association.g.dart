// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trunk_interface_association.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrunkInterfaceAssociation extends TrunkInterfaceAssociation {
  @override
  final String? associationId;
  @override
  final String? branchInterfaceId;
  @override
  final String? trunkInterfaceId;
  @override
  final InterfaceProtocolType? interfaceProtocol;
  @override
  final int vlanId;
  @override
  final int greKey;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$TrunkInterfaceAssociation(
          [void Function(TrunkInterfaceAssociationBuilder)? updates]) =>
      (new TrunkInterfaceAssociationBuilder()..update(updates))._build();

  _$TrunkInterfaceAssociation._(
      {this.associationId,
      this.branchInterfaceId,
      this.trunkInterfaceId,
      this.interfaceProtocol,
      required this.vlanId,
      required this.greKey,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vlanId, r'TrunkInterfaceAssociation', 'vlanId');
    BuiltValueNullFieldError.checkNotNull(
        greKey, r'TrunkInterfaceAssociation', 'greKey');
  }

  @override
  TrunkInterfaceAssociation rebuild(
          void Function(TrunkInterfaceAssociationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrunkInterfaceAssociationBuilder toBuilder() =>
      new TrunkInterfaceAssociationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrunkInterfaceAssociation &&
        associationId == other.associationId &&
        branchInterfaceId == other.branchInterfaceId &&
        trunkInterfaceId == other.trunkInterfaceId &&
        interfaceProtocol == other.interfaceProtocol &&
        vlanId == other.vlanId &&
        greKey == other.greKey &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, associationId.hashCode);
    _$hash = $jc(_$hash, branchInterfaceId.hashCode);
    _$hash = $jc(_$hash, trunkInterfaceId.hashCode);
    _$hash = $jc(_$hash, interfaceProtocol.hashCode);
    _$hash = $jc(_$hash, vlanId.hashCode);
    _$hash = $jc(_$hash, greKey.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TrunkInterfaceAssociationBuilder
    implements
        Builder<TrunkInterfaceAssociation, TrunkInterfaceAssociationBuilder> {
  _$TrunkInterfaceAssociation? _$v;

  String? _associationId;
  String? get associationId => _$this._associationId;
  set associationId(String? associationId) =>
      _$this._associationId = associationId;

  String? _branchInterfaceId;
  String? get branchInterfaceId => _$this._branchInterfaceId;
  set branchInterfaceId(String? branchInterfaceId) =>
      _$this._branchInterfaceId = branchInterfaceId;

  String? _trunkInterfaceId;
  String? get trunkInterfaceId => _$this._trunkInterfaceId;
  set trunkInterfaceId(String? trunkInterfaceId) =>
      _$this._trunkInterfaceId = trunkInterfaceId;

  InterfaceProtocolType? _interfaceProtocol;
  InterfaceProtocolType? get interfaceProtocol => _$this._interfaceProtocol;
  set interfaceProtocol(InterfaceProtocolType? interfaceProtocol) =>
      _$this._interfaceProtocol = interfaceProtocol;

  int? _vlanId;
  int? get vlanId => _$this._vlanId;
  set vlanId(int? vlanId) => _$this._vlanId = vlanId;

  int? _greKey;
  int? get greKey => _$this._greKey;
  set greKey(int? greKey) => _$this._greKey = greKey;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  TrunkInterfaceAssociationBuilder() {
    TrunkInterfaceAssociation._init(this);
  }

  TrunkInterfaceAssociationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _associationId = $v.associationId;
      _branchInterfaceId = $v.branchInterfaceId;
      _trunkInterfaceId = $v.trunkInterfaceId;
      _interfaceProtocol = $v.interfaceProtocol;
      _vlanId = $v.vlanId;
      _greKey = $v.greKey;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrunkInterfaceAssociation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrunkInterfaceAssociation;
  }

  @override
  void update(void Function(TrunkInterfaceAssociationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrunkInterfaceAssociation build() => _build();

  _$TrunkInterfaceAssociation _build() {
    _$TrunkInterfaceAssociation _$result;
    try {
      _$result = _$v ??
          new _$TrunkInterfaceAssociation._(
              associationId: associationId,
              branchInterfaceId: branchInterfaceId,
              trunkInterfaceId: trunkInterfaceId,
              interfaceProtocol: interfaceProtocol,
              vlanId: BuiltValueNullFieldError.checkNotNull(
                  vlanId, r'TrunkInterfaceAssociation', 'vlanId'),
              greKey: BuiltValueNullFieldError.checkNotNull(
                  greKey, r'TrunkInterfaceAssociation', 'greKey'),
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TrunkInterfaceAssociation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
