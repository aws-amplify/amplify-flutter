// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subnet_association.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SubnetAssociation extends SubnetAssociation {
  @override
  final String? subnetId;
  @override
  final TransitGatewayMulitcastDomainAssociationState? state;

  factory _$SubnetAssociation(
          [void Function(SubnetAssociationBuilder)? updates]) =>
      (new SubnetAssociationBuilder()..update(updates))._build();

  _$SubnetAssociation._({this.subnetId, this.state}) : super._();

  @override
  SubnetAssociation rebuild(void Function(SubnetAssociationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubnetAssociationBuilder toBuilder() =>
      new SubnetAssociationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubnetAssociation &&
        subnetId == other.subnetId &&
        state == other.state;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, subnetId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SubnetAssociationBuilder
    implements Builder<SubnetAssociation, SubnetAssociationBuilder> {
  _$SubnetAssociation? _$v;

  String? _subnetId;
  String? get subnetId => _$this._subnetId;
  set subnetId(String? subnetId) => _$this._subnetId = subnetId;

  TransitGatewayMulitcastDomainAssociationState? _state;
  TransitGatewayMulitcastDomainAssociationState? get state => _$this._state;
  set state(TransitGatewayMulitcastDomainAssociationState? state) =>
      _$this._state = state;

  SubnetAssociationBuilder();

  SubnetAssociationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subnetId = $v.subnetId;
      _state = $v.state;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubnetAssociation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SubnetAssociation;
  }

  @override
  void update(void Function(SubnetAssociationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubnetAssociation build() => _build();

  _$SubnetAssociation _build() {
    final _$result =
        _$v ?? new _$SubnetAssociation._(subnetId: subnetId, state: state);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
