// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.stack_instance_comprehensive_status;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StackInstanceComprehensiveStatus
    extends StackInstanceComprehensiveStatus {
  @override
  final _i2.StackInstanceDetailedStatus? detailedStatus;

  factory _$StackInstanceComprehensiveStatus(
          [void Function(StackInstanceComprehensiveStatusBuilder)? updates]) =>
      (new StackInstanceComprehensiveStatusBuilder()..update(updates))._build();

  _$StackInstanceComprehensiveStatus._({this.detailedStatus}) : super._();

  @override
  StackInstanceComprehensiveStatus rebuild(
          void Function(StackInstanceComprehensiveStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StackInstanceComprehensiveStatusBuilder toBuilder() =>
      new StackInstanceComprehensiveStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StackInstanceComprehensiveStatus &&
        detailedStatus == other.detailedStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, detailedStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StackInstanceComprehensiveStatusBuilder
    implements
        Builder<StackInstanceComprehensiveStatus,
            StackInstanceComprehensiveStatusBuilder> {
  _$StackInstanceComprehensiveStatus? _$v;

  _i2.StackInstanceDetailedStatus? _detailedStatus;
  _i2.StackInstanceDetailedStatus? get detailedStatus => _$this._detailedStatus;
  set detailedStatus(_i2.StackInstanceDetailedStatus? detailedStatus) =>
      _$this._detailedStatus = detailedStatus;

  StackInstanceComprehensiveStatusBuilder() {
    StackInstanceComprehensiveStatus._init(this);
  }

  StackInstanceComprehensiveStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _detailedStatus = $v.detailedStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StackInstanceComprehensiveStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StackInstanceComprehensiveStatus;
  }

  @override
  void update(void Function(StackInstanceComprehensiveStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StackInstanceComprehensiveStatus build() => _build();

  _$StackInstanceComprehensiveStatus _build() {
    final _$result = _$v ??
        new _$StackInstanceComprehensiveStatus._(
            detailedStatus: detailedStatus);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
