// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipv6_cidr_association.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Ipv6CidrAssociation extends Ipv6CidrAssociation {
  @override
  final String? ipv6Cidr;
  @override
  final String? associatedResource;

  factory _$Ipv6CidrAssociation(
          [void Function(Ipv6CidrAssociationBuilder)? updates]) =>
      (new Ipv6CidrAssociationBuilder()..update(updates))._build();

  _$Ipv6CidrAssociation._({this.ipv6Cidr, this.associatedResource}) : super._();

  @override
  Ipv6CidrAssociation rebuild(
          void Function(Ipv6CidrAssociationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Ipv6CidrAssociationBuilder toBuilder() =>
      new Ipv6CidrAssociationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Ipv6CidrAssociation &&
        ipv6Cidr == other.ipv6Cidr &&
        associatedResource == other.associatedResource;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipv6Cidr.hashCode);
    _$hash = $jc(_$hash, associatedResource.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class Ipv6CidrAssociationBuilder
    implements Builder<Ipv6CidrAssociation, Ipv6CidrAssociationBuilder> {
  _$Ipv6CidrAssociation? _$v;

  String? _ipv6Cidr;
  String? get ipv6Cidr => _$this._ipv6Cidr;
  set ipv6Cidr(String? ipv6Cidr) => _$this._ipv6Cidr = ipv6Cidr;

  String? _associatedResource;
  String? get associatedResource => _$this._associatedResource;
  set associatedResource(String? associatedResource) =>
      _$this._associatedResource = associatedResource;

  Ipv6CidrAssociationBuilder();

  Ipv6CidrAssociationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipv6Cidr = $v.ipv6Cidr;
      _associatedResource = $v.associatedResource;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Ipv6CidrAssociation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Ipv6CidrAssociation;
  }

  @override
  void update(void Function(Ipv6CidrAssociationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Ipv6CidrAssociation build() => _build();

  _$Ipv6CidrAssociation _build() {
    final _$result = _$v ??
        new _$Ipv6CidrAssociation._(
            ipv6Cidr: ipv6Cidr, associatedResource: associatedResource);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
