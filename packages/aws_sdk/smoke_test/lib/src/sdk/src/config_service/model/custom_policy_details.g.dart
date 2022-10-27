// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.custom_policy_details;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomPolicyDetails extends CustomPolicyDetails {
  @override
  final bool? enableDebugLogDelivery;
  @override
  final String policyRuntime;
  @override
  final String policyText;

  factory _$CustomPolicyDetails(
          [void Function(CustomPolicyDetailsBuilder)? updates]) =>
      (new CustomPolicyDetailsBuilder()..update(updates))._build();

  _$CustomPolicyDetails._(
      {this.enableDebugLogDelivery,
      required this.policyRuntime,
      required this.policyText})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        policyRuntime, r'CustomPolicyDetails', 'policyRuntime');
    BuiltValueNullFieldError.checkNotNull(
        policyText, r'CustomPolicyDetails', 'policyText');
  }

  @override
  CustomPolicyDetails rebuild(
          void Function(CustomPolicyDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomPolicyDetailsBuilder toBuilder() =>
      new CustomPolicyDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomPolicyDetails &&
        enableDebugLogDelivery == other.enableDebugLogDelivery &&
        policyRuntime == other.policyRuntime &&
        policyText == other.policyText;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, enableDebugLogDelivery.hashCode), policyRuntime.hashCode),
        policyText.hashCode));
  }
}

class CustomPolicyDetailsBuilder
    implements Builder<CustomPolicyDetails, CustomPolicyDetailsBuilder> {
  _$CustomPolicyDetails? _$v;

  bool? _enableDebugLogDelivery;
  bool? get enableDebugLogDelivery => _$this._enableDebugLogDelivery;
  set enableDebugLogDelivery(bool? enableDebugLogDelivery) =>
      _$this._enableDebugLogDelivery = enableDebugLogDelivery;

  String? _policyRuntime;
  String? get policyRuntime => _$this._policyRuntime;
  set policyRuntime(String? policyRuntime) =>
      _$this._policyRuntime = policyRuntime;

  String? _policyText;
  String? get policyText => _$this._policyText;
  set policyText(String? policyText) => _$this._policyText = policyText;

  CustomPolicyDetailsBuilder() {
    CustomPolicyDetails._init(this);
  }

  CustomPolicyDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enableDebugLogDelivery = $v.enableDebugLogDelivery;
      _policyRuntime = $v.policyRuntime;
      _policyText = $v.policyText;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomPolicyDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CustomPolicyDetails;
  }

  @override
  void update(void Function(CustomPolicyDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomPolicyDetails build() => _build();

  _$CustomPolicyDetails _build() {
    final _$result = _$v ??
        new _$CustomPolicyDetails._(
            enableDebugLogDelivery: enableDebugLogDelivery,
            policyRuntime: BuiltValueNullFieldError.checkNotNull(
                policyRuntime, r'CustomPolicyDetails', 'policyRuntime'),
            policyText: BuiltValueNullFieldError.checkNotNull(
                policyText, r'CustomPolicyDetails', 'policyText'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
