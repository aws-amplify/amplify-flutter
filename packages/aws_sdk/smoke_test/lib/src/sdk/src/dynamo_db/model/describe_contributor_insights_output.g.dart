// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.describe_contributor_insights_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeContributorInsightsOutput
    extends DescribeContributorInsightsOutput {
  @override
  final _i4.BuiltList<String>? contributorInsightsRuleList;
  @override
  final _i2.ContributorInsightsStatus? contributorInsightsStatus;
  @override
  final _i3.FailureException? failureException;
  @override
  final String? indexName;
  @override
  final DateTime? lastUpdateDateTime;
  @override
  final String? tableName;

  factory _$DescribeContributorInsightsOutput(
          [void Function(DescribeContributorInsightsOutputBuilder)? updates]) =>
      (new DescribeContributorInsightsOutputBuilder()..update(updates))
          ._build();

  _$DescribeContributorInsightsOutput._(
      {this.contributorInsightsRuleList,
      this.contributorInsightsStatus,
      this.failureException,
      this.indexName,
      this.lastUpdateDateTime,
      this.tableName})
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
        contributorInsightsRuleList == other.contributorInsightsRuleList &&
        contributorInsightsStatus == other.contributorInsightsStatus &&
        failureException == other.failureException &&
        indexName == other.indexName &&
        lastUpdateDateTime == other.lastUpdateDateTime &&
        tableName == other.tableName;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc(0, contributorInsightsRuleList.hashCode),
                        contributorInsightsStatus.hashCode),
                    failureException.hashCode),
                indexName.hashCode),
            lastUpdateDateTime.hashCode),
        tableName.hashCode));
  }
}

class DescribeContributorInsightsOutputBuilder
    implements
        Builder<DescribeContributorInsightsOutput,
            DescribeContributorInsightsOutputBuilder> {
  _$DescribeContributorInsightsOutput? _$v;

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

  _i3.FailureExceptionBuilder? _failureException;
  _i3.FailureExceptionBuilder get failureException =>
      _$this._failureException ??= new _i3.FailureExceptionBuilder();
  set failureException(_i3.FailureExceptionBuilder? failureException) =>
      _$this._failureException = failureException;

  String? _indexName;
  String? get indexName => _$this._indexName;
  set indexName(String? indexName) => _$this._indexName = indexName;

  DateTime? _lastUpdateDateTime;
  DateTime? get lastUpdateDateTime => _$this._lastUpdateDateTime;
  set lastUpdateDateTime(DateTime? lastUpdateDateTime) =>
      _$this._lastUpdateDateTime = lastUpdateDateTime;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  DescribeContributorInsightsOutputBuilder() {
    DescribeContributorInsightsOutput._init(this);
  }

  DescribeContributorInsightsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contributorInsightsRuleList =
          $v.contributorInsightsRuleList?.toBuilder();
      _contributorInsightsStatus = $v.contributorInsightsStatus;
      _failureException = $v.failureException?.toBuilder();
      _indexName = $v.indexName;
      _lastUpdateDateTime = $v.lastUpdateDateTime;
      _tableName = $v.tableName;
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
              contributorInsightsRuleList:
                  _contributorInsightsRuleList?.build(),
              contributorInsightsStatus: contributorInsightsStatus,
              failureException: _failureException?.build(),
              indexName: indexName,
              lastUpdateDateTime: lastUpdateDateTime,
              tableName: tableName);
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
