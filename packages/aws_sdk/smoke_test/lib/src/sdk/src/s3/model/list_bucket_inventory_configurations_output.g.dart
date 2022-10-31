// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.list_bucket_inventory_configurations_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListBucketInventoryConfigurationsOutput
    extends ListBucketInventoryConfigurationsOutput {
  @override
  final String? continuationToken;
  @override
  final _i3.BuiltList<_i2.InventoryConfiguration>? inventoryConfigurationList;
  @override
  final bool? isTruncated;
  @override
  final String? nextContinuationToken;

  factory _$ListBucketInventoryConfigurationsOutput(
          [void Function(ListBucketInventoryConfigurationsOutputBuilder)?
              updates]) =>
      (new ListBucketInventoryConfigurationsOutputBuilder()..update(updates))
          ._build();

  _$ListBucketInventoryConfigurationsOutput._(
      {this.continuationToken,
      this.inventoryConfigurationList,
      this.isTruncated,
      this.nextContinuationToken})
      : super._();

  @override
  ListBucketInventoryConfigurationsOutput rebuild(
          void Function(ListBucketInventoryConfigurationsOutputBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListBucketInventoryConfigurationsOutputBuilder toBuilder() =>
      new ListBucketInventoryConfigurationsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListBucketInventoryConfigurationsOutput &&
        continuationToken == other.continuationToken &&
        inventoryConfigurationList == other.inventoryConfigurationList &&
        isTruncated == other.isTruncated &&
        nextContinuationToken == other.nextContinuationToken;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc(0, continuationToken.hashCode),
                inventoryConfigurationList.hashCode),
            isTruncated.hashCode),
        nextContinuationToken.hashCode));
  }
}

class ListBucketInventoryConfigurationsOutputBuilder
    implements
        Builder<ListBucketInventoryConfigurationsOutput,
            ListBucketInventoryConfigurationsOutputBuilder> {
  _$ListBucketInventoryConfigurationsOutput? _$v;

  String? _continuationToken;
  String? get continuationToken => _$this._continuationToken;
  set continuationToken(String? continuationToken) =>
      _$this._continuationToken = continuationToken;

  _i3.ListBuilder<_i2.InventoryConfiguration>? _inventoryConfigurationList;
  _i3.ListBuilder<_i2.InventoryConfiguration> get inventoryConfigurationList =>
      _$this._inventoryConfigurationList ??=
          new _i3.ListBuilder<_i2.InventoryConfiguration>();
  set inventoryConfigurationList(
          _i3.ListBuilder<_i2.InventoryConfiguration>?
              inventoryConfigurationList) =>
      _$this._inventoryConfigurationList = inventoryConfigurationList;

  bool? _isTruncated;
  bool? get isTruncated => _$this._isTruncated;
  set isTruncated(bool? isTruncated) => _$this._isTruncated = isTruncated;

  String? _nextContinuationToken;
  String? get nextContinuationToken => _$this._nextContinuationToken;
  set nextContinuationToken(String? nextContinuationToken) =>
      _$this._nextContinuationToken = nextContinuationToken;

  ListBucketInventoryConfigurationsOutputBuilder() {
    ListBucketInventoryConfigurationsOutput._init(this);
  }

  ListBucketInventoryConfigurationsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _continuationToken = $v.continuationToken;
      _inventoryConfigurationList = $v.inventoryConfigurationList?.toBuilder();
      _isTruncated = $v.isTruncated;
      _nextContinuationToken = $v.nextContinuationToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListBucketInventoryConfigurationsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListBucketInventoryConfigurationsOutput;
  }

  @override
  void update(
      void Function(ListBucketInventoryConfigurationsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListBucketInventoryConfigurationsOutput build() => _build();

  _$ListBucketInventoryConfigurationsOutput _build() {
    _$ListBucketInventoryConfigurationsOutput _$result;
    try {
      _$result = _$v ??
          new _$ListBucketInventoryConfigurationsOutput._(
              continuationToken: continuationToken,
              inventoryConfigurationList: _inventoryConfigurationList?.build(),
              isTruncated: isTruncated,
              nextContinuationToken: nextContinuationToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'inventoryConfigurationList';
        _inventoryConfigurationList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListBucketInventoryConfigurationsOutput',
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
