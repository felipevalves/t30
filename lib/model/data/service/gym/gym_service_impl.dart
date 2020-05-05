
import 'package:t30/model/data/entity/gym.dart';
import '../entity/default_response.dart';
import 'gym_service.dart';



class GymServiceImpl implements GymService {

  @override
  Future<DefaultResponse> save(Gym gym) async {
//    final response = await http.post('/create', body: );

    try {
      return Future.delayed(
          Duration(seconds: 1), () => MyResponse(200, '{"id": 1, "name": "Gym 1"}'));
    }
    catch (err) {
      print(err);
      return MyResponse(400, err.toString());
    }
  }

  @override
  Future<DefaultResponse> findAll() async {

    try {
      return Future.delayed(
          Duration(seconds: 1), () => MyResponse(200, '[{"id": 1, "name": "Gym 1"}, {"id": 2, "name": "Gym 2"}, {"id": 3, "name": "Gym 3"}]'));
    }
    catch (err) {
      print(err);
      return MyResponse(400, err.toString());
    }

  }
}


