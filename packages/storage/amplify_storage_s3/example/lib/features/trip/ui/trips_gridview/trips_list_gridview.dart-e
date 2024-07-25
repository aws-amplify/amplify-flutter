import 'package:amplify_trips_planner/features/trip/ui/trips_gridview/trip_gridview_item.dart';
import 'package:amplify_trips_planner/models/ModelProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TripsListGridView extends StatelessWidget {
  const TripsListGridView({
    required this.tripsList,
    super.key,
  });

  final AsyncValue<List<Trip>> tripsList;

  @override
  Widget build(BuildContext context) {
    switch (tripsList) {
      case AsyncData(:final value):
        return value.isEmpty
            ? const Center(
                child: Text('No Trips'),
              )
            : OrientationBuilder(
                builder: (context, orientation) {
                  return GridView.count(
                    crossAxisCount:
                        (orientation == Orientation.portrait) ? 2 : 3,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                    padding: const EdgeInsets.all(4),
                    childAspectRatio:
                        (orientation == Orientation.portrait) ? 0.9 : 1.4,
                    children: value.map((tripData) {
                      return TripGridViewItem(
                        trip: tripData,
                      );
                    }).toList(growable: false),
                  );
                },
              );

      case AsyncError():
        return const Center(
          child: Text('Error'),
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
