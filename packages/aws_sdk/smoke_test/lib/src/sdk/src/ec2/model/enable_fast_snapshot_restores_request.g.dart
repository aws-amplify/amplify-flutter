// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enable_fast_snapshot_restores_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnableFastSnapshotRestoresRequest
    extends EnableFastSnapshotRestoresRequest {
  @override
  final _i3.BuiltList<String>? availabilityZones;
  @override
  final _i3.BuiltList<String>? sourceSnapshotIds;
  @override
  final bool dryRun;

  factory _$EnableFastSnapshotRestoresRequest(
          [void Function(EnableFastSnapshotRestoresRequestBuilder)? updates]) =>
      (new EnableFastSnapshotRestoresRequestBuilder()..update(updates))
          ._build();

  _$EnableFastSnapshotRestoresRequest._(
      {this.availabilityZones, this.sourceSnapshotIds, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'EnableFastSnapshotRestoresRequest', 'dryRun');
  }

  @override
  EnableFastSnapshotRestoresRequest rebuild(
          void Function(EnableFastSnapshotRestoresRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnableFastSnapshotRestoresRequestBuilder toBuilder() =>
      new EnableFastSnapshotRestoresRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnableFastSnapshotRestoresRequest &&
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

class EnableFastSnapshotRestoresRequestBuilder
    implements
        Builder<EnableFastSnapshotRestoresRequest,
            EnableFastSnapshotRestoresRequestBuilder> {
  _$EnableFastSnapshotRestoresRequest? _$v;

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

  EnableFastSnapshotRestoresRequestBuilder() {
    EnableFastSnapshotRestoresRequest._init(this);
  }

  EnableFastSnapshotRestoresRequestBuilder get _$this {
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
  void replace(EnableFastSnapshotRestoresRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnableFastSnapshotRestoresRequest;
  }

  @override
  void update(
      void Function(EnableFastSnapshotRestoresRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnableFastSnapshotRestoresRequest build() => _build();

  _$EnableFastSnapshotRestoresRequest _build() {
    _$EnableFastSnapshotRestoresRequest _$result;
    try {
      _$result = _$v ??
          new _$EnableFastSnapshotRestoresRequest._(
              availabilityZones: _availabilityZones?.build(),
              sourceSnapshotIds: _sourceSnapshotIds?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'EnableFastSnapshotRestoresRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'availabilityZones';
        _availabilityZones?.build();
        _$failedField = 'sourceSnapshotIds';
        _sourceSnapshotIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EnableFastSnapshotRestoresRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
