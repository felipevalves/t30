
import 'package:t30/model/gym/entity/gym.dart';
import 'package:t30/model/gym/service/gym_service_impl.dart';

import '../../data/service/default_response.dart';

abstract class GymService {
  Future<DefaultResponse> save(Gym gym) async { return null;}
  Future<DefaultResponse> findAll() async { return null;}
}

class GymServiceFactory {
  static GymService _service;

  static GymService newInstance() {
    if (_service == null) {
      _service = GymServiceImpl();
    }
    return _service;
  }
}