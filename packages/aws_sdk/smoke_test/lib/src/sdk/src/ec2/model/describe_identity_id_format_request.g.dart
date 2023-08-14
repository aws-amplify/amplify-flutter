// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_identity_id_format_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeIdentityIdFormatRequest
    extends DescribeIdentityIdFormatRequest {
  @override
  final String? principalArn;
  @override
  final String? resource;

  factory _$DescribeIdentityIdFormatRequest(
          [void Function(DescribeIdentityIdFormatRequestBuilder)? updates]) =>
      (new DescribeIdentityIdFormatRequestBuilder()..update(updates))._build();

  _$DescribeIdentityIdFormatRequest._({this.principalArn, this.resource})
      : super._();

  @override
  DescribeIdentityIdFormatRequest rebuild(
          void Function(DescribeIdentityIdFormatRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeIdentityIdFormatRequestBuilder toBuilder() =>
      new DescribeIdentityIdFormatRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeIdentityIdFormatRequest &&
        principalArn == other.principalArn &&
        resource == other.resource;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, principalArn.hashCode);
    _$hash = $jc(_$hash, resource.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeIdentityIdFormatRequestBuilder
    implements
        Builder<DescribeIdentityIdFormatRequest,
            DescribeIdentityIdFormatRequestBuilder> {
  _$DescribeIdentityIdFormatRequest? _$v;

  String? _principalArn;
  String? get principalArn => _$this._principalArn;
  set principalArn(String? principalArn) => _$this._principalArn = principalArn;

  String? _resource;
  String? get resource => _$this._resource;
  set resource(String? resource) => _$this._resource = resource;

  DescribeIdentityIdFormatRequestBuilder();

  DescribeIdentityIdFormatRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _principalArn = $v.principalArn;
      _resource = $v.resource;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeIdentityIdFormatRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeIdentityIdFormatRequest;
  }

  @override
  void update(void Function(DescribeIdentityIdFormatRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeIdentityIdFormatRequest build() => _build();

  _$DescribeIdentityIdFormatRequest _build() {
    final _$result = _$v ??
        new _$DescribeIdentityIdFormatRequest._(
            principalArn: principalArn, resource: resource);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
