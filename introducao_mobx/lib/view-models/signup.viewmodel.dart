 class SignupViewModel {
  String _nome = "";
  String _email= "";
  String _password = "";
  bool busy = false;

  String get nome => _nome;

  set nome(String value) {
    _nome = value;
  }

  String get email => _email;

  String get password => _password;

  set password(String value) {
    _password = value;
  }

  set email(String value) {
    _email = value;
  }


 }