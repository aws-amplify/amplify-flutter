import 'dart:async';
import 'dart:io';

import 'package:amplify_trips_planner/common/services/storage_service.dart';
import 'package:amplify_trips_planner/features/trip/data/trips_repository.dart';
import 'package:amplify_trips_planner/models/ModelProvider.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'trip_controller.g.dart';

@riverpod
class TripController extends _$TripController {
  Future<Trip> _fetchTrip(String tripId) async {
    final tripsRepository = ref.read(tripsRepositoryProvider);
    return tripsRepository.getTrip(tripId);
  }

  @override
  FutureOr<Trip> build(String tripId) async {
    return _fetchTrip(tripId);
  }

  Future<void> updateTrip(Trip trip) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final tripsRepository = ref.read(tripsRepositoryProvider);
      await tripsRepository.update(trip);
      return _fetchTrip(trip.id);
    });
  }

  Future<void> uploadFile(File file, Trip trip) async {
    final fileKey = await ref.read(storageServiceProvider).uploadFile(file);
    if (fileKey != null) {
      final imageUrl =
          await ref.read(storageServiceProvider).getImageUrl(fileKey);
      final updatedTrip =
          trip.copyWith(tripImageKey: fileKey, tripImageUrl: imageUrl);
      await ref.read(tripsRepositoryProvider).update(updatedTrip);
      ref.read(storageServiceProvider).resetUploadProgress();
    }
  }

  ValueNotifier<double> uploadProgress() {
    return ref.read(storageServiceProvider).getUploadProgress();
  }
}
