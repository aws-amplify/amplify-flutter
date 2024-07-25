import 'package:amplify_trips_planner/features/trip/controller/trip_controller.dart';
import 'package:amplify_trips_planner/features/trip/ui/trip_page/selected_trip_card.dart';
import 'package:amplify_trips_planner/models/ModelProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TripDetails extends ConsumerWidget {
  const TripDetails({
    required this.trip,
    required this.tripId,
    super.key,
  });

  final AsyncValue<Trip> trip;
  final String tripId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    switch (trip) {
      case AsyncData(:final value):
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 8,
            ),
            SelectedTripCard(trip: value),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              height: 20,
              thickness: 5,
              indent: 20,
              endIndent: 20,
            ),
            const Text(
              'Your Activities',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        );

      case AsyncError():
        return Center(
          child: Column(
            children: [
              const Text('Error'),
              TextButton(
                onPressed: () async {
                  ref.invalidate(tripControllerProvider(tripId));
                },
                child: const Text('Try again'),
              ),
            ],
          ),
        );
      case AsyncLoading():
        return const Center(
          child: CircularProgressIndicator(),
        );

      case _:
        return const Center(
          child: Text('Error'),
        );
    }
  }
}
