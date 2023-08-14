// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_trunk_interface_associations_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeTrunkInterfaceAssociationsResult
    extends DescribeTrunkInterfaceAssociationsResult {
  @override
  final _i2.BuiltList<TrunkInterfaceAssociation>? interfaceAssociations;
  @override
  final String? nextToken;

  factory _$DescribeTrunkInterfaceAssociationsResult(
          [void Function(DescribeTrunkInterfaceAssociationsResultBuilder)?
              updates]) =>
      (new DescribeTrunkInterfaceAssociationsResultBuilder()..update(updates))
          ._build();

  _$DescribeTrunkInterfaceAssociationsResult._(
      {this.interfaceAssociations, this.nextToken})
      : super._();

  @override
  DescribeTrunkInterfaceAssociationsResult rebuild(
          void Function(DescribeTrunkInterfaceAssociationsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeTrunkInterfaceAssociationsResultBuilder toBuilder() =>
      new DescribeTrunkInterfaceAssociationsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeTrunkInterfaceAssociationsResult &&
        interfaceAssociations == other.interfaceAssociations &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, interfaceAssociations.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeTrunkInterfaceAssociationsResultBuilder
    implements
        Builder<DescribeTrunkInterfaceAssociationsResult,
            DescribeTrunkInterfaceAssociationsResultBuilder> {
  _$DescribeTrunkInterfaceAssociationsResult? _$v;

  _i2.ListBuilder<TrunkInterfaceAssociation>? _interfaceAssociations;
  _i2.ListBuilder<TrunkInterfaceAssociation> get interfaceAssociations =>
      _$this._interfaceAssociations ??=
          new _i2.ListBuilder<TrunkInterfaceAssociation>();
  set interfaceAssociations(
          _i2.ListBuilder<TrunkInterfaceAssociation>? interfaceAssociations) =>
      _$this._interfaceAssociations = interfaceAssociations;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeTrunkInterfaceAssociationsResultBuilder();

  DescribeTrunkInterfaceAssociationsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _interfaceAssociations = $v.interfaceAssociations?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeTrunkInterfaceAssociationsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeTrunkInterfaceAssociationsResult;
  }

  @override
  void update(
      void Function(DescribeTrunkInterfaceAssociationsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeTrunkInterfaceAssociationsResult build() => _build();

  _$DescribeTrunkInterfaceAssociationsResult _build() {
    _$DescribeTrunkInterfaceAssociationsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeTrunkInterfaceAssociationsResult._(
              interfaceAssociations: _interfaceAssociations?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'interfaceAssociations';
        _interfaceAssociations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeTrunkInterfaceAssociationsResult',
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
