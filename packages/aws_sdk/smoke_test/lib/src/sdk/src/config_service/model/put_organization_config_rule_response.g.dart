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
    var _$hash = 0;
    _$hash = $jc(_$hash, organizationConfigRuleArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
