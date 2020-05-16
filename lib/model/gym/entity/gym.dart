class Gym {
  final int id;
  final String name;
  Gym(this.name, {this.id});

  @override
  String toString() {
    return 'Gym{id: $id, name: $name}';
  }

  Gym.fromJson(Map<String, dynamic> map) :
        id = map['id'],
        name = map['name'];

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name
  };


}