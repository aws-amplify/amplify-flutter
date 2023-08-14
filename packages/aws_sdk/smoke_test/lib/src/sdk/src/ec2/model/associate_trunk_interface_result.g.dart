// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'associate_trunk_interface_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssociateTrunkInterfaceResult extends AssociateTrunkInterfaceResult {
  @override
  final TrunkInterfaceAssociation? interfaceAssociation;
  @override
  final String? clientToken;

  factory _$AssociateTrunkInterfaceResult(
          [void Function(AssociateTrunkInterfaceResultBuilder)? updates]) =>
      (new AssociateTrunkInterfaceResultBuilder()..update(updates))._build();

  _$AssociateTrunkInterfaceResult._(
      {this.interfaceAssociation, this.clientToken})
      : super._();

  @override
  AssociateTrunkInterfaceResult rebuild(
          void Function(AssociateTrunkInterfaceResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssociateTrunkInterfaceResultBuilder toBuilder() =>
      new AssociateTrunkInterfaceResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssociateTrunkInterfaceResult &&
        interfaceAssociation == other.interfaceAssociation &&
        clientToken == other.clientToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, interfaceAssociation.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AssociateTrunkInterfaceResultBuilder
    implements
        Builder<AssociateTrunkInterfaceResult,
            AssociateTrunkInterfaceResultBuilder> {
  _$AssociateTrunkInterfaceResult? _$v;

  TrunkInterfaceAssociationBuilder? _interfaceAssociation;
  TrunkInterfaceAssociationBuilder get interfaceAssociation =>
      _$this._interfaceAssociation ??= new TrunkInterfaceAssociationBuilder();
  set interfaceAssociation(
          TrunkInterfaceAssociationBuilder? interfaceAssociation) =>
      _$this._interfaceAssociation = interfaceAssociation;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  AssociateTrunkInterfaceResultBuilder();

  AssociateTrunkInterfaceResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _interfaceAssociation = $v.interfaceAssociation?.toBuilder();
      _clientToken = $v.clientToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssociateTrunkInterfaceResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssociateTrunkInterfaceResult;
  }

  @override
  void update(void Function(AssociateTrunkInterfaceResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssociateTrunkInterfaceResult build() => _build();

  _$AssociateTrunkInterfaceResult _build() {
    _$AssociateTrunkInterfaceResult _$result;
    try {
      _$result = _$v ??
          new _$AssociateTrunkInterfaceResult._(
              interfaceAssociation: _interfaceAssociation?.build(),
              clientToken: clientToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'interfaceAssociation';
        _interfaceAssociation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AssociateTrunkInterfaceResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
