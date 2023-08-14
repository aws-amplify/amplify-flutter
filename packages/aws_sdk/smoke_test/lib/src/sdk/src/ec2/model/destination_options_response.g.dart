// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination_options_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DestinationOptionsResponse extends DestinationOptionsResponse {
  @override
  final DestinationFileFormat? fileFormat;
  @override
  final bool hiveCompatiblePartitions;
  @override
  final bool perHourPartition;

  factory _$DestinationOptionsResponse(
          [void Function(DestinationOptionsResponseBuilder)? updates]) =>
      (new DestinationOptionsResponseBuilder()..update(updates))._build();

  _$DestinationOptionsResponse._(
      {this.fileFormat,
      required this.hiveCompatiblePartitions,
      required this.perHourPartition})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(hiveCompatiblePartitions,
        r'DestinationOptionsResponse', 'hiveCompatiblePartitions');
    BuiltValueNullFieldError.checkNotNull(
        perHourPartition, r'DestinationOptionsResponse', 'perHourPartition');
  }

  @override
  DestinationOptionsResponse rebuild(
          void Function(DestinationOptionsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DestinationOptionsResponseBuilder toBuilder() =>
      new DestinationOptionsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DestinationOptionsResponse &&
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

class DestinationOptionsResponseBuilder
    implements
        Builder<DestinationOptionsResponse, DestinationOptionsResponseBuilder> {
  _$DestinationOptionsResponse? _$v;

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

  DestinationOptionsResponseBuilder() {
    DestinationOptionsResponse._init(this);
  }

  DestinationOptionsResponseBuilder get _$this {
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
  void replace(DestinationOptionsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DestinationOptionsResponse;
  }

  @override
  void update(void Function(DestinationOptionsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DestinationOptionsResponse build() => _build();

  _$DestinationOptionsResponse _build() {
    final _$result = _$v ??
        new _$DestinationOptionsResponse._(
            fileFormat: fileFormat,
            hiveCompatiblePartitions: BuiltValueNullFieldError.checkNotNull(
                hiveCompatiblePartitions,
                r'DestinationOptionsResponse',
                'hiveCompatiblePartitions'),
            perHourPartition: BuiltValueNullFieldError.checkNotNull(
                perHourPartition,
                r'DestinationOptionsResponse',
                'perHourPartition'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
