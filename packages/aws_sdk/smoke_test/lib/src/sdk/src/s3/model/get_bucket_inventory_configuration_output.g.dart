// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_bucket_inventory_configuration_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketInventoryConfigurationOutput
    extends GetBucketInventoryConfigurationOutput {
  @override
  final _i3.InventoryConfiguration? inventoryConfiguration;

  factory _$GetBucketInventoryConfigurationOutput(
          [void Function(GetBucketInventoryConfigurationOutputBuilder)?
              updates]) =>
      (new GetBucketInventoryConfigurationOutputBuilder()..update(updates))
          ._build();

  _$GetBucketInventoryConfigurationOutput._({this.inventoryConfiguration})
      : super._();

  @override
  GetBucketInventoryConfigurationOutput rebuild(
          void Function(GetBucketInventoryConfigurationOutputBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketInventoryConfigurationOutputBuilder toBuilder() =>
      new GetBucketInventoryConfigurationOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketInventoryConfigurationOutput &&
        inventoryConfiguration == other.inventoryConfiguration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, inventoryConfiguration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetBucketInventoryConfigurationOutputBuilder
    implements
        Builder<GetBucketInventoryConfigurationOutput,
            GetBucketInventoryConfigurationOutputBuilder> {
  _$GetBucketInventoryConfigurationOutput? _$v;

  _i3.InventoryConfigurationBuilder? _inventoryConfiguration;
  _i3.InventoryConfigurationBuilder get inventoryConfiguration =>
      _$this._inventoryConfiguration ??=
          new _i3.InventoryConfigurationBuilder();
  set inventoryConfiguration(
          _i3.InventoryConfigurationBuilder? inventoryConfiguration) =>
      _$this._inventoryConfiguration = inventoryConfiguration;

  GetBucketInventoryConfigurationOutputBuilder() {
    GetBucketInventoryConfigurationOutput._init(this);
  }

  GetBucketInventoryConfigurationOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _inventoryConfiguration = $v.inventoryConfiguration?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketInventoryConfigurationOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketInventoryConfigurationOutput;
  }

  @override
  void update(
      void Function(GetBucketInventoryConfigurationOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketInventoryConfigurationOutput build() => _build();

  _$GetBucketInventoryConfigurationOutput _build() {
    _$GetBucketInventoryConfigurationOutput _$result;
    try {
      _$result = _$v ??
          new _$GetBucketInventoryConfigurationOutput._(
              inventoryConfiguration: _inventoryConfiguration?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'inventoryConfiguration';
        _inventoryConfiguration?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetBucketInventoryConfigurationOutput',
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
