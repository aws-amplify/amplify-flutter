// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contributor_insights_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ContributorInsightsSummary extends ContributorInsightsSummary {
  @override
  final String? tableName;
  @override
  final String? indexName;
  @override
  final ContributorInsightsStatus? contributorInsightsStatus;

  factory _$ContributorInsightsSummary(
          [void Function(ContributorInsightsSummaryBuilder)? updates]) =>
      (new ContributorInsightsSummaryBuilder()..update(updates))._build();

  _$ContributorInsightsSummary._(
      {this.tableName, this.indexName, this.contributorInsightsStatus})
      : super._();

  @override
  ContributorInsightsSummary rebuild(
          void Function(ContributorInsightsSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContributorInsightsSummaryBuilder toBuilder() =>
      new ContributorInsightsSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContributorInsightsSummary &&
        tableName == other.tableName &&
        indexName == other.indexName &&
        contributorInsightsStatus == other.contributorInsightsStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jc(_$hash, indexName.hashCode);
    _$hash = $jc(_$hash, contributorInsightsStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ContributorInsightsSummaryBuilder
    implements
        Builder<ContributorInsightsSummary, ContributorInsightsSummaryBuilder> {
  _$ContributorInsightsSummary? _$v;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  String? _indexName;
  String? get indexName => _$this._indexName;
  set indexName(String? indexName) => _$this._indexName = indexName;

  ContributorInsightsStatus? _contributorInsightsStatus;
  ContributorInsightsStatus? get contributorInsightsStatus =>
      _$this._contributorInsightsStatus;
  set contributorInsightsStatus(
          ContributorInsightsStatus? contributorInsightsStatus) =>
      _$this._contributorInsightsStatus = contributorInsightsStatus;

  ContributorInsightsSummaryBuilder();

  ContributorInsightsSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableName = $v.tableName;
      _indexName = $v.indexName;
      _contributorInsightsStatus = $v.contributorInsightsStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContributorInsightsSummary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ContributorInsightsSummary;
  }

  @override
  void update(void Function(ContributorInsightsSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ContributorInsightsSummary build() => _build();

  _$ContributorInsightsSummary _build() {
    final _$result = _$v ??
        new _$ContributorInsightsSummary._(
            tableName: tableName,
            indexName: indexName,
            contributorInsightsStatus: contributorInsightsStatus);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
