// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.put_organization_config_rule_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutOrganizationConfigRuleResponse
    extends PutOrganizationConfigRuleResponse {
  @override
  final String? organizationConfigRuleArn;

  factory _$PutOrganizationConfigRuleResponse(
          [void Function(PutOrganizationConfigRuleResponseBuilder)? updates]) =>
      (new PutOrganizationConfigRuleResponseBuilder()..update(updates))
          ._build();

  _$PutOrganizationConfigRuleResponse._({this.organizationConfigRuleArn})
      : super._();

  @override
  PutOrganizationConfigRuleResponse rebuild(
          void Function(PutOrganizationConfigRuleResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutOrganizationConfigRuleResponseBuilder toBuilder() =>
      new PutOrganizationConfigRuleResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutOrganizationConfigRuleResponse &&
        organizationConfigRuleArn == other.organizationConfigRuleArn;
  }

  @override
  int get hashCode {
    return $jf($jc(0, organizationConfigRuleArn.hashCode));
  }
}

class PutOrganizationConfigRuleResponseBuilder
    implements
        Builder<PutOrganizationConfigRuleResponse,
            PutOrganizationConfigRuleResponseBuilder> {
  _$PutOrganizationConfigRuleResponse? _$v;

  String? _organizationConfigRuleArn;
  String? get organizationConfigRuleArn => _$this._organizationConfigRuleArn;
  set organizationConfigRuleArn(String? organizationConfigRuleArn) =>
      _$this._organizationConfigRuleArn = organizationConfigRuleArn;

  PutOrganizationConfigRuleResponseBuilder() {
    PutOrganizationConfigRuleResponse._init(this);
  }

  PutOrganizationConfigRuleResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _organizationConfigRuleArn = $v.organizationConfigRuleArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutOrganizationConfigRuleResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutOrganizationConfigRuleResponse;
  }

  @override
  void update(
      void Function(PutOrganizationConfigRuleResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutOrganizationConfigRuleResponse build() => _build();

  _$PutOrganizationConfigRuleResponse _build() {
    final _$result = _$v ??
        new _$PutOrganizationConfigRuleResponse._(
            organizationConfigRuleArn: organizationConfigRuleArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
