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
    return $jf($jc(0, inventoryConfiguration.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
