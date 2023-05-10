// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.simulate_custom_policy_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SimulateCustomPolicyRequest extends SimulateCustomPolicyRequest {
  @override
  final _i4.BuiltList<String> policyInputList;
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

  factory _$SimulateCustomPolicyRequest(
          [void Function(SimulateCustomPolicyRequestBuilder)? updates]) =>
      (new SimulateCustomPolicyRequestBuilder()..update(updates))._build();

  _$SimulateCustomPolicyRequest._(
      {required this.policyInputList,
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
        policyInputList, r'SimulateCustomPolicyRequest', 'policyInputList');
    BuiltValueNullFieldError.checkNotNull(
        actionNames, r'SimulateCustomPolicyRequest', 'actionNames');
  }

  @override
  SimulateCustomPolicyRequest rebuild(
          void Function(SimulateCustomPolicyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SimulateCustomPolicyRequestBuilder toBuilder() =>
      new SimulateCustomPolicyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SimulateCustomPolicyRequest &&
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

class SimulateCustomPolicyRequestBuilder
    implements
        Builder<SimulateCustomPolicyRequest,
            SimulateCustomPolicyRequestBuilder> {
  _$SimulateCustomPolicyRequest? _$v;

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

  SimulateCustomPolicyRequestBuilder() {
    SimulateCustomPolicyRequest._init(this);
  }

  SimulateCustomPolicyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policyInputList = $v.policyInputList.toBuilder();
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
  void replace(SimulateCustomPolicyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SimulateCustomPolicyRequest;
  }

  @override
  void update(void Function(SimulateCustomPolicyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SimulateCustomPolicyRequest build() => _build();

  _$SimulateCustomPolicyRequest _build() {
    _$SimulateCustomPolicyRequest _$result;
    try {
      _$result = _$v ??
          new _$SimulateCustomPolicyRequest._(
              policyInputList: policyInputList.build(),
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
        policyInputList.build();
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
            r'SimulateCustomPolicyRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
