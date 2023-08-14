// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iam_instance_profile.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IamInstanceProfile extends IamInstanceProfile {
  @override
  final String? arn;
  @override
  final String? id;

  factory _$IamInstanceProfile(
          [void Function(IamInstanceProfileBuilder)? updates]) =>
      (new IamInstanceProfileBuilder()..update(updates))._build();

  _$IamInstanceProfile._({this.arn, this.id}) : super._();

  @override
  IamInstanceProfile rebuild(
          void Function(IamInstanceProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IamInstanceProfileBuilder toBuilder() =>
      new IamInstanceProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IamInstanceProfile && arn == other.arn && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class IamInstanceProfileBuilder
    implements Builder<IamInstanceProfile, IamInstanceProfileBuilder> {
  _$IamInstanceProfile? _$v;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  IamInstanceProfileBuilder();

  IamInstanceProfileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _arn = $v.arn;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IamInstanceProfile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IamInstanceProfile;
  }

  @override
  void update(void Function(IamInstanceProfileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IamInstanceProfile build() => _build();

  _$IamInstanceProfile _build() {
    final _$result = _$v ?? new _$IamInstanceProfile._(arn: arn, id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
