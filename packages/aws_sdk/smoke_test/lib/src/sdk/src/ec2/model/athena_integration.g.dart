// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'athena_integration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AthenaIntegration extends AthenaIntegration {
  @override
  final String? integrationResultS3DestinationArn;
  @override
  final PartitionLoadFrequency? partitionLoadFrequency;
  @override
  final DateTime? partitionStartDate;
  @override
  final DateTime? partitionEndDate;

  factory _$AthenaIntegration(
          [void Function(AthenaIntegrationBuilder)? updates]) =>
      (new AthenaIntegrationBuilder()..update(updates))._build();

  _$AthenaIntegration._(
      {this.integrationResultS3DestinationArn,
      this.partitionLoadFrequency,
      this.partitionStartDate,
      this.partitionEndDate})
      : super._();

  @override
  AthenaIntegration rebuild(void Function(AthenaIntegrationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AthenaIntegrationBuilder toBuilder() =>
      new AthenaIntegrationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AthenaIntegration &&
        integrationResultS3DestinationArn ==
            other.integrationResultS3DestinationArn &&
        partitionLoadFrequency == other.partitionLoadFrequency &&
        partitionStartDate == other.partitionStartDate &&
        partitionEndDate == other.partitionEndDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, integrationResultS3DestinationArn.hashCode);
    _$hash = $jc(_$hash, partitionLoadFrequency.hashCode);
    _$hash = $jc(_$hash, partitionStartDate.hashCode);
    _$hash = $jc(_$hash, partitionEndDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AthenaIntegrationBuilder
    implements Builder<AthenaIntegration, AthenaIntegrationBuilder> {
  _$AthenaIntegration? _$v;

  String? _integrationResultS3DestinationArn;
  String? get integrationResultS3DestinationArn =>
      _$this._integrationResultS3DestinationArn;
  set integrationResultS3DestinationArn(
          String? integrationResultS3DestinationArn) =>
      _$this._integrationResultS3DestinationArn =
          integrationResultS3DestinationArn;

  PartitionLoadFrequency? _partitionLoadFrequency;
  PartitionLoadFrequency? get partitionLoadFrequency =>
      _$this._partitionLoadFrequency;
  set partitionLoadFrequency(PartitionLoadFrequency? partitionLoadFrequency) =>
      _$this._partitionLoadFrequency = partitionLoadFrequency;

  DateTime? _partitionStartDate;
  DateTime? get partitionStartDate => _$this._partitionStartDate;
  set partitionStartDate(DateTime? partitionStartDate) =>
      _$this._partitionStartDate = partitionStartDate;

  DateTime? _partitionEndDate;
  DateTime? get partitionEndDate => _$this._partitionEndDate;
  set partitionEndDate(DateTime? partitionEndDate) =>
      _$this._partitionEndDate = partitionEndDate;

  AthenaIntegrationBuilder();

  AthenaIntegrationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _integrationResultS3DestinationArn = $v.integrationResultS3DestinationArn;
      _partitionLoadFrequency = $v.partitionLoadFrequency;
      _partitionStartDate = $v.partitionStartDate;
      _partitionEndDate = $v.partitionEndDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AthenaIntegration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AthenaIntegration;
  }

  @override
  void update(void Function(AthenaIntegrationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AthenaIntegration build() => _build();

  _$AthenaIntegration _build() {
    final _$result = _$v ??
        new _$AthenaIntegration._(
            integrationResultS3DestinationArn:
                integrationResultS3DestinationArn,
            partitionLoadFrequency: partitionLoadFrequency,
            partitionStartDate: partitionStartDate,
            partitionEndDate: partitionEndDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
