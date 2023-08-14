// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_id_format_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeIdFormatRequest extends DescribeIdFormatRequest {
  @override
  final String? resource;

  factory _$DescribeIdFormatRequest(
          [void Function(DescribeIdFormatRequestBuilder)? updates]) =>
      (new DescribeIdFormatRequestBuilder()..update(updates))._build();

  _$DescribeIdFormatRequest._({this.resource}) : super._();

  @override
  DescribeIdFormatRequest rebuild(
          void Function(DescribeIdFormatRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeIdFormatRequestBuilder toBuilder() =>
      new DescribeIdFormatRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeIdFormatRequest && resource == other.resource;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resource.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeIdFormatRequestBuilder
    implements
        Builder<DescribeIdFormatRequest, DescribeIdFormatRequestBuilder> {
  _$DescribeIdFormatRequest? _$v;

  String? _resource;
  String? get resource => _$this._resource;
  set resource(String? resource) => _$this._resource = resource;

  DescribeIdFormatRequestBuilder();

  DescribeIdFormatRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resource = $v.resource;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeIdFormatRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeIdFormatRequest;
  }

  @override
  void update(void Function(DescribeIdFormatRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeIdFormatRequest build() => _build();

  _$DescribeIdFormatRequest _build() {
    final _$result = _$v ?? new _$DescribeIdFormatRequest._(resource: resource);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
