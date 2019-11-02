import 'package:flutter/material.dart';
import 'package:tablemeal/widgets/input_field.dart';

import 'login.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            "images/restaurant.jpg",
            fit: BoxFit.fill,
            height: 1000.0,
          ),
          Padding(
            padding: EdgeInsets.only(
                top: 60.0, bottom: 60.0, left: 120.0, right: 120.0),
            child: Card(
              color: Colors.white70,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)),
              elevation: 5.0,
              child: Container(
                child: Row(

                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width /3.3,
                      height: MediaQuery.of(context).size.height,
                      color: Colors.red,
                      child: Padding(
                        padding: EdgeInsets.only(top: 20.0, right: 50.0, left: 50.0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  backgroundImage: NetworkImage(
                                    '',
                                  ),
                                  radius: 70.0,
                                ),
                              ),
                              SizedBox(height: 60.0,),


                              Container(
                                padding: EdgeInsets.only(
                                    top: 5.0,
                                    bottom: 5.0
                                ),
                                child: Text(
                                  "O cadastro é totalmente gratuito!",
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white
                                  ),
                                ),
                              ),

                              SizedBox(height: 5.0,),


                              Container(
                                padding: EdgeInsets.only(
                                    top: 5.0,
                                    bottom: 5.0
                                ),
                                child: Text(
                                  "É necessário apenas o preenchimento das informações ao lado para começar!",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),

                              SizedBox(height: 50.0,),


                              FlatButton(
                                color: Colors.red,
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(18.0),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context){
                                        return new Login();
                                      })
                                  );
                                },
                                child: Text("Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontFamily: "WorkSansLight"
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.only(
                          top: 70.0, right: 70.0, left: 200.0, bottom: 40.0),
                      child: Column(
                        children: <Widget>[
                          //InputField Widget from the widgets folder
                          InputField(
                              label: "Nome",
                              content: "Nome",
                              icon: Icons.person),

                          SizedBox(height: 20.0),

                          InputField(
                              label: "Senha",
                              content: "Senha",
                              icon: Icons.extension),

                          SizedBox(height: 20.0),

                          //InputField Widget from the widgets folder
                          InputField(
                              label: "CNPJ",
                              content: "123.456.789-10",
                              icon: Icons.label),

                          SizedBox(height: 20.0),

                          //InputField Widget from the widgets folder
                          InputField(
                              label: "Email",
                              content: "yo@seethat.com",
                              icon: Icons.email),

                          SizedBox(height: 20.0),

                          InputField(
                              label: "Mobile",
                              content: "+22994684468",
                              icon: Icons.mobile_screen_share),

                          SizedBox(
                            height: 40.0,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                width: 70.0,
                              ),
                              FlatButton(
                                color: Colors.red,
                                shape: RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(18.0),
                                ),
                                onPressed: () {},
                                child: Text("Cadastrar",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                    fontFamily: "WorkSansLight"
                                ),
                                ),
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
