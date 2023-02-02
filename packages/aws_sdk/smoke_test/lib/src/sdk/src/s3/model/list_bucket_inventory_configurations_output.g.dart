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
    var _$hash = 0;
    _$hash = $jc(_$hash, continuationToken.hashCode);
    _$hash = $jc(_$hash, inventoryConfigurationList.hashCode);
    _$hash = $jc(_$hash, isTruncated.hashCode);
    _$hash = $jc(_$hash, nextContinuationToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
