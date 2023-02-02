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
    var _$hash = 0;
    _$hash = $jc(_$hash, organizationConformancePackArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
