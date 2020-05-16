class Login {
  String email;
  String password;
  String token;

  Login({this.email, this.password, this.token});

  bool isLoginValid() {
    return (email != null && email.isNotEmpty)
      && (password != null && password.isNotEmpty);
  }


  @override
  String toString() {
    return 'Login{email: $email, password: $password}';
  }

  Login.fromJson(Map<String, dynamic> map)
      : email = map['email'],
        password = map['password'],
        token = map['token'];

  Map<String, dynamic> toJson() => {
    'email': email,
    'password': password,
    'token': token,
  };
}