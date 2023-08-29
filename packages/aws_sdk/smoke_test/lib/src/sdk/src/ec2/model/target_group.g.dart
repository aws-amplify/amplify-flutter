// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'target_group.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TargetGroup extends TargetGroup {
  @override
  final String? arn;

  factory _$TargetGroup([void Function(TargetGroupBuilder)? updates]) =>
      (new TargetGroupBuilder()..update(updates))._build();

  _$TargetGroup._({this.arn}) : super._();

  @override
  TargetGroup rebuild(void Function(TargetGroupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TargetGroupBuilder toBuilder() => new TargetGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TargetGroup && arn == other.arn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TargetGroupBuilder implements Builder<TargetGroup, TargetGroupBuilder> {
  _$TargetGroup? _$v;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  TargetGroupBuilder();

  TargetGroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _arn = $v.arn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TargetGroup other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TargetGroup;
  }

  @override
  void update(void Function(TargetGroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TargetGroup build() => _build();

  _$TargetGroup _build() {
    final _$result = _$v ?? new _$TargetGroup._(arn: arn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
