// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iam_instance_profile_specification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IamInstanceProfileSpecification
    extends IamInstanceProfileSpecification {
  @override
  final String? arn;
  @override
  final String? name;

  factory _$IamInstanceProfileSpecification(
          [void Function(IamInstanceProfileSpecificationBuilder)? updates]) =>
      (new IamInstanceProfileSpecificationBuilder()..update(updates))._build();

  _$IamInstanceProfileSpecification._({this.arn, this.name}) : super._();

  @override
  IamInstanceProfileSpecification rebuild(
          void Function(IamInstanceProfileSpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IamInstanceProfileSpecificationBuilder toBuilder() =>
      new IamInstanceProfileSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IamInstanceProfileSpecification &&
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

class IamInstanceProfileSpecificationBuilder
    implements
        Builder<IamInstanceProfileSpecification,
            IamInstanceProfileSpecificationBuilder> {
  _$IamInstanceProfileSpecification? _$v;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  IamInstanceProfileSpecificationBuilder();

  IamInstanceProfileSpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _arn = $v.arn;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IamInstanceProfileSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IamInstanceProfileSpecification;
  }

  @override
  void update(void Function(IamInstanceProfileSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IamInstanceProfileSpecification build() => _build();

  _$IamInstanceProfileSpecification _build() {
    final _$result =
        _$v ?? new _$IamInstanceProfileSpecification._(arn: arn, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
