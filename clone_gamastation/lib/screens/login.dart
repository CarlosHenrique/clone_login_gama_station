import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _viewpass = "Mostrar";

  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
      if (_obscureText) {
        _viewpass = "Ocultar";
      } else {
        _viewpass = "Mostrar";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: size.height * 0.28, bottom: size.height * 0.05),
                width: size.width * 0.6,
                child: Image.network(
                    "https://assets.website-files.com/5ff79f3ebebf6b12f6b7747f/5ffe04fc6284b7e90070d985_logo-gama-academy.png"),
              ),
              Container(
                margin: EdgeInsets.only(top: size.height * 0.02),
                width: size.width * 0.9,
                height: size.height * 0.065,
                decoration: BoxDecoration(color: Color(0xffDEDCDC)),
                child: TextField(
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontStyle: FontStyle.normal),
                  decoration: InputDecoration(
                      hintText: "Email",
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                      border: InputBorder.none),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: size.height * 0.02),
                width: size.width * 0.9,
                height: size.height * 0.065,
                decoration: BoxDecoration(color: Color(0xffDEDCDC)),
                child: TextField(
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontStyle: FontStyle.normal),
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    hintText: "Senha",
                    contentPadding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                    border: InputBorder.none,
                    suffix: TextButton(
                        onPressed: _toggle,
                        child: Text(
                          _viewpass,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xff68DC44),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Esqueceu a senha?",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 15),
                    )),
              ),
              ElevatedButton(
                  child: Container(
                      width: size.width * 0.84,
                      height: size.height * 0.065,
                      decoration: BoxDecoration(color: Color(0xff68DC44)),
                      child: Center(
                        child: Text(
                          "Entrar",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                      )),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff68DC44),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  onPressed: () {}),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Novo por aqui?",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 15),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Criar conta",
                          style: TextStyle(
                              color: Color(0xff68DC44),
                              fontWeight: FontWeight.w700,
                              fontSize: 15),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
