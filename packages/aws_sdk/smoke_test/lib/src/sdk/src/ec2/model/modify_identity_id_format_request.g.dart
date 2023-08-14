// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_identity_id_format_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyIdentityIdFormatRequest extends ModifyIdentityIdFormatRequest {
  @override
  final String? principalArn;
  @override
  final String? resource;
  @override
  final bool useLongIds;

  factory _$ModifyIdentityIdFormatRequest(
          [void Function(ModifyIdentityIdFormatRequestBuilder)? updates]) =>
      (new ModifyIdentityIdFormatRequestBuilder()..update(updates))._build();

  _$ModifyIdentityIdFormatRequest._(
      {this.principalArn, this.resource, required this.useLongIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        useLongIds, r'ModifyIdentityIdFormatRequest', 'useLongIds');
  }

  @override
  ModifyIdentityIdFormatRequest rebuild(
          void Function(ModifyIdentityIdFormatRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyIdentityIdFormatRequestBuilder toBuilder() =>
      new ModifyIdentityIdFormatRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyIdentityIdFormatRequest &&
        principalArn == other.principalArn &&
        resource == other.resource &&
        useLongIds == other.useLongIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, principalArn.hashCode);
    _$hash = $jc(_$hash, resource.hashCode);
    _$hash = $jc(_$hash, useLongIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyIdentityIdFormatRequestBuilder
    implements
        Builder<ModifyIdentityIdFormatRequest,
            ModifyIdentityIdFormatRequestBuilder> {
  _$ModifyIdentityIdFormatRequest? _$v;

  String? _principalArn;
  String? get principalArn => _$this._principalArn;
  set principalArn(String? principalArn) => _$this._principalArn = principalArn;

  String? _resource;
  String? get resource => _$this._resource;
  set resource(String? resource) => _$this._resource = resource;

  bool? _useLongIds;
  bool? get useLongIds => _$this._useLongIds;
  set useLongIds(bool? useLongIds) => _$this._useLongIds = useLongIds;

  ModifyIdentityIdFormatRequestBuilder() {
    ModifyIdentityIdFormatRequest._init(this);
  }

  ModifyIdentityIdFormatRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _principalArn = $v.principalArn;
      _resource = $v.resource;
      _useLongIds = $v.useLongIds;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyIdentityIdFormatRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyIdentityIdFormatRequest;
  }

  @override
  void update(void Function(ModifyIdentityIdFormatRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyIdentityIdFormatRequest build() => _build();

  _$ModifyIdentityIdFormatRequest _build() {
    final _$result = _$v ??
        new _$ModifyIdentityIdFormatRequest._(
            principalArn: principalArn,
            resource: resource,
            useLongIds: BuiltValueNullFieldError.checkNotNull(
                useLongIds, r'ModifyIdentityIdFormatRequest', 'useLongIds'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
