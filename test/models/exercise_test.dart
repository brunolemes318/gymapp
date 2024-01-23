import 'package:flutter_test/flutter_test.dart';
import 'package:gymapp/models/exercise.dart';

void main() {
  test("test FromJson ", () {
    final jsonTest = {
      "title": "Squat",
      "prelude": "3",
      "duration": "10",
      "index": 1,
      "startTime": 1
    };

    final exercise = Exercise.fromJson(jsonTest, 1, 1);
    final json = exercise.toJson();
    expect(json, jsonTest);
  });

  test("test toJson", () {
    final exercise = Exercise(
      title: "Squat",
      prelude: "3",
      duration: "10",
      index: 1,
      startTime: 1,
    );

    final json = exercise.toJson();
    expect(json, {
      "title": "Squat",
      "prelude": "3",
      "duration": "10",
      "index": 1,
      "startTime": 1
    });
  });
}
