// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_network_insights_access_scope_analysis_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StartNetworkInsightsAccessScopeAnalysisRequest
    extends StartNetworkInsightsAccessScopeAnalysisRequest {
  @override
  final String? networkInsightsAccessScopeId;
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final String? clientToken;

  factory _$StartNetworkInsightsAccessScopeAnalysisRequest(
          [void Function(StartNetworkInsightsAccessScopeAnalysisRequestBuilder)?
              updates]) =>
      (new StartNetworkInsightsAccessScopeAnalysisRequestBuilder()
            ..update(updates))
          ._build();

  _$StartNetworkInsightsAccessScopeAnalysisRequest._(
      {this.networkInsightsAccessScopeId,
      required this.dryRun,
      this.tagSpecifications,
      this.clientToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'StartNetworkInsightsAccessScopeAnalysisRequest', 'dryRun');
  }

  @override
  StartNetworkInsightsAccessScopeAnalysisRequest rebuild(
          void Function(StartNetworkInsightsAccessScopeAnalysisRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StartNetworkInsightsAccessScopeAnalysisRequestBuilder toBuilder() =>
      new StartNetworkInsightsAccessScopeAnalysisRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StartNetworkInsightsAccessScopeAnalysisRequest &&
        networkInsightsAccessScopeId == other.networkInsightsAccessScopeId &&
        dryRun == other.dryRun &&
        tagSpecifications == other.tagSpecifications &&
        clientToken == other.clientToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInsightsAccessScopeId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StartNetworkInsightsAccessScopeAnalysisRequestBuilder
    implements
        Builder<StartNetworkInsightsAccessScopeAnalysisRequest,
            StartNetworkInsightsAccessScopeAnalysisRequestBuilder> {
  _$StartNetworkInsightsAccessScopeAnalysisRequest? _$v;

  String? _networkInsightsAccessScopeId;
  String? get networkInsightsAccessScopeId =>
      _$this._networkInsightsAccessScopeId;
  set networkInsightsAccessScopeId(String? networkInsightsAccessScopeId) =>
      _$this._networkInsightsAccessScopeId = networkInsightsAccessScopeId;

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

  StartNetworkInsightsAccessScopeAnalysisRequestBuilder() {
    StartNetworkInsightsAccessScopeAnalysisRequest._init(this);
  }

  StartNetworkInsightsAccessScopeAnalysisRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInsightsAccessScopeId = $v.networkInsightsAccessScopeId;
      _dryRun = $v.dryRun;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _clientToken = $v.clientToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StartNetworkInsightsAccessScopeAnalysisRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StartNetworkInsightsAccessScopeAnalysisRequest;
  }

  @override
  void update(
      void Function(StartNetworkInsightsAccessScopeAnalysisRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  StartNetworkInsightsAccessScopeAnalysisRequest build() => _build();

  _$StartNetworkInsightsAccessScopeAnalysisRequest _build() {
    _$StartNetworkInsightsAccessScopeAnalysisRequest _$result;
    try {
      _$result = _$v ??
          new _$StartNetworkInsightsAccessScopeAnalysisRequest._(
              networkInsightsAccessScopeId: networkInsightsAccessScopeId,
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'StartNetworkInsightsAccessScopeAnalysisRequest', 'dryRun'),
              tagSpecifications: _tagSpecifications?.build(),
              clientToken: clientToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StartNetworkInsightsAccessScopeAnalysisRequest',
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
