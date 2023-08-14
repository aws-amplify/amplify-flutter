// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_capacity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AvailableCapacity extends AvailableCapacity {
  @override
  final _i2.BuiltList<InstanceCapacity>? availableInstanceCapacity;
  @override
  final int availableVCpus;

  factory _$AvailableCapacity(
          [void Function(AvailableCapacityBuilder)? updates]) =>
      (new AvailableCapacityBuilder()..update(updates))._build();

  _$AvailableCapacity._(
      {this.availableInstanceCapacity, required this.availableVCpus})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        availableVCpus, r'AvailableCapacity', 'availableVCpus');
  }

  @override
  AvailableCapacity rebuild(void Function(AvailableCapacityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AvailableCapacityBuilder toBuilder() =>
      new AvailableCapacityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AvailableCapacity &&
        availableInstanceCapacity == other.availableInstanceCapacity &&
        availableVCpus == other.availableVCpus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, availableInstanceCapacity.hashCode);
    _$hash = $jc(_$hash, availableVCpus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AvailableCapacityBuilder
    implements Builder<AvailableCapacity, AvailableCapacityBuilder> {
  _$AvailableCapacity? _$v;

  _i2.ListBuilder<InstanceCapacity>? _availableInstanceCapacity;
  _i2.ListBuilder<InstanceCapacity> get availableInstanceCapacity =>
      _$this._availableInstanceCapacity ??=
          new _i2.ListBuilder<InstanceCapacity>();
  set availableInstanceCapacity(
          _i2.ListBuilder<InstanceCapacity>? availableInstanceCapacity) =>
      _$this._availableInstanceCapacity = availableInstanceCapacity;

  int? _availableVCpus;
  int? get availableVCpus => _$this._availableVCpus;
  set availableVCpus(int? availableVCpus) =>
      _$this._availableVCpus = availableVCpus;

  AvailableCapacityBuilder() {
    AvailableCapacity._init(this);
  }

  AvailableCapacityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _availableInstanceCapacity = $v.availableInstanceCapacity?.toBuilder();
      _availableVCpus = $v.availableVCpus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AvailableCapacity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AvailableCapacity;
  }

  @override
  void update(void Function(AvailableCapacityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AvailableCapacity build() => _build();

  _$AvailableCapacity _build() {
    _$AvailableCapacity _$result;
    try {
      _$result = _$v ??
          new _$AvailableCapacity._(
              availableInstanceCapacity: _availableInstanceCapacity?.build(),
              availableVCpus: BuiltValueNullFieldError.checkNotNull(
                  availableVCpus, r'AvailableCapacity', 'availableVCpus'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'availableInstanceCapacity';
        _availableInstanceCapacity?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AvailableCapacity', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
