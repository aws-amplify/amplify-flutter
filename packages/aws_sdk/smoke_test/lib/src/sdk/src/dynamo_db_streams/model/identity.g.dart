// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db_streams.model.identity;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Identity extends Identity {
  @override
  final String? principalId;
  @override
  final String? type;

  factory _$Identity([void Function(IdentityBuilder)? updates]) =>
      (new IdentityBuilder()..update(updates))._build();

  _$Identity._({this.principalId, this.type}) : super._();

  @override
  Identity rebuild(void Function(IdentityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IdentityBuilder toBuilder() => new IdentityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Identity &&
        principalId == other.principalId &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, principalId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class IdentityBuilder implements Builder<Identity, IdentityBuilder> {
  _$Identity? _$v;

  String? _principalId;
  String? get principalId => _$this._principalId;
  set principalId(String? principalId) => _$this._principalId = principalId;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  IdentityBuilder() {
    Identity._init(this);
  }

  IdentityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _principalId = $v.principalId;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Identity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Identity;
  }

  @override
  void update(void Function(IdentityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Identity build() => _build();

  _$Identity _build() {
    final _$result =
        _$v ?? new _$Identity._(principalId: principalId, type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
