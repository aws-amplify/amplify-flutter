// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.update_contributor_insights_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateContributorInsightsInput extends UpdateContributorInsightsInput {
  @override
  final _i3.ContributorInsightsAction contributorInsightsAction;
  @override
  final String? indexName;
  @override
  final String tableName;

  factory _$UpdateContributorInsightsInput(
          [void Function(UpdateContributorInsightsInputBuilder)? updates]) =>
      (new UpdateContributorInsightsInputBuilder()..update(updates))._build();

  _$UpdateContributorInsightsInput._(
      {required this.contributorInsightsAction,
      this.indexName,
      required this.tableName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(contributorInsightsAction,
        r'UpdateContributorInsightsInput', 'contributorInsightsAction');
    BuiltValueNullFieldError.checkNotNull(
        tableName, r'UpdateContributorInsightsInput', 'tableName');
  }

  @override
  UpdateContributorInsightsInput rebuild(
          void Function(UpdateContributorInsightsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateContributorInsightsInputBuilder toBuilder() =>
      new UpdateContributorInsightsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateContributorInsightsInput &&
        contributorInsightsAction == other.contributorInsightsAction &&
        indexName == other.indexName &&
        tableName == other.tableName;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, contributorInsightsAction.hashCode), indexName.hashCode),
        tableName.hashCode));
  }
}

class UpdateContributorInsightsInputBuilder
    implements
        Builder<UpdateContributorInsightsInput,
            UpdateContributorInsightsInputBuilder> {
  _$UpdateContributorInsightsInput? _$v;

  _i3.ContributorInsightsAction? _contributorInsightsAction;
  _i3.ContributorInsightsAction? get contributorInsightsAction =>
      _$this._contributorInsightsAction;
  set contributorInsightsAction(
          _i3.ContributorInsightsAction? contributorInsightsAction) =>
      _$this._contributorInsightsAction = contributorInsightsAction;

  String? _indexName;
  String? get indexName => _$this._indexName;
  set indexName(String? indexName) => _$this._indexName = indexName;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  UpdateContributorInsightsInputBuilder() {
    UpdateContributorInsightsInput._init(this);
  }

  UpdateContributorInsightsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contributorInsightsAction = $v.contributorInsightsAction;
      _indexName = $v.indexName;
      _tableName = $v.tableName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateContributorInsightsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateContributorInsightsInput;
  }

  @override
  void update(void Function(UpdateContributorInsightsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateContributorInsightsInput build() => _build();

  _$UpdateContributorInsightsInput _build() {
    final _$result = _$v ??
        new _$UpdateContributorInsightsInput._(
            contributorInsightsAction: BuiltValueNullFieldError.checkNotNull(
                contributorInsightsAction,
                r'UpdateContributorInsightsInput',
                'contributorInsightsAction'),
            indexName: indexName,
            tableName: BuiltValueNullFieldError.checkNotNull(
                tableName, r'UpdateContributorInsightsInput', 'tableName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
