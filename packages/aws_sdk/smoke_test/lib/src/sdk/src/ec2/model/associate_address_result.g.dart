// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'associate_address_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssociateAddressResult extends AssociateAddressResult {
  @override
  final String? associationId;

  factory _$AssociateAddressResult(
          [void Function(AssociateAddressResultBuilder)? updates]) =>
      (new AssociateAddressResultBuilder()..update(updates))._build();

  _$AssociateAddressResult._({this.associationId}) : super._();

  @override
  AssociateAddressResult rebuild(
          void Function(AssociateAddressResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssociateAddressResultBuilder toBuilder() =>
      new AssociateAddressResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssociateAddressResult &&
        associationId == other.associationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, associationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AssociateAddressResultBuilder
    implements Builder<AssociateAddressResult, AssociateAddressResultBuilder> {
  _$AssociateAddressResult? _$v;

  String? _associationId;
  String? get associationId => _$this._associationId;
  set associationId(String? associationId) =>
      _$this._associationId = associationId;

  AssociateAddressResultBuilder();

  AssociateAddressResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _associationId = $v.associationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssociateAddressResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssociateAddressResult;
  }

  @override
  void update(void Function(AssociateAddressResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssociateAddressResult build() => _build();

  _$AssociateAddressResult _build() {
    final _$result =
        _$v ?? new _$AssociateAddressResult._(associationId: associationId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
