// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_template_iam_instance_profile_specification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchTemplateIamInstanceProfileSpecification
    extends LaunchTemplateIamInstanceProfileSpecification {
  @override
  final String? arn;
  @override
  final String? name;

  factory _$LaunchTemplateIamInstanceProfileSpecification(
          [void Function(LaunchTemplateIamInstanceProfileSpecificationBuilder)?
              updates]) =>
      (new LaunchTemplateIamInstanceProfileSpecificationBuilder()
            ..update(updates))
          ._build();

  _$LaunchTemplateIamInstanceProfileSpecification._({this.arn, this.name})
      : super._();

  @override
  LaunchTemplateIamInstanceProfileSpecification rebuild(
          void Function(LaunchTemplateIamInstanceProfileSpecificationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchTemplateIamInstanceProfileSpecificationBuilder toBuilder() =>
      new LaunchTemplateIamInstanceProfileSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchTemplateIamInstanceProfileSpecification &&
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

class LaunchTemplateIamInstanceProfileSpecificationBuilder
    implements
        Builder<LaunchTemplateIamInstanceProfileSpecification,
            LaunchTemplateIamInstanceProfileSpecificationBuilder> {
  _$LaunchTemplateIamInstanceProfileSpecification? _$v;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  LaunchTemplateIamInstanceProfileSpecificationBuilder();

  LaunchTemplateIamInstanceProfileSpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _arn = $v.arn;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LaunchTemplateIamInstanceProfileSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchTemplateIamInstanceProfileSpecification;
  }

  @override
  void update(
      void Function(LaunchTemplateIamInstanceProfileSpecificationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchTemplateIamInstanceProfileSpecification build() => _build();

  _$LaunchTemplateIamInstanceProfileSpecification _build() {
    final _$result = _$v ??
        new _$LaunchTemplateIamInstanceProfileSpecification._(
            arn: arn, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
