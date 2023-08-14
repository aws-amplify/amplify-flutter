// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_snapshot_attribute_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeSnapshotAttributeResult
    extends DescribeSnapshotAttributeResult {
  @override
  final _i2.BuiltList<CreateVolumePermission>? createVolumePermissions;
  @override
  final _i2.BuiltList<ProductCode>? productCodes;
  @override
  final String? snapshotId;

  factory _$DescribeSnapshotAttributeResult(
          [void Function(DescribeSnapshotAttributeResultBuilder)? updates]) =>
      (new DescribeSnapshotAttributeResultBuilder()..update(updates))._build();

  _$DescribeSnapshotAttributeResult._(
      {this.createVolumePermissions, this.productCodes, this.snapshotId})
      : super._();

  @override
  DescribeSnapshotAttributeResult rebuild(
          void Function(DescribeSnapshotAttributeResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeSnapshotAttributeResultBuilder toBuilder() =>
      new DescribeSnapshotAttributeResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeSnapshotAttributeResult &&
        createVolumePermissions == other.createVolumePermissions &&
        productCodes == other.productCodes &&
        snapshotId == other.snapshotId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createVolumePermissions.hashCode);
    _$hash = $jc(_$hash, productCodes.hashCode);
    _$hash = $jc(_$hash, snapshotId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeSnapshotAttributeResultBuilder
    implements
        Builder<DescribeSnapshotAttributeResult,
            DescribeSnapshotAttributeResultBuilder> {
  _$DescribeSnapshotAttributeResult? _$v;

  _i2.ListBuilder<CreateVolumePermission>? _createVolumePermissions;
  _i2.ListBuilder<CreateVolumePermission> get createVolumePermissions =>
      _$this._createVolumePermissions ??=
          new _i2.ListBuilder<CreateVolumePermission>();
  set createVolumePermissions(
          _i2.ListBuilder<CreateVolumePermission>? createVolumePermissions) =>
      _$this._createVolumePermissions = createVolumePermissions;

  _i2.ListBuilder<ProductCode>? _productCodes;
  _i2.ListBuilder<ProductCode> get productCodes =>
      _$this._productCodes ??= new _i2.ListBuilder<ProductCode>();
  set productCodes(_i2.ListBuilder<ProductCode>? productCodes) =>
      _$this._productCodes = productCodes;

  String? _snapshotId;
  String? get snapshotId => _$this._snapshotId;
  set snapshotId(String? snapshotId) => _$this._snapshotId = snapshotId;

  DescribeSnapshotAttributeResultBuilder();

  DescribeSnapshotAttributeResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createVolumePermissions = $v.createVolumePermissions?.toBuilder();
      _productCodes = $v.productCodes?.toBuilder();
      _snapshotId = $v.snapshotId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeSnapshotAttributeResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeSnapshotAttributeResult;
  }

  @override
  void update(void Function(DescribeSnapshotAttributeResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeSnapshotAttributeResult build() => _build();

  _$DescribeSnapshotAttributeResult _build() {
    _$DescribeSnapshotAttributeResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeSnapshotAttributeResult._(
              createVolumePermissions: _createVolumePermissions?.build(),
              productCodes: _productCodes?.build(),
              snapshotId: snapshotId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createVolumePermissions';
        _createVolumePermissions?.build();
        _$failedField = 'productCodes';
        _productCodes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeSnapshotAttributeResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
