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
    var _$hash = 0;
    _$hash = $jc(_$hash, s3BucketDestination.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
