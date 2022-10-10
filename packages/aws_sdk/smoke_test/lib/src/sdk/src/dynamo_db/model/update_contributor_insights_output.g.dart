// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.update_contributor_insights_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateContributorInsightsOutput
    extends UpdateContributorInsightsOutput {
  @override
  final _i2.ContributorInsightsStatus? contributorInsightsStatus;
  @override
  final String? indexName;
  @override
  final String? tableName;

  factory _$UpdateContributorInsightsOutput(
          [void Function(UpdateContributorInsightsOutputBuilder)? updates]) =>
      (new UpdateContributorInsightsOutputBuilder()..update(updates))._build();

  _$UpdateContributorInsightsOutput._(
      {this.contributorInsightsStatus, this.indexName, this.tableName})
      : super._();

  @override
  UpdateContributorInsightsOutput rebuild(
          void Function(UpdateContributorInsightsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateContributorInsightsOutputBuilder toBuilder() =>
      new UpdateContributorInsightsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateContributorInsightsOutput &&
        contributorInsightsStatus == other.contributorInsightsStatus &&
        indexName == other.indexName &&
        tableName == other.tableName;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, contributorInsightsStatus.hashCode), indexName.hashCode),
        tableName.hashCode));
  }
}

class UpdateContributorInsightsOutputBuilder
    implements
        Builder<UpdateContributorInsightsOutput,
            UpdateContributorInsightsOutputBuilder> {
  _$UpdateContributorInsightsOutput? _$v;

  _i2.ContributorInsightsStatus? _contributorInsightsStatus;
  _i2.ContributorInsightsStatus? get contributorInsightsStatus =>
      _$this._contributorInsightsStatus;
  set contributorInsightsStatus(
          _i2.ContributorInsightsStatus? contributorInsightsStatus) =>
      _$this._contributorInsightsStatus = contributorInsightsStatus;

  String? _indexName;
  String? get indexName => _$this._indexName;
  set indexName(String? indexName) => _$this._indexName = indexName;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  UpdateContributorInsightsOutputBuilder() {
    UpdateContributorInsightsOutput._init(this);
  }

  UpdateContributorInsightsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contributorInsightsStatus = $v.contributorInsightsStatus;
      _indexName = $v.indexName;
      _tableName = $v.tableName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateContributorInsightsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateContributorInsightsOutput;
  }

  @override
  void update(void Function(UpdateContributorInsightsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateContributorInsightsOutput build() => _build();

  _$UpdateContributorInsightsOutput _build() {
    final _$result = _$v ??
        new _$UpdateContributorInsightsOutput._(
            contributorInsightsStatus: contributorInsightsStatus,
            indexName: indexName,
            tableName: tableName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
