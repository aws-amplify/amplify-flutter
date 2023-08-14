// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_snapshot_attribute_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResetSnapshotAttributeRequest extends ResetSnapshotAttributeRequest {
  @override
  final SnapshotAttributeName? attribute;
  @override
  final String? snapshotId;
  @override
  final bool dryRun;

  factory _$ResetSnapshotAttributeRequest(
          [void Function(ResetSnapshotAttributeRequestBuilder)? updates]) =>
      (new ResetSnapshotAttributeRequestBuilder()..update(updates))._build();

  _$ResetSnapshotAttributeRequest._(
      {this.attribute, this.snapshotId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ResetSnapshotAttributeRequest', 'dryRun');
  }

  @override
  ResetSnapshotAttributeRequest rebuild(
          void Function(ResetSnapshotAttributeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResetSnapshotAttributeRequestBuilder toBuilder() =>
      new ResetSnapshotAttributeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResetSnapshotAttributeRequest &&
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

class ResetSnapshotAttributeRequestBuilder
    implements
        Builder<ResetSnapshotAttributeRequest,
            ResetSnapshotAttributeRequestBuilder> {
  _$ResetSnapshotAttributeRequest? _$v;

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

  ResetSnapshotAttributeRequestBuilder() {
    ResetSnapshotAttributeRequest._init(this);
  }

  ResetSnapshotAttributeRequestBuilder get _$this {
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
  void replace(ResetSnapshotAttributeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResetSnapshotAttributeRequest;
  }

  @override
  void update(void Function(ResetSnapshotAttributeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResetSnapshotAttributeRequest build() => _build();

  _$ResetSnapshotAttributeRequest _build() {
    final _$result = _$v ??
        new _$ResetSnapshotAttributeRequest._(
            attribute: attribute,
            snapshotId: snapshotId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'ResetSnapshotAttributeRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
