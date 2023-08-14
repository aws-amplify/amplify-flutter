// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_scheduled_instances_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PurchaseScheduledInstancesResult
    extends PurchaseScheduledInstancesResult {
  @override
  final _i2.BuiltList<ScheduledInstance>? scheduledInstanceSet;

  factory _$PurchaseScheduledInstancesResult(
          [void Function(PurchaseScheduledInstancesResultBuilder)? updates]) =>
      (new PurchaseScheduledInstancesResultBuilder()..update(updates))._build();

  _$PurchaseScheduledInstancesResult._({this.scheduledInstanceSet}) : super._();

  @override
  PurchaseScheduledInstancesResult rebuild(
          void Function(PurchaseScheduledInstancesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PurchaseScheduledInstancesResultBuilder toBuilder() =>
      new PurchaseScheduledInstancesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PurchaseScheduledInstancesResult &&
        scheduledInstanceSet == other.scheduledInstanceSet;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, scheduledInstanceSet.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PurchaseScheduledInstancesResultBuilder
    implements
        Builder<PurchaseScheduledInstancesResult,
            PurchaseScheduledInstancesResultBuilder> {
  _$PurchaseScheduledInstancesResult? _$v;

  _i2.ListBuilder<ScheduledInstance>? _scheduledInstanceSet;
  _i2.ListBuilder<ScheduledInstance> get scheduledInstanceSet =>
      _$this._scheduledInstanceSet ??= new _i2.ListBuilder<ScheduledInstance>();
  set scheduledInstanceSet(
          _i2.ListBuilder<ScheduledInstance>? scheduledInstanceSet) =>
      _$this._scheduledInstanceSet = scheduledInstanceSet;

  PurchaseScheduledInstancesResultBuilder();

  PurchaseScheduledInstancesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _scheduledInstanceSet = $v.scheduledInstanceSet?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PurchaseScheduledInstancesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PurchaseScheduledInstancesResult;
  }

  @override
  void update(void Function(PurchaseScheduledInstancesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PurchaseScheduledInstancesResult build() => _build();

  _$PurchaseScheduledInstancesResult _build() {
    _$PurchaseScheduledInstancesResult _$result;
    try {
      _$result = _$v ??
          new _$PurchaseScheduledInstancesResult._(
              scheduledInstanceSet: _scheduledInstanceSet?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'scheduledInstanceSet';
        _scheduledInstanceSet?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PurchaseScheduledInstancesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
