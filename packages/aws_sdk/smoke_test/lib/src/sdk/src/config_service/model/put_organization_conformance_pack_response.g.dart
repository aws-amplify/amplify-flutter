// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.put_organization_conformance_pack_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutOrganizationConformancePackResponse
    extends PutOrganizationConformancePackResponse {
  @override
  final String? organizationConformancePackArn;

  factory _$PutOrganizationConformancePackResponse(
          [void Function(PutOrganizationConformancePackResponseBuilder)?
              updates]) =>
      (new PutOrganizationConformancePackResponseBuilder()..update(updates))
          ._build();

  _$PutOrganizationConformancePackResponse._(
      {this.organizationConformancePackArn})
      : super._();

  @override
  PutOrganizationConformancePackResponse rebuild(
          void Function(PutOrganizationConformancePackResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutOrganizationConformancePackResponseBuilder toBuilder() =>
      new PutOrganizationConformancePackResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutOrganizationConformancePackResponse &&
        organizationConformancePackArn == other.organizationConformancePackArn;
  }

  @override
  int get hashCode {
    return $jf($jc(0, organizationConformancePackArn.hashCode));
  }
}

class PutOrganizationConformancePackResponseBuilder
    implements
        Builder<PutOrganizationConformancePackResponse,
            PutOrganizationConformancePackResponseBuilder> {
  _$PutOrganizationConformancePackResponse? _$v;

  String? _organizationConformancePackArn;
  String? get organizationConformancePackArn =>
      _$this._organizationConformancePackArn;
  set organizationConformancePackArn(String? organizationConformancePackArn) =>
      _$this._organizationConformancePackArn = organizationConformancePackArn;

  PutOrganizationConformancePackResponseBuilder() {
    PutOrganizationConformancePackResponse._init(this);
  }

  PutOrganizationConformancePackResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _organizationConformancePackArn = $v.organizationConformancePackArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutOrganizationConformancePackResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutOrganizationConformancePackResponse;
  }

  @override
  void update(
      void Function(PutOrganizationConformancePackResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutOrganizationConformancePackResponse build() => _build();

  _$PutOrganizationConformancePackResponse _build() {
    final _$result = _$v ??
        new _$PutOrganizationConformancePackResponse._(
            organizationConformancePackArn: organizationConformancePackArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
