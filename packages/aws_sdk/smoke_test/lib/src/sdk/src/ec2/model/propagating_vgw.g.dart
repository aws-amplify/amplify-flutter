// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'propagating_vgw.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PropagatingVgw extends PropagatingVgw {
  @override
  final String? gatewayId;

  factory _$PropagatingVgw([void Function(PropagatingVgwBuilder)? updates]) =>
      (new PropagatingVgwBuilder()..update(updates))._build();

  _$PropagatingVgw._({this.gatewayId}) : super._();

  @override
  PropagatingVgw rebuild(void Function(PropagatingVgwBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PropagatingVgwBuilder toBuilder() =>
      new PropagatingVgwBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PropagatingVgw && gatewayId == other.gatewayId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, gatewayId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PropagatingVgwBuilder
    implements Builder<PropagatingVgw, PropagatingVgwBuilder> {
  _$PropagatingVgw? _$v;

  String? _gatewayId;
  String? get gatewayId => _$this._gatewayId;
  set gatewayId(String? gatewayId) => _$this._gatewayId = gatewayId;

  PropagatingVgwBuilder();

  PropagatingVgwBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _gatewayId = $v.gatewayId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PropagatingVgw other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PropagatingVgw;
  }

  @override
  void update(void Function(PropagatingVgwBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PropagatingVgw build() => _build();

  _$PropagatingVgw _build() {
    final _$result = _$v ?? new _$PropagatingVgw._(gatewayId: gatewayId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
