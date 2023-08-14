// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_queued_reserved_instances_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteQueuedReservedInstancesResult
    extends DeleteQueuedReservedInstancesResult {
  @override
  final _i2.BuiltList<SuccessfulQueuedPurchaseDeletion>?
      successfulQueuedPurchaseDeletions;
  @override
  final _i2.BuiltList<FailedQueuedPurchaseDeletion>?
      failedQueuedPurchaseDeletions;

  factory _$DeleteQueuedReservedInstancesResult(
          [void Function(DeleteQueuedReservedInstancesResultBuilder)?
              updates]) =>
      (new DeleteQueuedReservedInstancesResultBuilder()..update(updates))
          ._build();

  _$DeleteQueuedReservedInstancesResult._(
      {this.successfulQueuedPurchaseDeletions,
      this.failedQueuedPurchaseDeletions})
      : super._();

  @override
  DeleteQueuedReservedInstancesResult rebuild(
          void Function(DeleteQueuedReservedInstancesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteQueuedReservedInstancesResultBuilder toBuilder() =>
      new DeleteQueuedReservedInstancesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteQueuedReservedInstancesResult &&
        successfulQueuedPurchaseDeletions ==
            other.successfulQueuedPurchaseDeletions &&
        failedQueuedPurchaseDeletions == other.failedQueuedPurchaseDeletions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, successfulQueuedPurchaseDeletions.hashCode);
    _$hash = $jc(_$hash, failedQueuedPurchaseDeletions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteQueuedReservedInstancesResultBuilder
    implements
        Builder<DeleteQueuedReservedInstancesResult,
            DeleteQueuedReservedInstancesResultBuilder> {
  _$DeleteQueuedReservedInstancesResult? _$v;

  _i2.ListBuilder<SuccessfulQueuedPurchaseDeletion>?
      _successfulQueuedPurchaseDeletions;
  _i2.ListBuilder<SuccessfulQueuedPurchaseDeletion>
      get successfulQueuedPurchaseDeletions =>
          _$this._successfulQueuedPurchaseDeletions ??=
              new _i2.ListBuilder<SuccessfulQueuedPurchaseDeletion>();
  set successfulQueuedPurchaseDeletions(
          _i2.ListBuilder<SuccessfulQueuedPurchaseDeletion>?
              successfulQueuedPurchaseDeletions) =>
      _$this._successfulQueuedPurchaseDeletions =
          successfulQueuedPurchaseDeletions;

  _i2.ListBuilder<FailedQueuedPurchaseDeletion>? _failedQueuedPurchaseDeletions;
  _i2.ListBuilder<FailedQueuedPurchaseDeletion>
      get failedQueuedPurchaseDeletions =>
          _$this._failedQueuedPurchaseDeletions ??=
              new _i2.ListBuilder<FailedQueuedPurchaseDeletion>();
  set failedQueuedPurchaseDeletions(
          _i2.ListBuilder<FailedQueuedPurchaseDeletion>?
              failedQueuedPurchaseDeletions) =>
      _$this._failedQueuedPurchaseDeletions = failedQueuedPurchaseDeletions;

  DeleteQueuedReservedInstancesResultBuilder();

  DeleteQueuedReservedInstancesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _successfulQueuedPurchaseDeletions =
          $v.successfulQueuedPurchaseDeletions?.toBuilder();
      _failedQueuedPurchaseDeletions =
          $v.failedQueuedPurchaseDeletions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteQueuedReservedInstancesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteQueuedReservedInstancesResult;
  }

  @override
  void update(
      void Function(DeleteQueuedReservedInstancesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteQueuedReservedInstancesResult build() => _build();

  _$DeleteQueuedReservedInstancesResult _build() {
    _$DeleteQueuedReservedInstancesResult _$result;
    try {
      _$result = _$v ??
          new _$DeleteQueuedReservedInstancesResult._(
              successfulQueuedPurchaseDeletions:
                  _successfulQueuedPurchaseDeletions?.build(),
              failedQueuedPurchaseDeletions:
                  _failedQueuedPurchaseDeletions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'successfulQueuedPurchaseDeletions';
        _successfulQueuedPurchaseDeletions?.build();
        _$failedField = 'failedQueuedPurchaseDeletions';
        _failedQueuedPurchaseDeletions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteQueuedReservedInstancesResult',
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
