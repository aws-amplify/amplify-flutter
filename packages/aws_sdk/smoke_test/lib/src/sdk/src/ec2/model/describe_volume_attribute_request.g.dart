// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_volume_attribute_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVolumeAttributeRequest extends DescribeVolumeAttributeRequest {
  @override
  final VolumeAttributeName? attribute;
  @override
  final String? volumeId;
  @override
  final bool dryRun;

  factory _$DescribeVolumeAttributeRequest(
          [void Function(DescribeVolumeAttributeRequestBuilder)? updates]) =>
      (new DescribeVolumeAttributeRequestBuilder()..update(updates))._build();

  _$DescribeVolumeAttributeRequest._(
      {this.attribute, this.volumeId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeVolumeAttributeRequest', 'dryRun');
  }

  @override
  DescribeVolumeAttributeRequest rebuild(
          void Function(DescribeVolumeAttributeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVolumeAttributeRequestBuilder toBuilder() =>
      new DescribeVolumeAttributeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVolumeAttributeRequest &&
        attribute == other.attribute &&
        volumeId == other.volumeId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attribute.hashCode);
    _$hash = $jc(_$hash, volumeId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVolumeAttributeRequestBuilder
    implements
        Builder<DescribeVolumeAttributeRequest,
            DescribeVolumeAttributeRequestBuilder> {
  _$DescribeVolumeAttributeRequest? _$v;

  VolumeAttributeName? _attribute;
  VolumeAttributeName? get attribute => _$this._attribute;
  set attribute(VolumeAttributeName? attribute) =>
      _$this._attribute = attribute;

  String? _volumeId;
  String? get volumeId => _$this._volumeId;
  set volumeId(String? volumeId) => _$this._volumeId = volumeId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DescribeVolumeAttributeRequestBuilder() {
    DescribeVolumeAttributeRequest._init(this);
  }

  DescribeVolumeAttributeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attribute = $v.attribute;
      _volumeId = $v.volumeId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVolumeAttributeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVolumeAttributeRequest;
  }

  @override
  void update(void Function(DescribeVolumeAttributeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVolumeAttributeRequest build() => _build();

  _$DescribeVolumeAttributeRequest _build() {
    final _$result = _$v ??
        new _$DescribeVolumeAttributeRequest._(
            attribute: attribute,
            volumeId: volumeId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DescribeVolumeAttributeRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
