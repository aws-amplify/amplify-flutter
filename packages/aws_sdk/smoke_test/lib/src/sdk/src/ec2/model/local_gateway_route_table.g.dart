// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_gateway_route_table.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LocalGatewayRouteTable extends LocalGatewayRouteTable {
  @override
  final String? localGatewayRouteTableId;
  @override
  final String? localGatewayRouteTableArn;
  @override
  final String? localGatewayId;
  @override
  final String? outpostArn;
  @override
  final String? ownerId;
  @override
  final String? state;
  @override
  final _i2.BuiltList<Tag>? tags;
  @override
  final LocalGatewayRouteTableMode? mode;
  @override
  final StateReason? stateReason;

  factory _$LocalGatewayRouteTable(
          [void Function(LocalGatewayRouteTableBuilder)? updates]) =>
      (new LocalGatewayRouteTableBuilder()..update(updates))._build();

  _$LocalGatewayRouteTable._(
      {this.localGatewayRouteTableId,
      this.localGatewayRouteTableArn,
      this.localGatewayId,
      this.outpostArn,
      this.ownerId,
      this.state,
      this.tags,
      this.mode,
      this.stateReason})
      : super._();

  @override
  LocalGatewayRouteTable rebuild(
          void Function(LocalGatewayRouteTableBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocalGatewayRouteTableBuilder toBuilder() =>
      new LocalGatewayRouteTableBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocalGatewayRouteTable &&
        localGatewayRouteTableId == other.localGatewayRouteTableId &&
        localGatewayRouteTableArn == other.localGatewayRouteTableArn &&
        localGatewayId == other.localGatewayId &&
        outpostArn == other.outpostArn &&
        ownerId == other.ownerId &&
        state == other.state &&
        tags == other.tags &&
        mode == other.mode &&
        stateReason == other.stateReason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, localGatewayRouteTableId.hashCode);
    _$hash = $jc(_$hash, localGatewayRouteTableArn.hashCode);
    _$hash = $jc(_$hash, localGatewayId.hashCode);
    _$hash = $jc(_$hash, outpostArn.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, stateReason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LocalGatewayRouteTableBuilder
    implements Builder<LocalGatewayRouteTable, LocalGatewayRouteTableBuilder> {
  _$LocalGatewayRouteTable? _$v;

  String? _localGatewayRouteTableId;
  String? get localGatewayRouteTableId => _$this._localGatewayRouteTableId;
  set localGatewayRouteTableId(String? localGatewayRouteTableId) =>
      _$this._localGatewayRouteTableId = localGatewayRouteTableId;

  String? _localGatewayRouteTableArn;
  String? get localGatewayRouteTableArn => _$this._localGatewayRouteTableArn;
  set localGatewayRouteTableArn(String? localGatewayRouteTableArn) =>
      _$this._localGatewayRouteTableArn = localGatewayRouteTableArn;

  String? _localGatewayId;
  String? get localGatewayId => _$this._localGatewayId;
  set localGatewayId(String? localGatewayId) =>
      _$this._localGatewayId = localGatewayId;

  String? _outpostArn;
  String? get outpostArn => _$this._outpostArn;
  set outpostArn(String? outpostArn) => _$this._outpostArn = outpostArn;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  LocalGatewayRouteTableMode? _mode;
  LocalGatewayRouteTableMode? get mode => _$this._mode;
  set mode(LocalGatewayRouteTableMode? mode) => _$this._mode = mode;

  StateReasonBuilder? _stateReason;
  StateReasonBuilder get stateReason =>
      _$this._stateReason ??= new StateReasonBuilder();
  set stateReason(StateReasonBuilder? stateReason) =>
      _$this._stateReason = stateReason;

  LocalGatewayRouteTableBuilder();

  LocalGatewayRouteTableBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _localGatewayRouteTableId = $v.localGatewayRouteTableId;
      _localGatewayRouteTableArn = $v.localGatewayRouteTableArn;
      _localGatewayId = $v.localGatewayId;
      _outpostArn = $v.outpostArn;
      _ownerId = $v.ownerId;
      _state = $v.state;
      _tags = $v.tags?.toBuilder();
      _mode = $v.mode;
      _stateReason = $v.stateReason?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocalGatewayRouteTable other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LocalGatewayRouteTable;
  }

  @override
  void update(void Function(LocalGatewayRouteTableBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LocalGatewayRouteTable build() => _build();

  _$LocalGatewayRouteTable _build() {
    _$LocalGatewayRouteTable _$result;
    try {
      _$result = _$v ??
          new _$LocalGatewayRouteTable._(
              localGatewayRouteTableId: localGatewayRouteTableId,
              localGatewayRouteTableArn: localGatewayRouteTableArn,
              localGatewayId: localGatewayId,
              outpostArn: outpostArn,
              ownerId: ownerId,
              state: state,
              tags: _tags?.build(),
              mode: mode,
              stateReason: _stateReason?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();

        _$failedField = 'stateReason';
        _stateReason?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LocalGatewayRouteTable', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
