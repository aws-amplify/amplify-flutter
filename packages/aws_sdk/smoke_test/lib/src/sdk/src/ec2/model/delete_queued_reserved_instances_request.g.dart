// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_queued_reserved_instances_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteQueuedReservedInstancesRequest
    extends DeleteQueuedReservedInstancesRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<String>? reservedInstancesIds;

  factory _$DeleteQueuedReservedInstancesRequest(
          [void Function(DeleteQueuedReservedInstancesRequestBuilder)?
              updates]) =>
      (new DeleteQueuedReservedInstancesRequestBuilder()..update(updates))
          ._build();

  _$DeleteQueuedReservedInstancesRequest._(
      {required this.dryRun, this.reservedInstancesIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteQueuedReservedInstancesRequest', 'dryRun');
  }

  @override
  DeleteQueuedReservedInstancesRequest rebuild(
          void Function(DeleteQueuedReservedInstancesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteQueuedReservedInstancesRequestBuilder toBuilder() =>
      new DeleteQueuedReservedInstancesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteQueuedReservedInstancesRequest &&
        dryRun == other.dryRun &&
        reservedInstancesIds == other.reservedInstancesIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, reservedInstancesIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteQueuedReservedInstancesRequestBuilder
    implements
        Builder<DeleteQueuedReservedInstancesRequest,
            DeleteQueuedReservedInstancesRequestBuilder> {
  _$DeleteQueuedReservedInstancesRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<String>? _reservedInstancesIds;
  _i3.ListBuilder<String> get reservedInstancesIds =>
      _$this._reservedInstancesIds ??= new _i3.ListBuilder<String>();
  set reservedInstancesIds(_i3.ListBuilder<String>? reservedInstancesIds) =>
      _$this._reservedInstancesIds = reservedInstancesIds;

  DeleteQueuedReservedInstancesRequestBuilder() {
    DeleteQueuedReservedInstancesRequest._init(this);
  }

  DeleteQueuedReservedInstancesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _reservedInstancesIds = $v.reservedInstancesIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteQueuedReservedInstancesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteQueuedReservedInstancesRequest;
  }

  @override
  void update(
      void Function(DeleteQueuedReservedInstancesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteQueuedReservedInstancesRequest build() => _build();

  _$DeleteQueuedReservedInstancesRequest _build() {
    _$DeleteQueuedReservedInstancesRequest _$result;
    try {
      _$result = _$v ??
          new _$DeleteQueuedReservedInstancesRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DeleteQueuedReservedInstancesRequest', 'dryRun'),
              reservedInstancesIds: _reservedInstancesIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'reservedInstancesIds';
        _reservedInstancesIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteQueuedReservedInstancesRequest',
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
