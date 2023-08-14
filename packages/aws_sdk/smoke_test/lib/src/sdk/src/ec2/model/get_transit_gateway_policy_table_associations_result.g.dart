// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_transit_gateway_policy_table_associations_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetTransitGatewayPolicyTableAssociationsResult
    extends GetTransitGatewayPolicyTableAssociationsResult {
  @override
  final _i2.BuiltList<TransitGatewayPolicyTableAssociation>? associations;
  @override
  final String? nextToken;

  factory _$GetTransitGatewayPolicyTableAssociationsResult(
          [void Function(GetTransitGatewayPolicyTableAssociationsResultBuilder)?
              updates]) =>
      (new GetTransitGatewayPolicyTableAssociationsResultBuilder()
            ..update(updates))
          ._build();

  _$GetTransitGatewayPolicyTableAssociationsResult._(
      {this.associations, this.nextToken})
      : super._();

  @override
  GetTransitGatewayPolicyTableAssociationsResult rebuild(
          void Function(GetTransitGatewayPolicyTableAssociationsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetTransitGatewayPolicyTableAssociationsResultBuilder toBuilder() =>
      new GetTransitGatewayPolicyTableAssociationsResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetTransitGatewayPolicyTableAssociationsResult &&
        associations == other.associations &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, associations.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetTransitGatewayPolicyTableAssociationsResultBuilder
    implements
        Builder<GetTransitGatewayPolicyTableAssociationsResult,
            GetTransitGatewayPolicyTableAssociationsResultBuilder> {
  _$GetTransitGatewayPolicyTableAssociationsResult? _$v;

  _i2.ListBuilder<TransitGatewayPolicyTableAssociation>? _associations;
  _i2.ListBuilder<TransitGatewayPolicyTableAssociation> get associations =>
      _$this._associations ??=
          new _i2.ListBuilder<TransitGatewayPolicyTableAssociation>();
  set associations(
          _i2.ListBuilder<TransitGatewayPolicyTableAssociation>?
              associations) =>
      _$this._associations = associations;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetTransitGatewayPolicyTableAssociationsResultBuilder();

  GetTransitGatewayPolicyTableAssociationsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _associations = $v.associations?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetTransitGatewayPolicyTableAssociationsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetTransitGatewayPolicyTableAssociationsResult;
  }

  @override
  void update(
      void Function(GetTransitGatewayPolicyTableAssociationsResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetTransitGatewayPolicyTableAssociationsResult build() => _build();

  _$GetTransitGatewayPolicyTableAssociationsResult _build() {
    _$GetTransitGatewayPolicyTableAssociationsResult _$result;
    try {
      _$result = _$v ??
          new _$GetTransitGatewayPolicyTableAssociationsResult._(
              associations: _associations?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'associations';
        _associations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetTransitGatewayPolicyTableAssociationsResult',
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
