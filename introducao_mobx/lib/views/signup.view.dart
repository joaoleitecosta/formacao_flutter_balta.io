import 'package:flutter/material.dart';
import 'package:masterclassbalta/controllers/sigunp.controller.dart';
import 'package:masterclassbalta/view-models/signup.viewmodel.dart';
import 'package:masterclassbalta/views/home.view.dart';
import 'package:provider/provider.dart';
import '../store/app.store.dart';

class SignupView extends StatefulWidget {

  @override
  _SignupViewState createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {

  final _formKey = GlobalKey<FormState>();

  final _controller = new SignupController();

  var model = new SignupViewModel();

  void setNome(String nome) => model.nome = nome;

  void setEmail(String email) => model.email = email;

  void setPassword(String password) => model.password = password;




  @override
  Widget build(BuildContext context) {
    
    var store = Provider.of<AppStore>(context);

    return Scaffold(
      backgroundColor: Colors.black12,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 40, right: 40, top: 150),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("Cadastre-se"),
                SizedBox(height: 20,),
                textFormFild(TextInputType.text, false, "Nome", "Nome Inválido", setNome),
                SizedBox(height: 10,),
                textFormFild(TextInputType.emailAddress, false, "Email", "Digite um email válido", setEmail),
                SizedBox(height: 10,),
                textFormFild(TextInputType.visiblePassword, true, "Senha", "Digite uma senha", setPassword),
                SizedBox(height: 20,),
                model.busy ? Center(child: Container(
                  child: CircularProgressIndicator(
                       backgroundColor: Colors.white,
                  ),
                ),) :
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Theme.of(context).primaryColor
                  ),
                  margin: EdgeInsets.only(top: 20),
                  width: 1000,
                  child: FlatButton(
                 //   color: Theme.of(context).primaryColor,
                    child: Text("Cadastrar", style: TextStyle(color: Colors.white, fontSize: 22),),
                    onPressed: () {
                      if(_formKey.currentState.validate()) {
                         _formKey.currentState.save();
                      }
                      setState(() {});
                        _controller.create(model).then((data) {
                          setState(() {});
                          store.setUser(
                            data.name, 
                            data.email, 
                            data.picture, 
                            data.token
                            );  
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeView())
                          );
                        });

                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }

  Widget textFormFild (TextInputType textInputType, bool obscure, String label, String msgValidate, Function set) {
    return  TextFormField(
      keyboardType: textInputType,
      obscureText: obscure,
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
        border: OutlineInputBorder(),
      ),
      validator: (value) => value.isEmpty ? msgValidate : null,
      onSaved: (value){
        set(value);
      },
    );
  }
}


