// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'failed_queued_purchase_deletion.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FailedQueuedPurchaseDeletion extends FailedQueuedPurchaseDeletion {
  @override
  final DeleteQueuedReservedInstancesError? error;
  @override
  final String? reservedInstancesId;

  factory _$FailedQueuedPurchaseDeletion(
          [void Function(FailedQueuedPurchaseDeletionBuilder)? updates]) =>
      (new FailedQueuedPurchaseDeletionBuilder()..update(updates))._build();

  _$FailedQueuedPurchaseDeletion._({this.error, this.reservedInstancesId})
      : super._();

  @override
  FailedQueuedPurchaseDeletion rebuild(
          void Function(FailedQueuedPurchaseDeletionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FailedQueuedPurchaseDeletionBuilder toBuilder() =>
      new FailedQueuedPurchaseDeletionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FailedQueuedPurchaseDeletion &&
        error == other.error &&
        reservedInstancesId == other.reservedInstancesId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, reservedInstancesId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class FailedQueuedPurchaseDeletionBuilder
    implements
        Builder<FailedQueuedPurchaseDeletion,
            FailedQueuedPurchaseDeletionBuilder> {
  _$FailedQueuedPurchaseDeletion? _$v;

  DeleteQueuedReservedInstancesErrorBuilder? _error;
  DeleteQueuedReservedInstancesErrorBuilder get error =>
      _$this._error ??= new DeleteQueuedReservedInstancesErrorBuilder();
  set error(DeleteQueuedReservedInstancesErrorBuilder? error) =>
      _$this._error = error;

  String? _reservedInstancesId;
  String? get reservedInstancesId => _$this._reservedInstancesId;
  set reservedInstancesId(String? reservedInstancesId) =>
      _$this._reservedInstancesId = reservedInstancesId;

  FailedQueuedPurchaseDeletionBuilder();

  FailedQueuedPurchaseDeletionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error?.toBuilder();
      _reservedInstancesId = $v.reservedInstancesId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FailedQueuedPurchaseDeletion other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FailedQueuedPurchaseDeletion;
  }

  @override
  void update(void Function(FailedQueuedPurchaseDeletionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FailedQueuedPurchaseDeletion build() => _build();

  _$FailedQueuedPurchaseDeletion _build() {
    _$FailedQueuedPurchaseDeletion _$result;
    try {
      _$result = _$v ??
          new _$FailedQueuedPurchaseDeletion._(
              error: _error?.build(), reservedInstancesId: reservedInstancesId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'error';
        _error?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FailedQueuedPurchaseDeletion', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
