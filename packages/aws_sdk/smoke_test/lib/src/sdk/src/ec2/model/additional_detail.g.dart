// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'additional_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdditionalDetail extends AdditionalDetail {
  @override
  final String? additionalDetailType;
  @override
  final AnalysisComponent? component;
  @override
  final AnalysisComponent? vpcEndpointService;
  @override
  final _i2.BuiltList<RuleOption>? ruleOptions;
  @override
  final _i2.BuiltList<RuleGroupTypePair>? ruleGroupTypePairs;
  @override
  final _i2.BuiltList<RuleGroupRuleOptionsPair>? ruleGroupRuleOptionsPairs;
  @override
  final String? serviceName;
  @override
  final _i2.BuiltList<AnalysisComponent>? loadBalancers;

  factory _$AdditionalDetail(
          [void Function(AdditionalDetailBuilder)? updates]) =>
      (new AdditionalDetailBuilder()..update(updates))._build();

  _$AdditionalDetail._(
      {this.additionalDetailType,
      this.component,
      this.vpcEndpointService,
      this.ruleOptions,
      this.ruleGroupTypePairs,
      this.ruleGroupRuleOptionsPairs,
      this.serviceName,
      this.loadBalancers})
      : super._();

  @override
  AdditionalDetail rebuild(void Function(AdditionalDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdditionalDetailBuilder toBuilder() =>
      new AdditionalDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdditionalDetail &&
        additionalDetailType == other.additionalDetailType &&
        component == other.component &&
        vpcEndpointService == other.vpcEndpointService &&
        ruleOptions == other.ruleOptions &&
        ruleGroupTypePairs == other.ruleGroupTypePairs &&
        ruleGroupRuleOptionsPairs == other.ruleGroupRuleOptionsPairs &&
        serviceName == other.serviceName &&
        loadBalancers == other.loadBalancers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, additionalDetailType.hashCode);
    _$hash = $jc(_$hash, component.hashCode);
    _$hash = $jc(_$hash, vpcEndpointService.hashCode);
    _$hash = $jc(_$hash, ruleOptions.hashCode);
    _$hash = $jc(_$hash, ruleGroupTypePairs.hashCode);
    _$hash = $jc(_$hash, ruleGroupRuleOptionsPairs.hashCode);
    _$hash = $jc(_$hash, serviceName.hashCode);
    _$hash = $jc(_$hash, loadBalancers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AdditionalDetailBuilder
    implements Builder<AdditionalDetail, AdditionalDetailBuilder> {
  _$AdditionalDetail? _$v;

  String? _additionalDetailType;
  String? get additionalDetailType => _$this._additionalDetailType;
  set additionalDetailType(String? additionalDetailType) =>
      _$this._additionalDetailType = additionalDetailType;

  AnalysisComponentBuilder? _component;
  AnalysisComponentBuilder get component =>
      _$this._component ??= new AnalysisComponentBuilder();
  set component(AnalysisComponentBuilder? component) =>
      _$this._component = component;

  AnalysisComponentBuilder? _vpcEndpointService;
  AnalysisComponentBuilder get vpcEndpointService =>
      _$this._vpcEndpointService ??= new AnalysisComponentBuilder();
  set vpcEndpointService(AnalysisComponentBuilder? vpcEndpointService) =>
      _$this._vpcEndpointService = vpcEndpointService;

  _i2.ListBuilder<RuleOption>? _ruleOptions;
  _i2.ListBuilder<RuleOption> get ruleOptions =>
      _$this._ruleOptions ??= new _i2.ListBuilder<RuleOption>();
  set ruleOptions(_i2.ListBuilder<RuleOption>? ruleOptions) =>
      _$this._ruleOptions = ruleOptions;

  _i2.ListBuilder<RuleGroupTypePair>? _ruleGroupTypePairs;
  _i2.ListBuilder<RuleGroupTypePair> get ruleGroupTypePairs =>
      _$this._ruleGroupTypePairs ??= new _i2.ListBuilder<RuleGroupTypePair>();
  set ruleGroupTypePairs(
          _i2.ListBuilder<RuleGroupTypePair>? ruleGroupTypePairs) =>
      _$this._ruleGroupTypePairs = ruleGroupTypePairs;

  _i2.ListBuilder<RuleGroupRuleOptionsPair>? _ruleGroupRuleOptionsPairs;
  _i2.ListBuilder<RuleGroupRuleOptionsPair> get ruleGroupRuleOptionsPairs =>
      _$this._ruleGroupRuleOptionsPairs ??=
          new _i2.ListBuilder<RuleGroupRuleOptionsPair>();
  set ruleGroupRuleOptionsPairs(
          _i2.ListBuilder<RuleGroupRuleOptionsPair>?
              ruleGroupRuleOptionsPairs) =>
      _$this._ruleGroupRuleOptionsPairs = ruleGroupRuleOptionsPairs;

  String? _serviceName;
  String? get serviceName => _$this._serviceName;
  set serviceName(String? serviceName) => _$this._serviceName = serviceName;

  _i2.ListBuilder<AnalysisComponent>? _loadBalancers;
  _i2.ListBuilder<AnalysisComponent> get loadBalancers =>
      _$this._loadBalancers ??= new _i2.ListBuilder<AnalysisComponent>();
  set loadBalancers(_i2.ListBuilder<AnalysisComponent>? loadBalancers) =>
      _$this._loadBalancers = loadBalancers;

  AdditionalDetailBuilder();

  AdditionalDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _additionalDetailType = $v.additionalDetailType;
      _component = $v.component?.toBuilder();
      _vpcEndpointService = $v.vpcEndpointService?.toBuilder();
      _ruleOptions = $v.ruleOptions?.toBuilder();
      _ruleGroupTypePairs = $v.ruleGroupTypePairs?.toBuilder();
      _ruleGroupRuleOptionsPairs = $v.ruleGroupRuleOptionsPairs?.toBuilder();
      _serviceName = $v.serviceName;
      _loadBalancers = $v.loadBalancers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdditionalDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AdditionalDetail;
  }

  @override
  void update(void Function(AdditionalDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdditionalDetail build() => _build();

  _$AdditionalDetail _build() {
    _$AdditionalDetail _$result;
    try {
      _$result = _$v ??
          new _$AdditionalDetail._(
              additionalDetailType: additionalDetailType,
              component: _component?.build(),
              vpcEndpointService: _vpcEndpointService?.build(),
              ruleOptions: _ruleOptions?.build(),
              ruleGroupTypePairs: _ruleGroupTypePairs?.build(),
              ruleGroupRuleOptionsPairs: _ruleGroupRuleOptionsPairs?.build(),
              serviceName: serviceName,
              loadBalancers: _loadBalancers?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'component';
        _component?.build();
        _$failedField = 'vpcEndpointService';
        _vpcEndpointService?.build();
        _$failedField = 'ruleOptions';
        _ruleOptions?.build();
        _$failedField = 'ruleGroupTypePairs';
        _ruleGroupTypePairs?.build();
        _$failedField = 'ruleGroupRuleOptionsPairs';
        _ruleGroupRuleOptionsPairs?.build();

        _$failedField = 'loadBalancers';
        _loadBalancers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AdditionalDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
