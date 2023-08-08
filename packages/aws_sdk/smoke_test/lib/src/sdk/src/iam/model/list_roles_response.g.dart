// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_roles_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListRolesResponse extends ListRolesResponse {
  @override
  final _i3.BuiltList<_i2.Role> roles;
  @override
  final bool isTruncated;
  @override
  final String? marker;

  factory _$ListRolesResponse(
          [void Function(ListRolesResponseBuilder)? updates]) =>
      (new ListRolesResponseBuilder()..update(updates))._build();

  _$ListRolesResponse._(
      {required this.roles, required this.isTruncated, this.marker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(roles, r'ListRolesResponse', 'roles');
    BuiltValueNullFieldError.checkNotNull(
        isTruncated, r'ListRolesResponse', 'isTruncated');
  }

  @override
  ListRolesResponse rebuild(void Function(ListRolesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListRolesResponseBuilder toBuilder() =>
      new ListRolesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListRolesResponse &&
        roles == other.roles &&
        isTruncated == other.isTruncated &&
        marker == other.marker;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, roles.hashCode);
    _$hash = $jc(_$hash, isTruncated.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListRolesResponseBuilder
    implements Builder<ListRolesResponse, ListRolesResponseBuilder> {
  _$ListRolesResponse? _$v;

  _i3.ListBuilder<_i2.Role>? _roles;
  _i3.ListBuilder<_i2.Role> get roles =>
      _$this._roles ??= new _i3.ListBuilder<_i2.Role>();
  set roles(_i3.ListBuilder<_i2.Role>? roles) => _$this._roles = roles;

  bool? _isTruncated;
  bool? get isTruncated => _$this._isTruncated;
  set isTruncated(bool? isTruncated) => _$this._isTruncated = isTruncated;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  ListRolesResponseBuilder() {
    ListRolesResponse._init(this);
  }

  ListRolesResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _roles = $v.roles.toBuilder();
      _isTruncated = $v.isTruncated;
      _marker = $v.marker;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListRolesResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListRolesResponse;
  }

  @override
  void update(void Function(ListRolesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListRolesResponse build() => _build();

  _$ListRolesResponse _build() {
    _$ListRolesResponse _$result;
    try {
      _$result = _$v ??
          new _$ListRolesResponse._(
              roles: roles.build(),
              isTruncated: BuiltValueNullFieldError.checkNotNull(
                  isTruncated, r'ListRolesResponse', 'isTruncated'),
              marker: marker);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'roles';
        roles.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListRolesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
