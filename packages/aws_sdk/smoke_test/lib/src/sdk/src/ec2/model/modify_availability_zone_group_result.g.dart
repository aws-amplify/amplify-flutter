// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_availability_zone_group_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyAvailabilityZoneGroupResult
    extends ModifyAvailabilityZoneGroupResult {
  @override
  final bool return_;

  factory _$ModifyAvailabilityZoneGroupResult(
          [void Function(ModifyAvailabilityZoneGroupResultBuilder)? updates]) =>
      (new ModifyAvailabilityZoneGroupResultBuilder()..update(updates))
          ._build();

  _$ModifyAvailabilityZoneGroupResult._({required this.return_}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        return_, r'ModifyAvailabilityZoneGroupResult', 'return_');
  }

  @override
  ModifyAvailabilityZoneGroupResult rebuild(
          void Function(ModifyAvailabilityZoneGroupResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyAvailabilityZoneGroupResultBuilder toBuilder() =>
      new ModifyAvailabilityZoneGroupResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyAvailabilityZoneGroupResult &&
        return_ == other.return_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, return_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyAvailabilityZoneGroupResultBuilder
    implements
        Builder<ModifyAvailabilityZoneGroupResult,
            ModifyAvailabilityZoneGroupResultBuilder> {
  _$ModifyAvailabilityZoneGroupResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  ModifyAvailabilityZoneGroupResultBuilder() {
    ModifyAvailabilityZoneGroupResult._init(this);
  }

  ModifyAvailabilityZoneGroupResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyAvailabilityZoneGroupResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyAvailabilityZoneGroupResult;
  }

  @override
  void update(
      void Function(ModifyAvailabilityZoneGroupResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyAvailabilityZoneGroupResult build() => _build();

  _$ModifyAvailabilityZoneGroupResult _build() {
    final _$result = _$v ??
        new _$ModifyAvailabilityZoneGroupResult._(
            return_: BuiltValueNullFieldError.checkNotNull(
                return_, r'ModifyAvailabilityZoneGroupResult', 'return_'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
