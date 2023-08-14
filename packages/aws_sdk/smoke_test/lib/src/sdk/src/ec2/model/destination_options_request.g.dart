// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination_options_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DestinationOptionsRequest extends DestinationOptionsRequest {
  @override
  final DestinationFileFormat? fileFormat;
  @override
  final bool hiveCompatiblePartitions;
  @override
  final bool perHourPartition;

  factory _$DestinationOptionsRequest(
          [void Function(DestinationOptionsRequestBuilder)? updates]) =>
      (new DestinationOptionsRequestBuilder()..update(updates))._build();

  _$DestinationOptionsRequest._(
      {this.fileFormat,
      required this.hiveCompatiblePartitions,
      required this.perHourPartition})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(hiveCompatiblePartitions,
        r'DestinationOptionsRequest', 'hiveCompatiblePartitions');
    BuiltValueNullFieldError.checkNotNull(
        perHourPartition, r'DestinationOptionsRequest', 'perHourPartition');
  }

  @override
  DestinationOptionsRequest rebuild(
          void Function(DestinationOptionsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DestinationOptionsRequestBuilder toBuilder() =>
      new DestinationOptionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DestinationOptionsRequest &&
        fileFormat == other.fileFormat &&
        hiveCompatiblePartitions == other.hiveCompatiblePartitions &&
        perHourPartition == other.perHourPartition;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fileFormat.hashCode);
    _$hash = $jc(_$hash, hiveCompatiblePartitions.hashCode);
    _$hash = $jc(_$hash, perHourPartition.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DestinationOptionsRequestBuilder
    implements
        Builder<DestinationOptionsRequest, DestinationOptionsRequestBuilder> {
  _$DestinationOptionsRequest? _$v;

  DestinationFileFormat? _fileFormat;
  DestinationFileFormat? get fileFormat => _$this._fileFormat;
  set fileFormat(DestinationFileFormat? fileFormat) =>
      _$this._fileFormat = fileFormat;

  bool? _hiveCompatiblePartitions;
  bool? get hiveCompatiblePartitions => _$this._hiveCompatiblePartitions;
  set hiveCompatiblePartitions(bool? hiveCompatiblePartitions) =>
      _$this._hiveCompatiblePartitions = hiveCompatiblePartitions;

  bool? _perHourPartition;
  bool? get perHourPartition => _$this._perHourPartition;
  set perHourPartition(bool? perHourPartition) =>
      _$this._perHourPartition = perHourPartition;

  DestinationOptionsRequestBuilder() {
    DestinationOptionsRequest._init(this);
  }

  DestinationOptionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fileFormat = $v.fileFormat;
      _hiveCompatiblePartitions = $v.hiveCompatiblePartitions;
      _perHourPartition = $v.perHourPartition;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DestinationOptionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DestinationOptionsRequest;
  }

  @override
  void update(void Function(DestinationOptionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DestinationOptionsRequest build() => _build();

  _$DestinationOptionsRequest _build() {
    final _$result = _$v ??
        new _$DestinationOptionsRequest._(
            fileFormat: fileFormat,
            hiveCompatiblePartitions: BuiltValueNullFieldError.checkNotNull(
                hiveCompatiblePartitions,
                r'DestinationOptionsRequest',
                'hiveCompatiblePartitions'),
            perHourPartition: BuiltValueNullFieldError.checkNotNull(
                perHourPartition,
                r'DestinationOptionsRequest',
                'perHourPartition'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
