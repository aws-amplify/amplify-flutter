// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.organizations_decision_detail;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrganizationsDecisionDetail extends OrganizationsDecisionDetail {
  @override
  final bool? allowedByOrganizations;

  factory _$OrganizationsDecisionDetail(
          [void Function(OrganizationsDecisionDetailBuilder)? updates]) =>
      (new OrganizationsDecisionDetailBuilder()..update(updates))._build();

  _$OrganizationsDecisionDetail._({this.allowedByOrganizations}) : super._();

  @override
  OrganizationsDecisionDetail rebuild(
          void Function(OrganizationsDecisionDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganizationsDecisionDetailBuilder toBuilder() =>
      new OrganizationsDecisionDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganizationsDecisionDetail &&
        allowedByOrganizations == other.allowedByOrganizations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allowedByOrganizations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class OrganizationsDecisionDetailBuilder
    implements
        Builder<OrganizationsDecisionDetail,
            OrganizationsDecisionDetailBuilder> {
  _$OrganizationsDecisionDetail? _$v;

  bool? _allowedByOrganizations;
  bool? get allowedByOrganizations => _$this._allowedByOrganizations;
  set allowedByOrganizations(bool? allowedByOrganizations) =>
      _$this._allowedByOrganizations = allowedByOrganizations;

  OrganizationsDecisionDetailBuilder() {
    OrganizationsDecisionDetail._init(this);
  }

  OrganizationsDecisionDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allowedByOrganizations = $v.allowedByOrganizations;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganizationsDecisionDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrganizationsDecisionDetail;
  }

  @override
  void update(void Function(OrganizationsDecisionDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrganizationsDecisionDetail build() => _build();

  _$OrganizationsDecisionDetail _build() {
    final _$result = _$v ??
        new _$OrganizationsDecisionDetail._(
            allowedByOrganizations: allowedByOrganizations);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
