// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_fleets_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteFleetsRequest extends DeleteFleetsRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<String>? fleetIds;
  @override
  final bool terminateInstances;

  factory _$DeleteFleetsRequest(
          [void Function(DeleteFleetsRequestBuilder)? updates]) =>
      (new DeleteFleetsRequestBuilder()..update(updates))._build();

  _$DeleteFleetsRequest._(
      {required this.dryRun, this.fleetIds, required this.terminateInstances})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteFleetsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        terminateInstances, r'DeleteFleetsRequest', 'terminateInstances');
  }

  @override
  DeleteFleetsRequest rebuild(
          void Function(DeleteFleetsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteFleetsRequestBuilder toBuilder() =>
      new DeleteFleetsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteFleetsRequest &&
        dryRun == other.dryRun &&
        fleetIds == other.fleetIds &&
        terminateInstances == other.terminateInstances;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, fleetIds.hashCode);
    _$hash = $jc(_$hash, terminateInstances.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteFleetsRequestBuilder
    implements Builder<DeleteFleetsRequest, DeleteFleetsRequestBuilder> {
  _$DeleteFleetsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<String>? _fleetIds;
  _i3.ListBuilder<String> get fleetIds =>
      _$this._fleetIds ??= new _i3.ListBuilder<String>();
  set fleetIds(_i3.ListBuilder<String>? fleetIds) =>
      _$this._fleetIds = fleetIds;

  bool? _terminateInstances;
  bool? get terminateInstances => _$this._terminateInstances;
  set terminateInstances(bool? terminateInstances) =>
      _$this._terminateInstances = terminateInstances;

  DeleteFleetsRequestBuilder() {
    DeleteFleetsRequest._init(this);
  }

  DeleteFleetsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _fleetIds = $v.fleetIds?.toBuilder();
      _terminateInstances = $v.terminateInstances;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteFleetsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteFleetsRequest;
  }

  @override
  void update(void Function(DeleteFleetsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteFleetsRequest build() => _build();

  _$DeleteFleetsRequest _build() {
    _$DeleteFleetsRequest _$result;
    try {
      _$result = _$v ??
          new _$DeleteFleetsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DeleteFleetsRequest', 'dryRun'),
              fleetIds: _fleetIds?.build(),
              terminateInstances: BuiltValueNullFieldError.checkNotNull(
                  terminateInstances,
                  r'DeleteFleetsRequest',
                  'terminateInstances'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fleetIds';
        _fleetIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteFleetsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
