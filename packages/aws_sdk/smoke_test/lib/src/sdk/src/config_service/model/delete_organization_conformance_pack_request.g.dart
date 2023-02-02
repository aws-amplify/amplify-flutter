// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.delete_organization_conformance_pack_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteOrganizationConformancePackRequest
    extends DeleteOrganizationConformancePackRequest {
  @override
  final String organizationConformancePackName;

  factory _$DeleteOrganizationConformancePackRequest(
          [void Function(DeleteOrganizationConformancePackRequestBuilder)?
              updates]) =>
      (new DeleteOrganizationConformancePackRequestBuilder()..update(updates))
          ._build();

  _$DeleteOrganizationConformancePackRequest._(
      {required this.organizationConformancePackName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        organizationConformancePackName,
        r'DeleteOrganizationConformancePackRequest',
        'organizationConformancePackName');
  }

  @override
  DeleteOrganizationConformancePackRequest rebuild(
          void Function(DeleteOrganizationConformancePackRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteOrganizationConformancePackRequestBuilder toBuilder() =>
      new DeleteOrganizationConformancePackRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteOrganizationConformancePackRequest &&
        organizationConformancePackName ==
            other.organizationConformancePackName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, organizationConformancePackName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteOrganizationConformancePackRequestBuilder
    implements
        Builder<DeleteOrganizationConformancePackRequest,
            DeleteOrganizationConformancePackRequestBuilder> {
  _$DeleteOrganizationConformancePackRequest? _$v;

  String? _organizationConformancePackName;
  String? get organizationConformancePackName =>
      _$this._organizationConformancePackName;
  set organizationConformancePackName(
          String? organizationConformancePackName) =>
      _$this._organizationConformancePackName = organizationConformancePackName;

  DeleteOrganizationConformancePackRequestBuilder() {
    DeleteOrganizationConformancePackRequest._init(this);
  }

  DeleteOrganizationConformancePackRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _organizationConformancePackName = $v.organizationConformancePackName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteOrganizationConformancePackRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteOrganizationConformancePackRequest;
  }

  @override
  void update(
      void Function(DeleteOrganizationConformancePackRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteOrganizationConformancePackRequest build() => _build();

  _$DeleteOrganizationConformancePackRequest _build() {
    final _$result = _$v ??
        new _$DeleteOrganizationConformancePackRequest._(
            organizationConformancePackName:
                BuiltValueNullFieldError.checkNotNull(
                    organizationConformancePackName,
                    r'DeleteOrganizationConformancePackRequest',
                    'organizationConformancePackName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
