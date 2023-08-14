// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_insights_analysis.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NetworkInsightsAnalysis extends NetworkInsightsAnalysis {
  @override
  final String? networkInsightsAnalysisId;
  @override
  final String? networkInsightsAnalysisArn;
  @override
  final String? networkInsightsPathId;
  @override
  final _i2.BuiltList<String>? additionalAccounts;
  @override
  final _i2.BuiltList<String>? filterInArns;
  @override
  final DateTime? startDate;
  @override
  final AnalysisStatus? status;
  @override
  final String? statusMessage;
  @override
  final String? warningMessage;
  @override
  final bool networkPathFound;
  @override
  final _i2.BuiltList<PathComponent>? forwardPathComponents;
  @override
  final _i2.BuiltList<PathComponent>? returnPathComponents;
  @override
  final _i2.BuiltList<Explanation>? explanations;
  @override
  final _i2.BuiltList<AlternatePathHint>? alternatePathHints;
  @override
  final _i2.BuiltList<String>? suggestedAccounts;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$NetworkInsightsAnalysis(
          [void Function(NetworkInsightsAnalysisBuilder)? updates]) =>
      (new NetworkInsightsAnalysisBuilder()..update(updates))._build();

  _$NetworkInsightsAnalysis._(
      {this.networkInsightsAnalysisId,
      this.networkInsightsAnalysisArn,
      this.networkInsightsPathId,
      this.additionalAccounts,
      this.filterInArns,
      this.startDate,
      this.status,
      this.statusMessage,
      this.warningMessage,
      required this.networkPathFound,
      this.forwardPathComponents,
      this.returnPathComponents,
      this.explanations,
      this.alternatePathHints,
      this.suggestedAccounts,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        networkPathFound, r'NetworkInsightsAnalysis', 'networkPathFound');
  }

  @override
  NetworkInsightsAnalysis rebuild(
          void Function(NetworkInsightsAnalysisBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NetworkInsightsAnalysisBuilder toBuilder() =>
      new NetworkInsightsAnalysisBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NetworkInsightsAnalysis &&
        networkInsightsAnalysisId == other.networkInsightsAnalysisId &&
        networkInsightsAnalysisArn == other.networkInsightsAnalysisArn &&
        networkInsightsPathId == other.networkInsightsPathId &&
        additionalAccounts == other.additionalAccounts &&
        filterInArns == other.filterInArns &&
        startDate == other.startDate &&
        status == other.status &&
        statusMessage == other.statusMessage &&
        warningMessage == other.warningMessage &&
        networkPathFound == other.networkPathFound &&
        forwardPathComponents == other.forwardPathComponents &&
        returnPathComponents == other.returnPathComponents &&
        explanations == other.explanations &&
        alternatePathHints == other.alternatePathHints &&
        suggestedAccounts == other.suggestedAccounts &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInsightsAnalysisId.hashCode);
    _$hash = $jc(_$hash, networkInsightsAnalysisArn.hashCode);
    _$hash = $jc(_$hash, networkInsightsPathId.hashCode);
    _$hash = $jc(_$hash, additionalAccounts.hashCode);
    _$hash = $jc(_$hash, filterInArns.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, statusMessage.hashCode);
    _$hash = $jc(_$hash, warningMessage.hashCode);
    _$hash = $jc(_$hash, networkPathFound.hashCode);
    _$hash = $jc(_$hash, forwardPathComponents.hashCode);
    _$hash = $jc(_$hash, returnPathComponents.hashCode);
    _$hash = $jc(_$hash, explanations.hashCode);
    _$hash = $jc(_$hash, alternatePathHints.hashCode);
    _$hash = $jc(_$hash, suggestedAccounts.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NetworkInsightsAnalysisBuilder
    implements
        Builder<NetworkInsightsAnalysis, NetworkInsightsAnalysisBuilder> {
  _$NetworkInsightsAnalysis? _$v;

  String? _networkInsightsAnalysisId;
  String? get networkInsightsAnalysisId => _$this._networkInsightsAnalysisId;
  set networkInsightsAnalysisId(String? networkInsightsAnalysisId) =>
      _$this._networkInsightsAnalysisId = networkInsightsAnalysisId;

  String? _networkInsightsAnalysisArn;
  String? get networkInsightsAnalysisArn => _$this._networkInsightsAnalysisArn;
  set networkInsightsAnalysisArn(String? networkInsightsAnalysisArn) =>
      _$this._networkInsightsAnalysisArn = networkInsightsAnalysisArn;

  String? _networkInsightsPathId;
  String? get networkInsightsPathId => _$this._networkInsightsPathId;
  set networkInsightsPathId(String? networkInsightsPathId) =>
      _$this._networkInsightsPathId = networkInsightsPathId;

  _i2.ListBuilder<String>? _additionalAccounts;
  _i2.ListBuilder<String> get additionalAccounts =>
      _$this._additionalAccounts ??= new _i2.ListBuilder<String>();
  set additionalAccounts(_i2.ListBuilder<String>? additionalAccounts) =>
      _$this._additionalAccounts = additionalAccounts;

  _i2.ListBuilder<String>? _filterInArns;
  _i2.ListBuilder<String> get filterInArns =>
      _$this._filterInArns ??= new _i2.ListBuilder<String>();
  set filterInArns(_i2.ListBuilder<String>? filterInArns) =>
      _$this._filterInArns = filterInArns;

  DateTime? _startDate;
  DateTime? get startDate => _$this._startDate;
  set startDate(DateTime? startDate) => _$this._startDate = startDate;

  AnalysisStatus? _status;
  AnalysisStatus? get status => _$this._status;
  set status(AnalysisStatus? status) => _$this._status = status;

  String? _statusMessage;
  String? get statusMessage => _$this._statusMessage;
  set statusMessage(String? statusMessage) =>
      _$this._statusMessage = statusMessage;

  String? _warningMessage;
  String? get warningMessage => _$this._warningMessage;
  set warningMessage(String? warningMessage) =>
      _$this._warningMessage = warningMessage;

  bool? _networkPathFound;
  bool? get networkPathFound => _$this._networkPathFound;
  set networkPathFound(bool? networkPathFound) =>
      _$this._networkPathFound = networkPathFound;

  _i2.ListBuilder<PathComponent>? _forwardPathComponents;
  _i2.ListBuilder<PathComponent> get forwardPathComponents =>
      _$this._forwardPathComponents ??= new _i2.ListBuilder<PathComponent>();
  set forwardPathComponents(
          _i2.ListBuilder<PathComponent>? forwardPathComponents) =>
      _$this._forwardPathComponents = forwardPathComponents;

  _i2.ListBuilder<PathComponent>? _returnPathComponents;
  _i2.ListBuilder<PathComponent> get returnPathComponents =>
      _$this._returnPathComponents ??= new _i2.ListBuilder<PathComponent>();
  set returnPathComponents(
          _i2.ListBuilder<PathComponent>? returnPathComponents) =>
      _$this._returnPathComponents = returnPathComponents;

  _i2.ListBuilder<Explanation>? _explanations;
  _i2.ListBuilder<Explanation> get explanations =>
      _$this._explanations ??= new _i2.ListBuilder<Explanation>();
  set explanations(_i2.ListBuilder<Explanation>? explanations) =>
      _$this._explanations = explanations;

  _i2.ListBuilder<AlternatePathHint>? _alternatePathHints;
  _i2.ListBuilder<AlternatePathHint> get alternatePathHints =>
      _$this._alternatePathHints ??= new _i2.ListBuilder<AlternatePathHint>();
  set alternatePathHints(
          _i2.ListBuilder<AlternatePathHint>? alternatePathHints) =>
      _$this._alternatePathHints = alternatePathHints;

  _i2.ListBuilder<String>? _suggestedAccounts;
  _i2.ListBuilder<String> get suggestedAccounts =>
      _$this._suggestedAccounts ??= new _i2.ListBuilder<String>();
  set suggestedAccounts(_i2.ListBuilder<String>? suggestedAccounts) =>
      _$this._suggestedAccounts = suggestedAccounts;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  NetworkInsightsAnalysisBuilder() {
    NetworkInsightsAnalysis._init(this);
  }

  NetworkInsightsAnalysisBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInsightsAnalysisId = $v.networkInsightsAnalysisId;
      _networkInsightsAnalysisArn = $v.networkInsightsAnalysisArn;
      _networkInsightsPathId = $v.networkInsightsPathId;
      _additionalAccounts = $v.additionalAccounts?.toBuilder();
      _filterInArns = $v.filterInArns?.toBuilder();
      _startDate = $v.startDate;
      _status = $v.status;
      _statusMessage = $v.statusMessage;
      _warningMessage = $v.warningMessage;
      _networkPathFound = $v.networkPathFound;
      _forwardPathComponents = $v.forwardPathComponents?.toBuilder();
      _returnPathComponents = $v.returnPathComponents?.toBuilder();
      _explanations = $v.explanations?.toBuilder();
      _alternatePathHints = $v.alternatePathHints?.toBuilder();
      _suggestedAccounts = $v.suggestedAccounts?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NetworkInsightsAnalysis other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NetworkInsightsAnalysis;
  }

  @override
  void update(void Function(NetworkInsightsAnalysisBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NetworkInsightsAnalysis build() => _build();

  _$NetworkInsightsAnalysis _build() {
    _$NetworkInsightsAnalysis _$result;
    try {
      _$result = _$v ??
          new _$NetworkInsightsAnalysis._(
              networkInsightsAnalysisId: networkInsightsAnalysisId,
              networkInsightsAnalysisArn: networkInsightsAnalysisArn,
              networkInsightsPathId: networkInsightsPathId,
              additionalAccounts: _additionalAccounts?.build(),
              filterInArns: _filterInArns?.build(),
              startDate: startDate,
              status: status,
              statusMessage: statusMessage,
              warningMessage: warningMessage,
              networkPathFound: BuiltValueNullFieldError.checkNotNull(
                  networkPathFound,
                  r'NetworkInsightsAnalysis',
                  'networkPathFound'),
              forwardPathComponents: _forwardPathComponents?.build(),
              returnPathComponents: _returnPathComponents?.build(),
              explanations: _explanations?.build(),
              alternatePathHints: _alternatePathHints?.build(),
              suggestedAccounts: _suggestedAccounts?.build(),
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'additionalAccounts';
        _additionalAccounts?.build();
        _$failedField = 'filterInArns';
        _filterInArns?.build();

        _$failedField = 'forwardPathComponents';
        _forwardPathComponents?.build();
        _$failedField = 'returnPathComponents';
        _returnPathComponents?.build();
        _$failedField = 'explanations';
        _explanations?.build();
        _$failedField = 'alternatePathHints';
        _alternatePathHints?.build();
        _$failedField = 'suggestedAccounts';
        _suggestedAccounts?.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NetworkInsightsAnalysis', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
