// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_network_insights_analysis_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StartNetworkInsightsAnalysisRequest
    extends StartNetworkInsightsAnalysisRequest {
  @override
  final String? networkInsightsPathId;
  @override
  final _i3.BuiltList<String>? additionalAccounts;
  @override
  final _i3.BuiltList<String>? filterInArns;
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final String? clientToken;

  factory _$StartNetworkInsightsAnalysisRequest(
          [void Function(StartNetworkInsightsAnalysisRequestBuilder)?
              updates]) =>
      (new StartNetworkInsightsAnalysisRequestBuilder()..update(updates))
          ._build();

  _$StartNetworkInsightsAnalysisRequest._(
      {this.networkInsightsPathId,
      this.additionalAccounts,
      this.filterInArns,
      required this.dryRun,
      this.tagSpecifications,
      this.clientToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'StartNetworkInsightsAnalysisRequest', 'dryRun');
  }

  @override
  StartNetworkInsightsAnalysisRequest rebuild(
          void Function(StartNetworkInsightsAnalysisRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StartNetworkInsightsAnalysisRequestBuilder toBuilder() =>
      new StartNetworkInsightsAnalysisRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StartNetworkInsightsAnalysisRequest &&
        networkInsightsPathId == other.networkInsightsPathId &&
        additionalAccounts == other.additionalAccounts &&
        filterInArns == other.filterInArns &&
        dryRun == other.dryRun &&
        tagSpecifications == other.tagSpecifications &&
        clientToken == other.clientToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInsightsPathId.hashCode);
    _$hash = $jc(_$hash, additionalAccounts.hashCode);
    _$hash = $jc(_$hash, filterInArns.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StartNetworkInsightsAnalysisRequestBuilder
    implements
        Builder<StartNetworkInsightsAnalysisRequest,
            StartNetworkInsightsAnalysisRequestBuilder> {
  _$StartNetworkInsightsAnalysisRequest? _$v;

  String? _networkInsightsPathId;
  String? get networkInsightsPathId => _$this._networkInsightsPathId;
  set networkInsightsPathId(String? networkInsightsPathId) =>
      _$this._networkInsightsPathId = networkInsightsPathId;

  _i3.ListBuilder<String>? _additionalAccounts;
  _i3.ListBuilder<String> get additionalAccounts =>
      _$this._additionalAccounts ??= new _i3.ListBuilder<String>();
  set additionalAccounts(_i3.ListBuilder<String>? additionalAccounts) =>
      _$this._additionalAccounts = additionalAccounts;

  _i3.ListBuilder<String>? _filterInArns;
  _i3.ListBuilder<String> get filterInArns =>
      _$this._filterInArns ??= new _i3.ListBuilder<String>();
  set filterInArns(_i3.ListBuilder<String>? filterInArns) =>
      _$this._filterInArns = filterInArns;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  StartNetworkInsightsAnalysisRequestBuilder() {
    StartNetworkInsightsAnalysisRequest._init(this);
  }

  StartNetworkInsightsAnalysisRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInsightsPathId = $v.networkInsightsPathId;
      _additionalAccounts = $v.additionalAccounts?.toBuilder();
      _filterInArns = $v.filterInArns?.toBuilder();
      _dryRun = $v.dryRun;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _clientToken = $v.clientToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StartNetworkInsightsAnalysisRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StartNetworkInsightsAnalysisRequest;
  }

  @override
  void update(
      void Function(StartNetworkInsightsAnalysisRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StartNetworkInsightsAnalysisRequest build() => _build();

  _$StartNetworkInsightsAnalysisRequest _build() {
    _$StartNetworkInsightsAnalysisRequest _$result;
    try {
      _$result = _$v ??
          new _$StartNetworkInsightsAnalysisRequest._(
              networkInsightsPathId: networkInsightsPathId,
              additionalAccounts: _additionalAccounts?.build(),
              filterInArns: _filterInArns?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'StartNetworkInsightsAnalysisRequest', 'dryRun'),
              tagSpecifications: _tagSpecifications?.build(),
              clientToken: clientToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'additionalAccounts';
        _additionalAccounts?.build();
        _$failedField = 'filterInArns';
        _filterInArns?.build();

        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StartNetworkInsightsAnalysisRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
