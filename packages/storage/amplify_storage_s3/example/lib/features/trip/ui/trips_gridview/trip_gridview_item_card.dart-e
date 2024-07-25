import 'package:amplify_trips_planner/common/utils/colors.dart' as constants;
import 'package:amplify_trips_planner/common/utils/date_time_formatter.dart';
import 'package:amplify_trips_planner/models/ModelProvider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class TripGridViewItemCard extends StatelessWidget {
  const TripGridViewItemCard({
    required this.trip,
    super.key,
  });

  final Trip trip;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      child: Column(
        children: [
          Expanded(
            child: Container(
              height: 500,
              alignment: Alignment.center,
              color: const Color(constants.primaryColorDark),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: trip.tripImageUrl != null
                        ? Stack(
                            children: [
                              const Center(child: CircularProgressIndicator()),
                              CachedNetworkImage(
                                errorWidget: (context, url, dynamic error) =>
                                    const Icon(Icons.error_outline_outlined),
                                imageUrl: trip.tripImageUrl!,
                                cacheKey: trip.tripImageKey,
                                width: double.maxFinite,
                                height: 500,
                                alignment: Alignment.topCenter,
                                fit: BoxFit.fill,
                              ),
                            ],
                          )
                        : Image.asset(
                            'images/amplify.png',
                            fit: BoxFit.contain,
                          ),
                  ),
                  Positioned(
                    bottom: 16,
                    left: 16,
                    right: 16,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        trip.destination,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(2, 8, 8, 4),
            child: DefaultTextStyle(
              softWrap: false,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleMedium!,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      trip.tripName,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: Colors.black54),
                    ),
                  ),
                  Text(
                    trip.startDate.getDateTime().format('MMMM dd, yyyy'),
                    style: const TextStyle(fontSize: 12),
                  ),
                  Text(
                    trip.endDate.getDateTime().format('MMMM dd, yyyy'),
                    style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
