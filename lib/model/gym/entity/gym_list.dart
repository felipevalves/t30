import 'gym.dart';

class GymList {
  List<Gym> gyms;

  GymList({this.gyms});

  factory GymList.fromJson(List<dynamic> json) {
    List<Gym> gyms = new List<Gym>();
    gyms = json.map((i) => Gym.fromJson(i)).toList();

    return GymList(gyms: gyms);
  }
}