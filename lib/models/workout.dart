import 'package:gymapp/models/exercise.dart';

class Workout {
  String? title;
  List<Exercise>? exercises;

  Workout({
    this.title,
    this.exercises,
  });

  factory Workout.fromJson(Map<String, dynamic> json) {
    int index = 0;

    return Workout(
      title: json["title"],
      exercises: json['exercises'].map((exercise) {
        index++;
        return Exercise.fromJson(exercise, index, 0);
      }).toList(),
    );
  }

  List<Map<String, dynamic>> toJson() {
    return exercises!.map((e) => e.toJson()).toList();
  }
}
