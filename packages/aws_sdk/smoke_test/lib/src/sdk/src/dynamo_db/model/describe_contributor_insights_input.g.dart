// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_contributor_insights_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeContributorInsightsInput
    extends DescribeContributorInsightsInput {
  @override
  final String tableName;
  @override
  final String? indexName;

  factory _$DescribeContributorInsightsInput(
          [void Function(DescribeContributorInsightsInputBuilder)? updates]) =>
      (new DescribeContributorInsightsInputBuilder()..update(updates))._build();

  _$DescribeContributorInsightsInput._(
      {required this.tableName, this.indexName})
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
        tableName == other.tableName &&
        indexName == other.indexName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jc(_$hash, indexName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeContributorInsightsInputBuilder
    implements
        Builder<DescribeContributorInsightsInput,
            DescribeContributorInsightsInputBuilder> {
  _$DescribeContributorInsightsInput? _$v;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  String? _indexName;
  String? get indexName => _$this._indexName;
  set indexName(String? indexName) => _$this._indexName = indexName;

  DescribeContributorInsightsInputBuilder();

  DescribeContributorInsightsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableName = $v.tableName;
      _indexName = $v.indexName;
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
            tableName: BuiltValueNullFieldError.checkNotNull(
                tableName, r'DescribeContributorInsightsInput', 'tableName'),
            indexName: indexName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
