// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_gateway_virtual_interface_group.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LocalGatewayVirtualInterfaceGroup
    extends LocalGatewayVirtualInterfaceGroup {
  @override
  final String? localGatewayVirtualInterfaceGroupId;
  @override
  final _i2.BuiltList<String>? localGatewayVirtualInterfaceIds;
  @override
  final String? localGatewayId;
  @override
  final String? ownerId;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$LocalGatewayVirtualInterfaceGroup(
          [void Function(LocalGatewayVirtualInterfaceGroupBuilder)? updates]) =>
      (new LocalGatewayVirtualInterfaceGroupBuilder()..update(updates))
          ._build();

  _$LocalGatewayVirtualInterfaceGroup._(
      {this.localGatewayVirtualInterfaceGroupId,
      this.localGatewayVirtualInterfaceIds,
      this.localGatewayId,
      this.ownerId,
      this.tags})
      : super._();

  @override
  LocalGatewayVirtualInterfaceGroup rebuild(
          void Function(LocalGatewayVirtualInterfaceGroupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocalGatewayVirtualInterfaceGroupBuilder toBuilder() =>
      new LocalGatewayVirtualInterfaceGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocalGatewayVirtualInterfaceGroup &&
        localGatewayVirtualInterfaceGroupId ==
            other.localGatewayVirtualInterfaceGroupId &&
        localGatewayVirtualInterfaceIds ==
            other.localGatewayVirtualInterfaceIds &&
        localGatewayId == other.localGatewayId &&
        ownerId == other.ownerId &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, localGatewayVirtualInterfaceGroupId.hashCode);
    _$hash = $jc(_$hash, localGatewayVirtualInterfaceIds.hashCode);
    _$hash = $jc(_$hash, localGatewayId.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LocalGatewayVirtualInterfaceGroupBuilder
    implements
        Builder<LocalGatewayVirtualInterfaceGroup,
            LocalGatewayVirtualInterfaceGroupBuilder> {
  _$LocalGatewayVirtualInterfaceGroup? _$v;

  String? _localGatewayVirtualInterfaceGroupId;
  String? get localGatewayVirtualInterfaceGroupId =>
      _$this._localGatewayVirtualInterfaceGroupId;
  set localGatewayVirtualInterfaceGroupId(
          String? localGatewayVirtualInterfaceGroupId) =>
      _$this._localGatewayVirtualInterfaceGroupId =
          localGatewayVirtualInterfaceGroupId;

  _i2.ListBuilder<String>? _localGatewayVirtualInterfaceIds;
  _i2.ListBuilder<String> get localGatewayVirtualInterfaceIds =>
      _$this._localGatewayVirtualInterfaceIds ??= new _i2.ListBuilder<String>();
  set localGatewayVirtualInterfaceIds(
          _i2.ListBuilder<String>? localGatewayVirtualInterfaceIds) =>
      _$this._localGatewayVirtualInterfaceIds = localGatewayVirtualInterfaceIds;

  String? _localGatewayId;
  String? get localGatewayId => _$this._localGatewayId;
  set localGatewayId(String? localGatewayId) =>
      _$this._localGatewayId = localGatewayId;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  LocalGatewayVirtualInterfaceGroupBuilder();

  LocalGatewayVirtualInterfaceGroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _localGatewayVirtualInterfaceGroupId =
          $v.localGatewayVirtualInterfaceGroupId;
      _localGatewayVirtualInterfaceIds =
          $v.localGatewayVirtualInterfaceIds?.toBuilder();
      _localGatewayId = $v.localGatewayId;
      _ownerId = $v.ownerId;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocalGatewayVirtualInterfaceGroup other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LocalGatewayVirtualInterfaceGroup;
  }

  @override
  void update(
      void Function(LocalGatewayVirtualInterfaceGroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LocalGatewayVirtualInterfaceGroup build() => _build();

  _$LocalGatewayVirtualInterfaceGroup _build() {
    _$LocalGatewayVirtualInterfaceGroup _$result;
    try {
      _$result = _$v ??
          new _$LocalGatewayVirtualInterfaceGroup._(
              localGatewayVirtualInterfaceGroupId:
                  localGatewayVirtualInterfaceGroupId,
              localGatewayVirtualInterfaceIds:
                  _localGatewayVirtualInterfaceIds?.build(),
              localGatewayId: localGatewayId,
              ownerId: ownerId,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'localGatewayVirtualInterfaceIds';
        _localGatewayVirtualInterfaceIds?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LocalGatewayVirtualInterfaceGroup', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
