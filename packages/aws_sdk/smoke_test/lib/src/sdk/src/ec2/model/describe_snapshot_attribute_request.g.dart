// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_snapshot_attribute_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeSnapshotAttributeRequest
    extends DescribeSnapshotAttributeRequest {
  @override
  final SnapshotAttributeName? attribute;
  @override
  final String? snapshotId;
  @override
  final bool dryRun;

  factory _$DescribeSnapshotAttributeRequest(
          [void Function(DescribeSnapshotAttributeRequestBuilder)? updates]) =>
      (new DescribeSnapshotAttributeRequestBuilder()..update(updates))._build();

  _$DescribeSnapshotAttributeRequest._(
      {this.attribute, this.snapshotId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeSnapshotAttributeRequest', 'dryRun');
  }

  @override
  DescribeSnapshotAttributeRequest rebuild(
          void Function(DescribeSnapshotAttributeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeSnapshotAttributeRequestBuilder toBuilder() =>
      new DescribeSnapshotAttributeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeSnapshotAttributeRequest &&
        attribute == other.attribute &&
        snapshotId == other.snapshotId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attribute.hashCode);
    _$hash = $jc(_$hash, snapshotId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeSnapshotAttributeRequestBuilder
    implements
        Builder<DescribeSnapshotAttributeRequest,
            DescribeSnapshotAttributeRequestBuilder> {
  _$DescribeSnapshotAttributeRequest? _$v;

  SnapshotAttributeName? _attribute;
  SnapshotAttributeName? get attribute => _$this._attribute;
  set attribute(SnapshotAttributeName? attribute) =>
      _$this._attribute = attribute;

  String? _snapshotId;
  String? get snapshotId => _$this._snapshotId;
  set snapshotId(String? snapshotId) => _$this._snapshotId = snapshotId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DescribeSnapshotAttributeRequestBuilder() {
    DescribeSnapshotAttributeRequest._init(this);
  }

  DescribeSnapshotAttributeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attribute = $v.attribute;
      _snapshotId = $v.snapshotId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeSnapshotAttributeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeSnapshotAttributeRequest;
  }

  @override
  void update(void Function(DescribeSnapshotAttributeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeSnapshotAttributeRequest build() => _build();

  _$DescribeSnapshotAttributeRequest _build() {
    final _$result = _$v ??
        new _$DescribeSnapshotAttributeRequest._(
            attribute: attribute,
            snapshotId: snapshotId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DescribeSnapshotAttributeRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
