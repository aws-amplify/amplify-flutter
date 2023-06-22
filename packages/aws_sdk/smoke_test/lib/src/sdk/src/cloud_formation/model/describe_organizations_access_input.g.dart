// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_organizations_access_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeOrganizationsAccessInput
    extends DescribeOrganizationsAccessInput {
  @override
  final _i3.CallAs? callAs;

  factory _$DescribeOrganizationsAccessInput(
          [void Function(DescribeOrganizationsAccessInputBuilder)? updates]) =>
      (new DescribeOrganizationsAccessInputBuilder()..update(updates))._build();

  _$DescribeOrganizationsAccessInput._({this.callAs}) : super._();

  @override
  DescribeOrganizationsAccessInput rebuild(
          void Function(DescribeOrganizationsAccessInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeOrganizationsAccessInputBuilder toBuilder() =>
      new DescribeOrganizationsAccessInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeOrganizationsAccessInput && callAs == other.callAs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, callAs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeOrganizationsAccessInputBuilder
    implements
        Builder<DescribeOrganizationsAccessInput,
            DescribeOrganizationsAccessInputBuilder> {
  _$DescribeOrganizationsAccessInput? _$v;

  _i3.CallAs? _callAs;
  _i3.CallAs? get callAs => _$this._callAs;
  set callAs(_i3.CallAs? callAs) => _$this._callAs = callAs;

  DescribeOrganizationsAccessInputBuilder() {
    DescribeOrganizationsAccessInput._init(this);
  }

  DescribeOrganizationsAccessInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _callAs = $v.callAs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeOrganizationsAccessInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeOrganizationsAccessInput;
  }

  @override
  void update(void Function(DescribeOrganizationsAccessInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeOrganizationsAccessInput build() => _build();

  _$DescribeOrganizationsAccessInput _build() {
    final _$result =
        _$v ?? new _$DescribeOrganizationsAccessInput._(callAs: callAs);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
