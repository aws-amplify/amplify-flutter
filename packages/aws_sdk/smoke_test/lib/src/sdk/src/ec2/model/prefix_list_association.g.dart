// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prefix_list_association.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PrefixListAssociation extends PrefixListAssociation {
  @override
  final String? resourceId;
  @override
  final String? resourceOwner;

  factory _$PrefixListAssociation(
          [void Function(PrefixListAssociationBuilder)? updates]) =>
      (new PrefixListAssociationBuilder()..update(updates))._build();

  _$PrefixListAssociation._({this.resourceId, this.resourceOwner}) : super._();

  @override
  PrefixListAssociation rebuild(
          void Function(PrefixListAssociationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrefixListAssociationBuilder toBuilder() =>
      new PrefixListAssociationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrefixListAssociation &&
        resourceId == other.resourceId &&
        resourceOwner == other.resourceOwner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, resourceOwner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PrefixListAssociationBuilder
    implements Builder<PrefixListAssociation, PrefixListAssociationBuilder> {
  _$PrefixListAssociation? _$v;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _resourceOwner;
  String? get resourceOwner => _$this._resourceOwner;
  set resourceOwner(String? resourceOwner) =>
      _$this._resourceOwner = resourceOwner;

  PrefixListAssociationBuilder();

  PrefixListAssociationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceId = $v.resourceId;
      _resourceOwner = $v.resourceOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrefixListAssociation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PrefixListAssociation;
  }

  @override
  void update(void Function(PrefixListAssociationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrefixListAssociation build() => _build();

  _$PrefixListAssociation _build() {
    final _$result = _$v ??
        new _$PrefixListAssociation._(
            resourceId: resourceId, resourceOwner: resourceOwner);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
