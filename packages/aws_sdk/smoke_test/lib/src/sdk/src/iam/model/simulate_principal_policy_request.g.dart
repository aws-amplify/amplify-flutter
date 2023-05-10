// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.simulate_principal_policy_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SimulatePrincipalPolicyRequest extends SimulatePrincipalPolicyRequest {
  @override
  final String policySourceArn;
  @override
  final _i4.BuiltList<String>? policyInputList;
  @override
  final _i4.BuiltList<String>? permissionsBoundaryPolicyInputList;
  @override
  final _i4.BuiltList<String> actionNames;
  @override
  final _i4.BuiltList<String>? resourceArns;
  @override
  final String? resourcePolicy;
  @override
  final String? resourceOwner;
  @override
  final String? callerArn;
  @override
  final _i4.BuiltList<_i3.ContextEntry>? contextEntries;
  @override
  final String? resourceHandlingOption;
  @override
  final int? maxItems;
  @override
  final String? marker;

  factory _$SimulatePrincipalPolicyRequest(
          [void Function(SimulatePrincipalPolicyRequestBuilder)? updates]) =>
      (new SimulatePrincipalPolicyRequestBuilder()..update(updates))._build();

  _$SimulatePrincipalPolicyRequest._(
      {required this.policySourceArn,
      this.policyInputList,
      this.permissionsBoundaryPolicyInputList,
      required this.actionNames,
      this.resourceArns,
      this.resourcePolicy,
      this.resourceOwner,
      this.callerArn,
      this.contextEntries,
      this.resourceHandlingOption,
      this.maxItems,
      this.marker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        policySourceArn, r'SimulatePrincipalPolicyRequest', 'policySourceArn');
    BuiltValueNullFieldError.checkNotNull(
        actionNames, r'SimulatePrincipalPolicyRequest', 'actionNames');
  }

  @override
  SimulatePrincipalPolicyRequest rebuild(
          void Function(SimulatePrincipalPolicyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SimulatePrincipalPolicyRequestBuilder toBuilder() =>
      new SimulatePrincipalPolicyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SimulatePrincipalPolicyRequest &&
        policySourceArn == other.policySourceArn &&
        policyInputList == other.policyInputList &&
        permissionsBoundaryPolicyInputList ==
            other.permissionsBoundaryPolicyInputList &&
        actionNames == other.actionNames &&
        resourceArns == other.resourceArns &&
        resourcePolicy == other.resourcePolicy &&
        resourceOwner == other.resourceOwner &&
        callerArn == other.callerArn &&
        contextEntries == other.contextEntries &&
        resourceHandlingOption == other.resourceHandlingOption &&
        maxItems == other.maxItems &&
        marker == other.marker;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, policySourceArn.hashCode);
    _$hash = $jc(_$hash, policyInputList.hashCode);
    _$hash = $jc(_$hash, permissionsBoundaryPolicyInputList.hashCode);
    _$hash = $jc(_$hash, actionNames.hashCode);
    _$hash = $jc(_$hash, resourceArns.hashCode);
    _$hash = $jc(_$hash, resourcePolicy.hashCode);
    _$hash = $jc(_$hash, resourceOwner.hashCode);
    _$hash = $jc(_$hash, callerArn.hashCode);
    _$hash = $jc(_$hash, contextEntries.hashCode);
    _$hash = $jc(_$hash, resourceHandlingOption.hashCode);
    _$hash = $jc(_$hash, maxItems.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SimulatePrincipalPolicyRequestBuilder
    implements
        Builder<SimulatePrincipalPolicyRequest,
            SimulatePrincipalPolicyRequestBuilder> {
  _$SimulatePrincipalPolicyRequest? _$v;

  String? _policySourceArn;
  String? get policySourceArn => _$this._policySourceArn;
  set policySourceArn(String? policySourceArn) =>
      _$this._policySourceArn = policySourceArn;

  _i4.ListBuilder<String>? _policyInputList;
  _i4.ListBuilder<String> get policyInputList =>
      _$this._policyInputList ??= new _i4.ListBuilder<String>();
  set policyInputList(_i4.ListBuilder<String>? policyInputList) =>
      _$this._policyInputList = policyInputList;

  _i4.ListBuilder<String>? _permissionsBoundaryPolicyInputList;
  _i4.ListBuilder<String> get permissionsBoundaryPolicyInputList =>
      _$this._permissionsBoundaryPolicyInputList ??=
          new _i4.ListBuilder<String>();
  set permissionsBoundaryPolicyInputList(
          _i4.ListBuilder<String>? permissionsBoundaryPolicyInputList) =>
      _$this._permissionsBoundaryPolicyInputList =
          permissionsBoundaryPolicyInputList;

  _i4.ListBuilder<String>? _actionNames;
  _i4.ListBuilder<String> get actionNames =>
      _$this._actionNames ??= new _i4.ListBuilder<String>();
  set actionNames(_i4.ListBuilder<String>? actionNames) =>
      _$this._actionNames = actionNames;

  _i4.ListBuilder<String>? _resourceArns;
  _i4.ListBuilder<String> get resourceArns =>
      _$this._resourceArns ??= new _i4.ListBuilder<String>();
  set resourceArns(_i4.ListBuilder<String>? resourceArns) =>
      _$this._resourceArns = resourceArns;

  String? _resourcePolicy;
  String? get resourcePolicy => _$this._resourcePolicy;
  set resourcePolicy(String? resourcePolicy) =>
      _$this._resourcePolicy = resourcePolicy;

  String? _resourceOwner;
  String? get resourceOwner => _$this._resourceOwner;
  set resourceOwner(String? resourceOwner) =>
      _$this._resourceOwner = resourceOwner;

  String? _callerArn;
  String? get callerArn => _$this._callerArn;
  set callerArn(String? callerArn) => _$this._callerArn = callerArn;

  _i4.ListBuilder<_i3.ContextEntry>? _contextEntries;
  _i4.ListBuilder<_i3.ContextEntry> get contextEntries =>
      _$this._contextEntries ??= new _i4.ListBuilder<_i3.ContextEntry>();
  set contextEntries(_i4.ListBuilder<_i3.ContextEntry>? contextEntries) =>
      _$this._contextEntries = contextEntries;

  String? _resourceHandlingOption;
  String? get resourceHandlingOption => _$this._resourceHandlingOption;
  set resourceHandlingOption(String? resourceHandlingOption) =>
      _$this._resourceHandlingOption = resourceHandlingOption;

  int? _maxItems;
  int? get maxItems => _$this._maxItems;
  set maxItems(int? maxItems) => _$this._maxItems = maxItems;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  SimulatePrincipalPolicyRequestBuilder() {
    SimulatePrincipalPolicyRequest._init(this);
  }

  SimulatePrincipalPolicyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policySourceArn = $v.policySourceArn;
      _policyInputList = $v.policyInputList?.toBuilder();
      _permissionsBoundaryPolicyInputList =
          $v.permissionsBoundaryPolicyInputList?.toBuilder();
      _actionNames = $v.actionNames.toBuilder();
      _resourceArns = $v.resourceArns?.toBuilder();
      _resourcePolicy = $v.resourcePolicy;
      _resourceOwner = $v.resourceOwner;
      _callerArn = $v.callerArn;
      _contextEntries = $v.contextEntries?.toBuilder();
      _resourceHandlingOption = $v.resourceHandlingOption;
      _maxItems = $v.maxItems;
      _marker = $v.marker;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SimulatePrincipalPolicyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SimulatePrincipalPolicyRequest;
  }

  @override
  void update(void Function(SimulatePrincipalPolicyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SimulatePrincipalPolicyRequest build() => _build();

  _$SimulatePrincipalPolicyRequest _build() {
    _$SimulatePrincipalPolicyRequest _$result;
    try {
      _$result = _$v ??
          new _$SimulatePrincipalPolicyRequest._(
              policySourceArn: BuiltValueNullFieldError.checkNotNull(
                  policySourceArn,
                  r'SimulatePrincipalPolicyRequest',
                  'policySourceArn'),
              policyInputList: _policyInputList?.build(),
              permissionsBoundaryPolicyInputList:
                  _permissionsBoundaryPolicyInputList?.build(),
              actionNames: actionNames.build(),
              resourceArns: _resourceArns?.build(),
              resourcePolicy: resourcePolicy,
              resourceOwner: resourceOwner,
              callerArn: callerArn,
              contextEntries: _contextEntries?.build(),
              resourceHandlingOption: resourceHandlingOption,
              maxItems: maxItems,
              marker: marker);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'policyInputList';
        _policyInputList?.build();
        _$failedField = 'permissionsBoundaryPolicyInputList';
        _permissionsBoundaryPolicyInputList?.build();
        _$failedField = 'actionNames';
        actionNames.build();
        _$failedField = 'resourceArns';
        _resourceArns?.build();

        _$failedField = 'contextEntries';
        _contextEntries?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SimulatePrincipalPolicyRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
