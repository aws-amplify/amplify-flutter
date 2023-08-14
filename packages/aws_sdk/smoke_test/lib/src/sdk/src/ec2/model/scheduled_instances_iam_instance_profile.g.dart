// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_instances_iam_instance_profile.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScheduledInstancesIamInstanceProfile
    extends ScheduledInstancesIamInstanceProfile {
  @override
  final String? arn;
  @override
  final String? name;

  factory _$ScheduledInstancesIamInstanceProfile(
          [void Function(ScheduledInstancesIamInstanceProfileBuilder)?
              updates]) =>
      (new ScheduledInstancesIamInstanceProfileBuilder()..update(updates))
          ._build();

  _$ScheduledInstancesIamInstanceProfile._({this.arn, this.name}) : super._();

  @override
  ScheduledInstancesIamInstanceProfile rebuild(
          void Function(ScheduledInstancesIamInstanceProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScheduledInstancesIamInstanceProfileBuilder toBuilder() =>
      new ScheduledInstancesIamInstanceProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScheduledInstancesIamInstanceProfile &&
        arn == other.arn &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ScheduledInstancesIamInstanceProfileBuilder
    implements
        Builder<ScheduledInstancesIamInstanceProfile,
            ScheduledInstancesIamInstanceProfileBuilder> {
  _$ScheduledInstancesIamInstanceProfile? _$v;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ScheduledInstancesIamInstanceProfileBuilder();

  ScheduledInstancesIamInstanceProfileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _arn = $v.arn;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScheduledInstancesIamInstanceProfile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ScheduledInstancesIamInstanceProfile;
  }

  @override
  void update(
      void Function(ScheduledInstancesIamInstanceProfileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScheduledInstancesIamInstanceProfile build() => _build();

  _$ScheduledInstancesIamInstanceProfile _build() {
    final _$result = _$v ??
        new _$ScheduledInstancesIamInstanceProfile._(arn: arn, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
