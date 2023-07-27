// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'archival_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ArchivalSummary extends ArchivalSummary {
  @override
  final DateTime? archivalDateTime;
  @override
  final String? archivalReason;
  @override
  final String? archivalBackupArn;

  factory _$ArchivalSummary([void Function(ArchivalSummaryBuilder)? updates]) =>
      (new ArchivalSummaryBuilder()..update(updates))._build();

  _$ArchivalSummary._(
      {this.archivalDateTime, this.archivalReason, this.archivalBackupArn})
      : super._();

  @override
  ArchivalSummary rebuild(void Function(ArchivalSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArchivalSummaryBuilder toBuilder() =>
      new ArchivalSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArchivalSummary &&
        archivalDateTime == other.archivalDateTime &&
        archivalReason == other.archivalReason &&
        archivalBackupArn == other.archivalBackupArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, archivalDateTime.hashCode);
    _$hash = $jc(_$hash, archivalReason.hashCode);
    _$hash = $jc(_$hash, archivalBackupArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ArchivalSummaryBuilder
    implements Builder<ArchivalSummary, ArchivalSummaryBuilder> {
  _$ArchivalSummary? _$v;

  DateTime? _archivalDateTime;
  DateTime? get archivalDateTime => _$this._archivalDateTime;
  set archivalDateTime(DateTime? archivalDateTime) =>
      _$this._archivalDateTime = archivalDateTime;

  String? _archivalReason;
  String? get archivalReason => _$this._archivalReason;
  set archivalReason(String? archivalReason) =>
      _$this._archivalReason = archivalReason;

  String? _archivalBackupArn;
  String? get archivalBackupArn => _$this._archivalBackupArn;
  set archivalBackupArn(String? archivalBackupArn) =>
      _$this._archivalBackupArn = archivalBackupArn;

  ArchivalSummaryBuilder();

  ArchivalSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _archivalDateTime = $v.archivalDateTime;
      _archivalReason = $v.archivalReason;
      _archivalBackupArn = $v.archivalBackupArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ArchivalSummary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ArchivalSummary;
  }

  @override
  void update(void Function(ArchivalSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ArchivalSummary build() => _build();

  _$ArchivalSummary _build() {
    final _$result = _$v ??
        new _$ArchivalSummary._(
            archivalDateTime: archivalDateTime,
            archivalReason: archivalReason,
            archivalBackupArn: archivalBackupArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
