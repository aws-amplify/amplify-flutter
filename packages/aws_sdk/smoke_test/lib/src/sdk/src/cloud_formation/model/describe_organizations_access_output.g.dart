// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_organizations_access_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeOrganizationsAccessOutput
    extends DescribeOrganizationsAccessOutput {
  @override
  final OrganizationStatus? status;

  factory _$DescribeOrganizationsAccessOutput(
          [void Function(DescribeOrganizationsAccessOutputBuilder)? updates]) =>
      (new DescribeOrganizationsAccessOutputBuilder()..update(updates))
          ._build();

  _$DescribeOrganizationsAccessOutput._({this.status}) : super._();

  @override
  DescribeOrganizationsAccessOutput rebuild(
          void Function(DescribeOrganizationsAccessOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeOrganizationsAccessOutputBuilder toBuilder() =>
      new DescribeOrganizationsAccessOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeOrganizationsAccessOutput && status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeOrganizationsAccessOutputBuilder
    implements
        Builder<DescribeOrganizationsAccessOutput,
            DescribeOrganizationsAccessOutputBuilder> {
  _$DescribeOrganizationsAccessOutput? _$v;

  OrganizationStatus? _status;
  OrganizationStatus? get status => _$this._status;
  set status(OrganizationStatus? status) => _$this._status = status;

  DescribeOrganizationsAccessOutputBuilder();

  DescribeOrganizationsAccessOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeOrganizationsAccessOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeOrganizationsAccessOutput;
  }

  @override
  void update(
      void Function(DescribeOrganizationsAccessOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeOrganizationsAccessOutput build() => _build();

  _$DescribeOrganizationsAccessOutput _build() {
    final _$result =
        _$v ?? new _$DescribeOrganizationsAccessOutput._(status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
