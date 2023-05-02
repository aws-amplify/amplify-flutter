// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.rollback_trigger;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RollbackTrigger extends RollbackTrigger {
  @override
  final String arn;
  @override
  final String type;

  factory _$RollbackTrigger([void Function(RollbackTriggerBuilder)? updates]) =>
      (new RollbackTriggerBuilder()..update(updates))._build();

  _$RollbackTrigger._({required this.arn, required this.type}) : super._() {
    BuiltValueNullFieldError.checkNotNull(arn, r'RollbackTrigger', 'arn');
    BuiltValueNullFieldError.checkNotNull(type, r'RollbackTrigger', 'type');
  }

  @override
  RollbackTrigger rebuild(void Function(RollbackTriggerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RollbackTriggerBuilder toBuilder() =>
      new RollbackTriggerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RollbackTrigger && arn == other.arn && type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RollbackTriggerBuilder
    implements Builder<RollbackTrigger, RollbackTriggerBuilder> {
  _$RollbackTrigger? _$v;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  RollbackTriggerBuilder() {
    RollbackTrigger._init(this);
  }

  RollbackTriggerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _arn = $v.arn;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RollbackTrigger other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RollbackTrigger;
  }

  @override
  void update(void Function(RollbackTriggerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RollbackTrigger build() => _build();

  _$RollbackTrigger _build() {
    final _$result = _$v ??
        new _$RollbackTrigger._(
            arn: BuiltValueNullFieldError.checkNotNull(
                arn, r'RollbackTrigger', 'arn'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'RollbackTrigger', 'type'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
