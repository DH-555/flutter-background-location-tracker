import 'package:flutter/foundation.dart';

/// iOS configuration that will only be used by the iOS implementation
///
/// Default Values:
/// - activityType: [ActivityType.AUTOMOTIVE]
/// - distanceFilterMeters: null
@immutable
class IOSConfig {
  /// The type of activity, default to [ActivityType.AUTOMOTIVE]
  final ActivityType activityType;

  /// The distance in meters that should be moved before updates are sent.
  /// Defaults to no filter (null)
  final int? distanceFilterMeters;

  const IOSConfig({
    this.activityType = ActivityType.AUTOMOTIVE,
    this.distanceFilterMeters,
  });
}

enum ActivityType {
  /// positioning in activities that are not covered by one of
  /// the other activity types.  Includes activities without a
  /// specific user intention; for example, positioning while
  /// the user sits on a bench interacting with the device
  OTHER,

  /// positioning in an automobile following a road network
  AUTOMOTIVE,

  /// Positioning in dedicated fitness sessions, e.g. walking,
  /// workouts, running workouts, cycling workouts, etc
  FITNESS,

  /// Positioning for transportation that does not or may not
  /// adhere to roads such as cycling, scooters, trains, boats
  /// and off-road vehicles; also for positioning indoors and
  /// outdoors that isn’t tied to a dedicated fitness session,
  /// e.g. walking
  NAVIGATION,

  ///positioning for activities in the air, e.g. flying in an
  /// airplane or helicopter, paragliding, flying on a drone,
  /// skydiving, etc.  Also includes runway taxiing
  AIRBORNE,
}
