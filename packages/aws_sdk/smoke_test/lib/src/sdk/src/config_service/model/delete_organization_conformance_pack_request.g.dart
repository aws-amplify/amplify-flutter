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
    return $jf($jc(0, organizationConformancePackName.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
