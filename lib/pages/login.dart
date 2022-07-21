import 'package:flutter/material.dart';
import 'package:ipnet/utils.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    final usernameController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
        body: Center(
          child: Stack(children: <Widget>[
            Positioned.fill(
              child:
              Image.asset('', fit: BoxFit.cover),
            ),
            Center(
              child: ListView(
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(
                                left: 40,
                                right: 40,
                                top: width < 481 ? 125 : 30),
                            child: Card(
                              elevation: 2,
                              color: Colors.blueGrey.withOpacity(0.5),
                              child: Container(
                                padding: const EdgeInsets.all(30),
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.stretch,
                                  children: <Widget>[
                                    width < 481
                                        ? Image.asset(
                                        '',
                                        width: 100,
                                        height: 100)
                                        : Image.asset(
                                        ''),
                                    Center(
                                      child: Text(
                                        "My Apps",
                                        style: TextStyle(
                                            fontSize: width < 481 ? 15 : 25,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      child: TextFormField(
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            labelText: "Username",
                                            hintStyle:
                                            const TextStyle(color: Colors.grey),
                                            labelStyle:
                                            const TextStyle(color: Colors.white),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.cyan),
                                            ),
                                            enabledBorder:
                                            new UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white)),
                                            icon: Icon(Icons.account_circle,
                                                color: Colors.orange,
                                                size: width < 481 ? 25 : 40),
                                            hintText: "Username"),
                                        controller: usernameController,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      margin: EdgeInsets.only(top: 30),
                                    ),
                                    Container(
                                      child: TextFormField(
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            labelText: "Password",
                                            hintStyle:
                                            const TextStyle(color: Colors.grey),
                                            labelStyle:
                                            const TextStyle(color: Colors.white),
                                            focusedBorder: const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.cyan),
                                            ),
                                            enabledBorder:
                                            new UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white)),
                                            icon: Icon(Icons.lock,
                                                color: Colors.orange,
                                                size: width < 481 ? 25 : 40),
                                            hintText: "Password"),
                                        style: TextStyle(color: Colors.white),
                                        controller: passwordController,
                                        obscureText: true,
                                      ),
                                      margin: EdgeInsets.only(
                                          top: width < 481 ? 10 : 40),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          child: MaterialButton(
                                            padding: EdgeInsets.only(
                                                right: 30,
                                                left: 30,
                                                top: 15,
                                                bottom: 15),
                                            color: Colors.purple,
                                            textColor: Colors.white,
                                            child: Text(
                                              "LOG IN",
                                              style: TextStyle(
                                                  fontSize:
                                                  width < 481 ? 15 : 20,
                                                  color: Colors.white),
                                            ),
                                            onPressed: () {
                                              // performLogin();
                                            },
                                          ),
                                          margin: EdgeInsets.only(
                                              top: width < 481 ? 10 : 40),
                                          padding: EdgeInsets.all(20),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ))
                ],
              ),
            )
          ]),
        ));
  }
}
