// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allowed_principal.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AllowedPrincipal extends AllowedPrincipal {
  @override
  final PrincipalType? principalType;
  @override
  final String? principal;
  @override
  final String? servicePermissionId;
  @override
  final _i2.BuiltList<Tag>? tags;
  @override
  final String? serviceId;

  factory _$AllowedPrincipal(
          [void Function(AllowedPrincipalBuilder)? updates]) =>
      (new AllowedPrincipalBuilder()..update(updates))._build();

  _$AllowedPrincipal._(
      {this.principalType,
      this.principal,
      this.servicePermissionId,
      this.tags,
      this.serviceId})
      : super._();

  @override
  AllowedPrincipal rebuild(void Function(AllowedPrincipalBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AllowedPrincipalBuilder toBuilder() =>
      new AllowedPrincipalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AllowedPrincipal &&
        principalType == other.principalType &&
        principal == other.principal &&
        servicePermissionId == other.servicePermissionId &&
        tags == other.tags &&
        serviceId == other.serviceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, principalType.hashCode);
    _$hash = $jc(_$hash, principal.hashCode);
    _$hash = $jc(_$hash, servicePermissionId.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, serviceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AllowedPrincipalBuilder
    implements Builder<AllowedPrincipal, AllowedPrincipalBuilder> {
  _$AllowedPrincipal? _$v;

  PrincipalType? _principalType;
  PrincipalType? get principalType => _$this._principalType;
  set principalType(PrincipalType? principalType) =>
      _$this._principalType = principalType;

  String? _principal;
  String? get principal => _$this._principal;
  set principal(String? principal) => _$this._principal = principal;

  String? _servicePermissionId;
  String? get servicePermissionId => _$this._servicePermissionId;
  set servicePermissionId(String? servicePermissionId) =>
      _$this._servicePermissionId = servicePermissionId;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  String? _serviceId;
  String? get serviceId => _$this._serviceId;
  set serviceId(String? serviceId) => _$this._serviceId = serviceId;

  AllowedPrincipalBuilder();

  AllowedPrincipalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _principalType = $v.principalType;
      _principal = $v.principal;
      _servicePermissionId = $v.servicePermissionId;
      _tags = $v.tags?.toBuilder();
      _serviceId = $v.serviceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AllowedPrincipal other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AllowedPrincipal;
  }

  @override
  void update(void Function(AllowedPrincipalBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AllowedPrincipal build() => _build();

  _$AllowedPrincipal _build() {
    _$AllowedPrincipal _$result;
    try {
      _$result = _$v ??
          new _$AllowedPrincipal._(
              principalType: principalType,
              principal: principal,
              servicePermissionId: servicePermissionId,
              tags: _tags?.build(),
              serviceId: serviceId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AllowedPrincipal', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
