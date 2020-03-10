import 'package:masterclassbalta/models/user.model.dart';
import 'package:masterclassbalta/view-models/signup.viewmodel.dart';

class AccountRepository {
  Future<UserModel> createAccount(SignupViewModel model) async{
    await Future.delayed(new Duration(milliseconds: 1500));
    return new UserModel(
        id: "1",
        name: "Joao",
        email: "joao@teste.com",
        picture: "https://picsum.photos/200/200",
        role: "studant",
        token: "nskdnsknkdsn");
  }
}