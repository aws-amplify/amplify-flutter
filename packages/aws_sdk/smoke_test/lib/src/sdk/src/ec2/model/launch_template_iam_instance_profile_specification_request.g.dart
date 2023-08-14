// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_template_iam_instance_profile_specification_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchTemplateIamInstanceProfileSpecificationRequest
    extends LaunchTemplateIamInstanceProfileSpecificationRequest {
  @override
  final String? arn;
  @override
  final String? name;

  factory _$LaunchTemplateIamInstanceProfileSpecificationRequest(
          [void Function(
                  LaunchTemplateIamInstanceProfileSpecificationRequestBuilder)?
              updates]) =>
      (new LaunchTemplateIamInstanceProfileSpecificationRequestBuilder()
            ..update(updates))
          ._build();

  _$LaunchTemplateIamInstanceProfileSpecificationRequest._(
      {this.arn, this.name})
      : super._();

  @override
  LaunchTemplateIamInstanceProfileSpecificationRequest rebuild(
          void Function(
                  LaunchTemplateIamInstanceProfileSpecificationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchTemplateIamInstanceProfileSpecificationRequestBuilder toBuilder() =>
      new LaunchTemplateIamInstanceProfileSpecificationRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchTemplateIamInstanceProfileSpecificationRequest &&
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

class LaunchTemplateIamInstanceProfileSpecificationRequestBuilder
    implements
        Builder<LaunchTemplateIamInstanceProfileSpecificationRequest,
            LaunchTemplateIamInstanceProfileSpecificationRequestBuilder> {
  _$LaunchTemplateIamInstanceProfileSpecificationRequest? _$v;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  LaunchTemplateIamInstanceProfileSpecificationRequestBuilder();

  LaunchTemplateIamInstanceProfileSpecificationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _arn = $v.arn;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LaunchTemplateIamInstanceProfileSpecificationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchTemplateIamInstanceProfileSpecificationRequest;
  }

  @override
  void update(
      void Function(
              LaunchTemplateIamInstanceProfileSpecificationRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchTemplateIamInstanceProfileSpecificationRequest build() => _build();

  _$LaunchTemplateIamInstanceProfileSpecificationRequest _build() {
    final _$result = _$v ??
        new _$LaunchTemplateIamInstanceProfileSpecificationRequest._(
            arn: arn, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
