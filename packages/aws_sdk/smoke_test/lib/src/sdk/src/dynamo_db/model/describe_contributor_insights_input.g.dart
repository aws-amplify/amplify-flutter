// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.describe_contributor_insights_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeContributorInsightsInput
    extends DescribeContributorInsightsInput {
  @override
  final String? indexName;
  @override
  final String tableName;

  factory _$DescribeContributorInsightsInput(
          [void Function(DescribeContributorInsightsInputBuilder)? updates]) =>
      (new DescribeContributorInsightsInputBuilder()..update(updates))._build();

  _$DescribeContributorInsightsInput._(
      {this.indexName, required this.tableName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tableName, r'DescribeContributorInsightsInput', 'tableName');
  }

  @override
  DescribeContributorInsightsInput rebuild(
          void Function(DescribeContributorInsightsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeContributorInsightsInputBuilder toBuilder() =>
      new DescribeContributorInsightsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeContributorInsightsInput &&
        indexName == other.indexName &&
        tableName == other.tableName;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, indexName.hashCode), tableName.hashCode));
  }
}

class DescribeContributorInsightsInputBuilder
    implements
        Builder<DescribeContributorInsightsInput,
            DescribeContributorInsightsInputBuilder> {
  _$DescribeContributorInsightsInput? _$v;

  String? _indexName;
  String? get indexName => _$this._indexName;
  set indexName(String? indexName) => _$this._indexName = indexName;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  DescribeContributorInsightsInputBuilder() {
    DescribeContributorInsightsInput._init(this);
  }

  DescribeContributorInsightsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _indexName = $v.indexName;
      _tableName = $v.tableName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeContributorInsightsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeContributorInsightsInput;
  }

  @override
  void update(void Function(DescribeContributorInsightsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeContributorInsightsInput build() => _build();

  _$DescribeContributorInsightsInput _build() {
    final _$result = _$v ??
        new _$DescribeContributorInsightsInput._(
            indexName: indexName,
            tableName: BuiltValueNullFieldError.checkNotNull(
                tableName, r'DescribeContributorInsightsInput', 'tableName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
