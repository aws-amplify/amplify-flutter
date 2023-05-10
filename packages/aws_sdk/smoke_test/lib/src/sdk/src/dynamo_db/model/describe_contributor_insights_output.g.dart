// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.describe_contributor_insights_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeContributorInsightsOutput
    extends DescribeContributorInsightsOutput {
  @override
  final String? tableName;
  @override
  final String? indexName;
  @override
  final _i4.BuiltList<String>? contributorInsightsRuleList;
  @override
  final _i2.ContributorInsightsStatus? contributorInsightsStatus;
  @override
  final DateTime? lastUpdateDateTime;
  @override
  final _i3.FailureException? failureException;

  factory _$DescribeContributorInsightsOutput(
          [void Function(DescribeContributorInsightsOutputBuilder)? updates]) =>
      (new DescribeContributorInsightsOutputBuilder()..update(updates))
          ._build();

  _$DescribeContributorInsightsOutput._(
      {this.tableName,
      this.indexName,
      this.contributorInsightsRuleList,
      this.contributorInsightsStatus,
      this.lastUpdateDateTime,
      this.failureException})
      : super._();

  @override
  DescribeContributorInsightsOutput rebuild(
          void Function(DescribeContributorInsightsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeContributorInsightsOutputBuilder toBuilder() =>
      new DescribeContributorInsightsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeContributorInsightsOutput &&
        tableName == other.tableName &&
        indexName == other.indexName &&
        contributorInsightsRuleList == other.contributorInsightsRuleList &&
        contributorInsightsStatus == other.contributorInsightsStatus &&
        lastUpdateDateTime == other.lastUpdateDateTime &&
        failureException == other.failureException;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jc(_$hash, indexName.hashCode);
    _$hash = $jc(_$hash, contributorInsightsRuleList.hashCode);
    _$hash = $jc(_$hash, contributorInsightsStatus.hashCode);
    _$hash = $jc(_$hash, lastUpdateDateTime.hashCode);
    _$hash = $jc(_$hash, failureException.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeContributorInsightsOutputBuilder
    implements
        Builder<DescribeContributorInsightsOutput,
            DescribeContributorInsightsOutputBuilder> {
  _$DescribeContributorInsightsOutput? _$v;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  String? _indexName;
  String? get indexName => _$this._indexName;
  set indexName(String? indexName) => _$this._indexName = indexName;

  _i4.ListBuilder<String>? _contributorInsightsRuleList;
  _i4.ListBuilder<String> get contributorInsightsRuleList =>
      _$this._contributorInsightsRuleList ??= new _i4.ListBuilder<String>();
  set contributorInsightsRuleList(
          _i4.ListBuilder<String>? contributorInsightsRuleList) =>
      _$this._contributorInsightsRuleList = contributorInsightsRuleList;

  _i2.ContributorInsightsStatus? _contributorInsightsStatus;
  _i2.ContributorInsightsStatus? get contributorInsightsStatus =>
      _$this._contributorInsightsStatus;
  set contributorInsightsStatus(
          _i2.ContributorInsightsStatus? contributorInsightsStatus) =>
      _$this._contributorInsightsStatus = contributorInsightsStatus;

  DateTime? _lastUpdateDateTime;
  DateTime? get lastUpdateDateTime => _$this._lastUpdateDateTime;
  set lastUpdateDateTime(DateTime? lastUpdateDateTime) =>
      _$this._lastUpdateDateTime = lastUpdateDateTime;

  _i3.FailureExceptionBuilder? _failureException;
  _i3.FailureExceptionBuilder get failureException =>
      _$this._failureException ??= new _i3.FailureExceptionBuilder();
  set failureException(_i3.FailureExceptionBuilder? failureException) =>
      _$this._failureException = failureException;

  DescribeContributorInsightsOutputBuilder() {
    DescribeContributorInsightsOutput._init(this);
  }

  DescribeContributorInsightsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableName = $v.tableName;
      _indexName = $v.indexName;
      _contributorInsightsRuleList =
          $v.contributorInsightsRuleList?.toBuilder();
      _contributorInsightsStatus = $v.contributorInsightsStatus;
      _lastUpdateDateTime = $v.lastUpdateDateTime;
      _failureException = $v.failureException?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeContributorInsightsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeContributorInsightsOutput;
  }

  @override
  void update(
      void Function(DescribeContributorInsightsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeContributorInsightsOutput build() => _build();

  _$DescribeContributorInsightsOutput _build() {
    _$DescribeContributorInsightsOutput _$result;
    try {
      _$result = _$v ??
          new _$DescribeContributorInsightsOutput._(
              tableName: tableName,
              indexName: indexName,
              contributorInsightsRuleList:
                  _contributorInsightsRuleList?.build(),
              contributorInsightsStatus: contributorInsightsStatus,
              lastUpdateDateTime: lastUpdateDateTime,
              failureException: _failureException?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'contributorInsightsRuleList';
        _contributorInsightsRuleList?.build();

        _$failedField = 'failureException';
        _failureException?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeContributorInsightsOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
