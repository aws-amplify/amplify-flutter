// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.inventory_destination;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InventoryDestination extends InventoryDestination {
  @override
  final _i2.InventoryS3BucketDestination s3BucketDestination;

  factory _$InventoryDestination(
          [void Function(InventoryDestinationBuilder)? updates]) =>
      (new InventoryDestinationBuilder()..update(updates))._build();

  _$InventoryDestination._({required this.s3BucketDestination}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        s3BucketDestination, r'InventoryDestination', 's3BucketDestination');
  }

  @override
  InventoryDestination rebuild(
          void Function(InventoryDestinationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InventoryDestinationBuilder toBuilder() =>
      new InventoryDestinationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InventoryDestination &&
        s3BucketDestination == other.s3BucketDestination;
  }

  @override
  int get hashCode {
    return $jf($jc(0, s3BucketDestination.hashCode));
  }
}

class InventoryDestinationBuilder
    implements Builder<InventoryDestination, InventoryDestinationBuilder> {
  _$InventoryDestination? _$v;

  _i2.InventoryS3BucketDestinationBuilder? _s3BucketDestination;
  _i2.InventoryS3BucketDestinationBuilder get s3BucketDestination =>
      _$this._s3BucketDestination ??=
          new _i2.InventoryS3BucketDestinationBuilder();
  set s3BucketDestination(
          _i2.InventoryS3BucketDestinationBuilder? s3BucketDestination) =>
      _$this._s3BucketDestination = s3BucketDestination;

  InventoryDestinationBuilder() {
    InventoryDestination._init(this);
  }

  InventoryDestinationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _s3BucketDestination = $v.s3BucketDestination.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InventoryDestination other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InventoryDestination;
  }

  @override
  void update(void Function(InventoryDestinationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InventoryDestination build() => _build();

  _$InventoryDestination _build() {
    _$InventoryDestination _$result;
    try {
      _$result = _$v ??
          new _$InventoryDestination._(
              s3BucketDestination: s3BucketDestination.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 's3BucketDestination';
        s3BucketDestination.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InventoryDestination', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
