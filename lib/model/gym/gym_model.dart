import 'package:t30/model/data/service/default_response.dart';
import 'entity/gym.dart';
import 'service/gym_service.dart';

abstract class GymModel {
  Future<DefaultResponse> save(Gym gym) {
    return null;
  }

  Future<DefaultResponse> findAll() async { return null;}
}

class GymModelImpl implements GymModel {

  @override
  Future<DefaultResponse> save(Gym gym) {
    GymService service = GymServiceFactory.newInstance();
    return Future.delayed(Duration(seconds: 1), () => service.save(gym));
  }

  @override
  Future<DefaultResponse> findAll() {
    GymService service = GymServiceFactory.newInstance();
    return Future.delayed(Duration(seconds: 1), () => service.findAll());
  }

}
