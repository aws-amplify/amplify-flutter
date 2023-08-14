// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'private_dns_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PrivateDnsDetails extends PrivateDnsDetails {
  @override
  final String? privateDnsName;

  factory _$PrivateDnsDetails(
          [void Function(PrivateDnsDetailsBuilder)? updates]) =>
      (new PrivateDnsDetailsBuilder()..update(updates))._build();

  _$PrivateDnsDetails._({this.privateDnsName}) : super._();

  @override
  PrivateDnsDetails rebuild(void Function(PrivateDnsDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrivateDnsDetailsBuilder toBuilder() =>
      new PrivateDnsDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrivateDnsDetails && privateDnsName == other.privateDnsName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, privateDnsName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PrivateDnsDetailsBuilder
    implements Builder<PrivateDnsDetails, PrivateDnsDetailsBuilder> {
  _$PrivateDnsDetails? _$v;

  String? _privateDnsName;
  String? get privateDnsName => _$this._privateDnsName;
  set privateDnsName(String? privateDnsName) =>
      _$this._privateDnsName = privateDnsName;

  PrivateDnsDetailsBuilder();

  PrivateDnsDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _privateDnsName = $v.privateDnsName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrivateDnsDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PrivateDnsDetails;
  }

  @override
  void update(void Function(PrivateDnsDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrivateDnsDetails build() => _build();

  _$PrivateDnsDetails _build() {
    final _$result =
        _$v ?? new _$PrivateDnsDetails._(privateDnsName: privateDnsName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
