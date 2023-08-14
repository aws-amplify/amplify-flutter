// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_insights_access_scope_analysis.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NetworkInsightsAccessScopeAnalysis
    extends NetworkInsightsAccessScopeAnalysis {
  @override
  final String? networkInsightsAccessScopeAnalysisId;
  @override
  final String? networkInsightsAccessScopeAnalysisArn;
  @override
  final String? networkInsightsAccessScopeId;
  @override
  final AnalysisStatus? status;
  @override
  final String? statusMessage;
  @override
  final String? warningMessage;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final FindingsFound? findingsFound;
  @override
  final int analyzedEniCount;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$NetworkInsightsAccessScopeAnalysis(
          [void Function(NetworkInsightsAccessScopeAnalysisBuilder)?
              updates]) =>
      (new NetworkInsightsAccessScopeAnalysisBuilder()..update(updates))
          ._build();

  _$NetworkInsightsAccessScopeAnalysis._(
      {this.networkInsightsAccessScopeAnalysisId,
      this.networkInsightsAccessScopeAnalysisArn,
      this.networkInsightsAccessScopeId,
      this.status,
      this.statusMessage,
      this.warningMessage,
      this.startDate,
      this.endDate,
      this.findingsFound,
      required this.analyzedEniCount,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(analyzedEniCount,
        r'NetworkInsightsAccessScopeAnalysis', 'analyzedEniCount');
  }

  @override
  NetworkInsightsAccessScopeAnalysis rebuild(
          void Function(NetworkInsightsAccessScopeAnalysisBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NetworkInsightsAccessScopeAnalysisBuilder toBuilder() =>
      new NetworkInsightsAccessScopeAnalysisBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NetworkInsightsAccessScopeAnalysis &&
        networkInsightsAccessScopeAnalysisId ==
            other.networkInsightsAccessScopeAnalysisId &&
        networkInsightsAccessScopeAnalysisArn ==
            other.networkInsightsAccessScopeAnalysisArn &&
        networkInsightsAccessScopeId == other.networkInsightsAccessScopeId &&
        status == other.status &&
        statusMessage == other.statusMessage &&
        warningMessage == other.warningMessage &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        findingsFound == other.findingsFound &&
        analyzedEniCount == other.analyzedEniCount &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInsightsAccessScopeAnalysisId.hashCode);
    _$hash = $jc(_$hash, networkInsightsAccessScopeAnalysisArn.hashCode);
    _$hash = $jc(_$hash, networkInsightsAccessScopeId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, statusMessage.hashCode);
    _$hash = $jc(_$hash, warningMessage.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, findingsFound.hashCode);
    _$hash = $jc(_$hash, analyzedEniCount.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NetworkInsightsAccessScopeAnalysisBuilder
    implements
        Builder<NetworkInsightsAccessScopeAnalysis,
            NetworkInsightsAccessScopeAnalysisBuilder> {
  _$NetworkInsightsAccessScopeAnalysis? _$v;

  String? _networkInsightsAccessScopeAnalysisId;
  String? get networkInsightsAccessScopeAnalysisId =>
      _$this._networkInsightsAccessScopeAnalysisId;
  set networkInsightsAccessScopeAnalysisId(
          String? networkInsightsAccessScopeAnalysisId) =>
      _$this._networkInsightsAccessScopeAnalysisId =
          networkInsightsAccessScopeAnalysisId;

  String? _networkInsightsAccessScopeAnalysisArn;
  String? get networkInsightsAccessScopeAnalysisArn =>
      _$this._networkInsightsAccessScopeAnalysisArn;
  set networkInsightsAccessScopeAnalysisArn(
          String? networkInsightsAccessScopeAnalysisArn) =>
      _$this._networkInsightsAccessScopeAnalysisArn =
          networkInsightsAccessScopeAnalysisArn;

  String? _networkInsightsAccessScopeId;
  String? get networkInsightsAccessScopeId =>
      _$this._networkInsightsAccessScopeId;
  set networkInsightsAccessScopeId(String? networkInsightsAccessScopeId) =>
      _$this._networkInsightsAccessScopeId = networkInsightsAccessScopeId;

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

  DateTime? _startDate;
  DateTime? get startDate => _$this._startDate;
  set startDate(DateTime? startDate) => _$this._startDate = startDate;

  DateTime? _endDate;
  DateTime? get endDate => _$this._endDate;
  set endDate(DateTime? endDate) => _$this._endDate = endDate;

  FindingsFound? _findingsFound;
  FindingsFound? get findingsFound => _$this._findingsFound;
  set findingsFound(FindingsFound? findingsFound) =>
      _$this._findingsFound = findingsFound;

  int? _analyzedEniCount;
  int? get analyzedEniCount => _$this._analyzedEniCount;
  set analyzedEniCount(int? analyzedEniCount) =>
      _$this._analyzedEniCount = analyzedEniCount;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  NetworkInsightsAccessScopeAnalysisBuilder() {
    NetworkInsightsAccessScopeAnalysis._init(this);
  }

  NetworkInsightsAccessScopeAnalysisBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInsightsAccessScopeAnalysisId =
          $v.networkInsightsAccessScopeAnalysisId;
      _networkInsightsAccessScopeAnalysisArn =
          $v.networkInsightsAccessScopeAnalysisArn;
      _networkInsightsAccessScopeId = $v.networkInsightsAccessScopeId;
      _status = $v.status;
      _statusMessage = $v.statusMessage;
      _warningMessage = $v.warningMessage;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _findingsFound = $v.findingsFound;
      _analyzedEniCount = $v.analyzedEniCount;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NetworkInsightsAccessScopeAnalysis other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NetworkInsightsAccessScopeAnalysis;
  }

  @override
  void update(
      void Function(NetworkInsightsAccessScopeAnalysisBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NetworkInsightsAccessScopeAnalysis build() => _build();

  _$NetworkInsightsAccessScopeAnalysis _build() {
    _$NetworkInsightsAccessScopeAnalysis _$result;
    try {
      _$result = _$v ??
          new _$NetworkInsightsAccessScopeAnalysis._(
              networkInsightsAccessScopeAnalysisId:
                  networkInsightsAccessScopeAnalysisId,
              networkInsightsAccessScopeAnalysisArn:
                  networkInsightsAccessScopeAnalysisArn,
              networkInsightsAccessScopeId: networkInsightsAccessScopeId,
              status: status,
              statusMessage: statusMessage,
              warningMessage: warningMessage,
              startDate: startDate,
              endDate: endDate,
              findingsFound: findingsFound,
              analyzedEniCount: BuiltValueNullFieldError.checkNotNull(
                  analyzedEniCount,
                  r'NetworkInsightsAccessScopeAnalysis',
                  'analyzedEniCount'),
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NetworkInsightsAccessScopeAnalysis', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
