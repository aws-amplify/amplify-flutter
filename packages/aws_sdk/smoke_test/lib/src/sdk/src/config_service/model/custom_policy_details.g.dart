// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_policy_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomPolicyDetails extends CustomPolicyDetails {
  @override
  final String policyRuntime;
  @override
  final String policyText;
  @override
  final bool enableDebugLogDelivery;

  factory _$CustomPolicyDetails(
          [void Function(CustomPolicyDetailsBuilder)? updates]) =>
      (new CustomPolicyDetailsBuilder()..update(updates))._build();

  _$CustomPolicyDetails._(
      {required this.policyRuntime,
      required this.policyText,
      required this.enableDebugLogDelivery})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        policyRuntime, r'CustomPolicyDetails', 'policyRuntime');
    BuiltValueNullFieldError.checkNotNull(
        policyText, r'CustomPolicyDetails', 'policyText');
    BuiltValueNullFieldError.checkNotNull(enableDebugLogDelivery,
        r'CustomPolicyDetails', 'enableDebugLogDelivery');
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
        policyRuntime == other.policyRuntime &&
        policyText == other.policyText &&
        enableDebugLogDelivery == other.enableDebugLogDelivery;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, policyRuntime.hashCode);
    _$hash = $jc(_$hash, policyText.hashCode);
    _$hash = $jc(_$hash, enableDebugLogDelivery.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CustomPolicyDetailsBuilder
    implements Builder<CustomPolicyDetails, CustomPolicyDetailsBuilder> {
  _$CustomPolicyDetails? _$v;

  String? _policyRuntime;
  String? get policyRuntime => _$this._policyRuntime;
  set policyRuntime(String? policyRuntime) =>
      _$this._policyRuntime = policyRuntime;

  String? _policyText;
  String? get policyText => _$this._policyText;
  set policyText(String? policyText) => _$this._policyText = policyText;

  bool? _enableDebugLogDelivery;
  bool? get enableDebugLogDelivery => _$this._enableDebugLogDelivery;
  set enableDebugLogDelivery(bool? enableDebugLogDelivery) =>
      _$this._enableDebugLogDelivery = enableDebugLogDelivery;

  CustomPolicyDetailsBuilder() {
    CustomPolicyDetails._init(this);
  }

  CustomPolicyDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policyRuntime = $v.policyRuntime;
      _policyText = $v.policyText;
      _enableDebugLogDelivery = $v.enableDebugLogDelivery;
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
            policyRuntime: BuiltValueNullFieldError.checkNotNull(
                policyRuntime, r'CustomPolicyDetails', 'policyRuntime'),
            policyText: BuiltValueNullFieldError.checkNotNull(
                policyText, r'CustomPolicyDetails', 'policyText'),
            enableDebugLogDelivery: BuiltValueNullFieldError.checkNotNull(
                enableDebugLogDelivery,
                r'CustomPolicyDetails',
                'enableDebugLogDelivery'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
