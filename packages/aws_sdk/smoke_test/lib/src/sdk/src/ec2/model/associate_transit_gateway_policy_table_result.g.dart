// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'associate_transit_gateway_policy_table_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssociateTransitGatewayPolicyTableResult
    extends AssociateTransitGatewayPolicyTableResult {
  @override
  final TransitGatewayPolicyTableAssociation? association;

  factory _$AssociateTransitGatewayPolicyTableResult(
          [void Function(AssociateTransitGatewayPolicyTableResultBuilder)?
              updates]) =>
      (new AssociateTransitGatewayPolicyTableResultBuilder()..update(updates))
          ._build();

  _$AssociateTransitGatewayPolicyTableResult._({this.association}) : super._();

  @override
  AssociateTransitGatewayPolicyTableResult rebuild(
          void Function(AssociateTransitGatewayPolicyTableResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssociateTransitGatewayPolicyTableResultBuilder toBuilder() =>
      new AssociateTransitGatewayPolicyTableResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssociateTransitGatewayPolicyTableResult &&
        association == other.association;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, association.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AssociateTransitGatewayPolicyTableResultBuilder
    implements
        Builder<AssociateTransitGatewayPolicyTableResult,
            AssociateTransitGatewayPolicyTableResultBuilder> {
  _$AssociateTransitGatewayPolicyTableResult? _$v;

  TransitGatewayPolicyTableAssociationBuilder? _association;
  TransitGatewayPolicyTableAssociationBuilder get association =>
      _$this._association ??= new TransitGatewayPolicyTableAssociationBuilder();
  set association(TransitGatewayPolicyTableAssociationBuilder? association) =>
      _$this._association = association;

  AssociateTransitGatewayPolicyTableResultBuilder();

  AssociateTransitGatewayPolicyTableResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _association = $v.association?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssociateTransitGatewayPolicyTableResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssociateTransitGatewayPolicyTableResult;
  }

  @override
  void update(
      void Function(AssociateTransitGatewayPolicyTableResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssociateTransitGatewayPolicyTableResult build() => _build();

  _$AssociateTransitGatewayPolicyTableResult _build() {
    _$AssociateTransitGatewayPolicyTableResult _$result;
    try {
      _$result = _$v ??
          new _$AssociateTransitGatewayPolicyTableResult._(
              association: _association?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'association';
        _association?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AssociateTransitGatewayPolicyTableResult',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
