// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stack_set_operation_status_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StackSetOperationStatusDetails extends StackSetOperationStatusDetails {
  @override
  final int failedStackInstancesCount;

  factory _$StackSetOperationStatusDetails(
          [void Function(StackSetOperationStatusDetailsBuilder)? updates]) =>
      (new StackSetOperationStatusDetailsBuilder()..update(updates))._build();

  _$StackSetOperationStatusDetails._({required this.failedStackInstancesCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(failedStackInstancesCount,
        r'StackSetOperationStatusDetails', 'failedStackInstancesCount');
  }

  @override
  StackSetOperationStatusDetails rebuild(
          void Function(StackSetOperationStatusDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StackSetOperationStatusDetailsBuilder toBuilder() =>
      new StackSetOperationStatusDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StackSetOperationStatusDetails &&
        failedStackInstancesCount == other.failedStackInstancesCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, failedStackInstancesCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StackSetOperationStatusDetailsBuilder
    implements
        Builder<StackSetOperationStatusDetails,
            StackSetOperationStatusDetailsBuilder> {
  _$StackSetOperationStatusDetails? _$v;

  int? _failedStackInstancesCount;
  int? get failedStackInstancesCount => _$this._failedStackInstancesCount;
  set failedStackInstancesCount(int? failedStackInstancesCount) =>
      _$this._failedStackInstancesCount = failedStackInstancesCount;

  StackSetOperationStatusDetailsBuilder() {
    StackSetOperationStatusDetails._init(this);
  }

  StackSetOperationStatusDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _failedStackInstancesCount = $v.failedStackInstancesCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StackSetOperationStatusDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StackSetOperationStatusDetails;
  }

  @override
  void update(void Function(StackSetOperationStatusDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StackSetOperationStatusDetails build() => _build();

  _$StackSetOperationStatusDetails _build() {
    final _$result = _$v ??
        new _$StackSetOperationStatusDetails._(
            failedStackInstancesCount: BuiltValueNullFieldError.checkNotNull(
                failedStackInstancesCount,
                r'StackSetOperationStatusDetails',
                'failedStackInstancesCount'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
