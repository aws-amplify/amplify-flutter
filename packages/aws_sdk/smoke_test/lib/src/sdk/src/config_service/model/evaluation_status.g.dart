// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evaluation_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EvaluationStatus extends EvaluationStatus {
  @override
  final _i2.ResourceEvaluationStatus status;
  @override
  final String? failureReason;

  factory _$EvaluationStatus(
          [void Function(EvaluationStatusBuilder)? updates]) =>
      (new EvaluationStatusBuilder()..update(updates))._build();

  _$EvaluationStatus._({required this.status, this.failureReason}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        status, r'EvaluationStatus', 'status');
  }

  @override
  EvaluationStatus rebuild(void Function(EvaluationStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EvaluationStatusBuilder toBuilder() =>
      new EvaluationStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EvaluationStatus &&
        status == other.status &&
        failureReason == other.failureReason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, failureReason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EvaluationStatusBuilder
    implements Builder<EvaluationStatus, EvaluationStatusBuilder> {
  _$EvaluationStatus? _$v;

  _i2.ResourceEvaluationStatus? _status;
  _i2.ResourceEvaluationStatus? get status => _$this._status;
  set status(_i2.ResourceEvaluationStatus? status) => _$this._status = status;

  String? _failureReason;
  String? get failureReason => _$this._failureReason;
  set failureReason(String? failureReason) =>
      _$this._failureReason = failureReason;

  EvaluationStatusBuilder() {
    EvaluationStatus._init(this);
  }

  EvaluationStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _failureReason = $v.failureReason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EvaluationStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EvaluationStatus;
  }

  @override
  void update(void Function(EvaluationStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EvaluationStatus build() => _build();

  _$EvaluationStatus _build() {
    final _$result = _$v ??
        new _$EvaluationStatus._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'EvaluationStatus', 'status'),
            failureReason: failureReason);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
