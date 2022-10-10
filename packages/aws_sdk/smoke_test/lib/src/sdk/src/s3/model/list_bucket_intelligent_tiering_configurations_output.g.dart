// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.list_bucket_intelligent_tiering_configurations_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListBucketIntelligentTieringConfigurationsOutput
    extends ListBucketIntelligentTieringConfigurationsOutput {
  @override
  final String? continuationToken;
  @override
  final _i3.BuiltList<_i2.IntelligentTieringConfiguration>?
      intelligentTieringConfigurationList;
  @override
  final bool? isTruncated;
  @override
  final String? nextContinuationToken;

  factory _$ListBucketIntelligentTieringConfigurationsOutput(
          [void Function(
                  ListBucketIntelligentTieringConfigurationsOutputBuilder)?
              updates]) =>
      (new ListBucketIntelligentTieringConfigurationsOutputBuilder()
            ..update(updates))
          ._build();

  _$ListBucketIntelligentTieringConfigurationsOutput._(
      {this.continuationToken,
      this.intelligentTieringConfigurationList,
      this.isTruncated,
      this.nextContinuationToken})
      : super._();

  @override
  ListBucketIntelligentTieringConfigurationsOutput rebuild(
          void Function(ListBucketIntelligentTieringConfigurationsOutputBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListBucketIntelligentTieringConfigurationsOutputBuilder toBuilder() =>
      new ListBucketIntelligentTieringConfigurationsOutputBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListBucketIntelligentTieringConfigurationsOutput &&
        continuationToken == other.continuationToken &&
        intelligentTieringConfigurationList ==
            other.intelligentTieringConfigurationList &&
        isTruncated == other.isTruncated &&
        nextContinuationToken == other.nextContinuationToken;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc(0, continuationToken.hashCode),
                intelligentTieringConfigurationList.hashCode),
            isTruncated.hashCode),
        nextContinuationToken.hashCode));
  }
}

class ListBucketIntelligentTieringConfigurationsOutputBuilder
    implements
        Builder<ListBucketIntelligentTieringConfigurationsOutput,
            ListBucketIntelligentTieringConfigurationsOutputBuilder> {
  _$ListBucketIntelligentTieringConfigurationsOutput? _$v;

  String? _continuationToken;
  String? get continuationToken => _$this._continuationToken;
  set continuationToken(String? continuationToken) =>
      _$this._continuationToken = continuationToken;

  _i3.ListBuilder<_i2.IntelligentTieringConfiguration>?
      _intelligentTieringConfigurationList;
  _i3.ListBuilder<_i2.IntelligentTieringConfiguration>
      get intelligentTieringConfigurationList =>
          _$this._intelligentTieringConfigurationList ??=
              new _i3.ListBuilder<_i2.IntelligentTieringConfiguration>();
  set intelligentTieringConfigurationList(
          _i3.ListBuilder<_i2.IntelligentTieringConfiguration>?
              intelligentTieringConfigurationList) =>
      _$this._intelligentTieringConfigurationList =
          intelligentTieringConfigurationList;

  bool? _isTruncated;
  bool? get isTruncated => _$this._isTruncated;
  set isTruncated(bool? isTruncated) => _$this._isTruncated = isTruncated;

  String? _nextContinuationToken;
  String? get nextContinuationToken => _$this._nextContinuationToken;
  set nextContinuationToken(String? nextContinuationToken) =>
      _$this._nextContinuationToken = nextContinuationToken;

  ListBucketIntelligentTieringConfigurationsOutputBuilder() {
    ListBucketIntelligentTieringConfigurationsOutput._init(this);
  }

  ListBucketIntelligentTieringConfigurationsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _continuationToken = $v.continuationToken;
      _intelligentTieringConfigurationList =
          $v.intelligentTieringConfigurationList?.toBuilder();
      _isTruncated = $v.isTruncated;
      _nextContinuationToken = $v.nextContinuationToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListBucketIntelligentTieringConfigurationsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListBucketIntelligentTieringConfigurationsOutput;
  }

  @override
  void update(
      void Function(ListBucketIntelligentTieringConfigurationsOutputBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ListBucketIntelligentTieringConfigurationsOutput build() => _build();

  _$ListBucketIntelligentTieringConfigurationsOutput _build() {
    _$ListBucketIntelligentTieringConfigurationsOutput _$result;
    try {
      _$result = _$v ??
          new _$ListBucketIntelligentTieringConfigurationsOutput._(
              continuationToken: continuationToken,
              intelligentTieringConfigurationList:
                  _intelligentTieringConfigurationList?.build(),
              isTruncated: isTruncated,
              nextContinuationToken: nextContinuationToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'intelligentTieringConfigurationList';
        _intelligentTieringConfigurationList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListBucketIntelligentTieringConfigurationsOutput',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
