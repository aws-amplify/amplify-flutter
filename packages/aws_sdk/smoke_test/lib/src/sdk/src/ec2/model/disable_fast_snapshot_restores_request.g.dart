// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disable_fast_snapshot_restores_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisableFastSnapshotRestoresRequest
    extends DisableFastSnapshotRestoresRequest {
  @override
  final _i3.BuiltList<String>? availabilityZones;
  @override
  final _i3.BuiltList<String>? sourceSnapshotIds;
  @override
  final bool dryRun;

  factory _$DisableFastSnapshotRestoresRequest(
          [void Function(DisableFastSnapshotRestoresRequestBuilder)?
              updates]) =>
      (new DisableFastSnapshotRestoresRequestBuilder()..update(updates))
          ._build();

  _$DisableFastSnapshotRestoresRequest._(
      {this.availabilityZones, this.sourceSnapshotIds, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DisableFastSnapshotRestoresRequest', 'dryRun');
  }

  @override
  DisableFastSnapshotRestoresRequest rebuild(
          void Function(DisableFastSnapshotRestoresRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisableFastSnapshotRestoresRequestBuilder toBuilder() =>
      new DisableFastSnapshotRestoresRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisableFastSnapshotRestoresRequest &&
        availabilityZones == other.availabilityZones &&
        sourceSnapshotIds == other.sourceSnapshotIds &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, availabilityZones.hashCode);
    _$hash = $jc(_$hash, sourceSnapshotIds.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisableFastSnapshotRestoresRequestBuilder
    implements
        Builder<DisableFastSnapshotRestoresRequest,
            DisableFastSnapshotRestoresRequestBuilder> {
  _$DisableFastSnapshotRestoresRequest? _$v;

  _i3.ListBuilder<String>? _availabilityZones;
  _i3.ListBuilder<String> get availabilityZones =>
      _$this._availabilityZones ??= new _i3.ListBuilder<String>();
  set availabilityZones(_i3.ListBuilder<String>? availabilityZones) =>
      _$this._availabilityZones = availabilityZones;

  _i3.ListBuilder<String>? _sourceSnapshotIds;
  _i3.ListBuilder<String> get sourceSnapshotIds =>
      _$this._sourceSnapshotIds ??= new _i3.ListBuilder<String>();
  set sourceSnapshotIds(_i3.ListBuilder<String>? sourceSnapshotIds) =>
      _$this._sourceSnapshotIds = sourceSnapshotIds;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DisableFastSnapshotRestoresRequestBuilder() {
    DisableFastSnapshotRestoresRequest._init(this);
  }

  DisableFastSnapshotRestoresRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _availabilityZones = $v.availabilityZones?.toBuilder();
      _sourceSnapshotIds = $v.sourceSnapshotIds?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisableFastSnapshotRestoresRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisableFastSnapshotRestoresRequest;
  }

  @override
  void update(
      void Function(DisableFastSnapshotRestoresRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisableFastSnapshotRestoresRequest build() => _build();

  _$DisableFastSnapshotRestoresRequest _build() {
    _$DisableFastSnapshotRestoresRequest _$result;
    try {
      _$result = _$v ??
          new _$DisableFastSnapshotRestoresRequest._(
              availabilityZones: _availabilityZones?.build(),
              sourceSnapshotIds: _sourceSnapshotIds?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DisableFastSnapshotRestoresRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'availabilityZones';
        _availabilityZones?.build();
        _$failedField = 'sourceSnapshotIds';
        _sourceSnapshotIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DisableFastSnapshotRestoresRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
