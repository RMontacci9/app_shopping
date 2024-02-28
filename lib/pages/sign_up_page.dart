import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 80, 20, 40),
          color: const Color(0xFFF5F5F5),
          child: Column(
            children: [
              Container(

                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      //aqui é a cor da borda
                      offset: new Offset(1, 2.0),
                      //aqui define o tamanho das sombras laterais e em cima e embaixo
                      blurRadius: 5,
                      //cuida da expansão da sombra
                      spreadRadius: 1, // cuida da intensidade da borda
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      TextFormField(
                        //  autofocus: true,
                        keyboardType: TextInputType.text,
                        // traz o teclado especifico para o email
                        decoration: InputDecoration(
                            labelText: 'Name',
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 16)),
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        //  autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                        // traz o teclado especifico para o email
                        decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 16)),
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        //  autofocus: true,
                        keyboardType: TextInputType.text,
                        // traz o teclado especifico para textos
                        obscureText: true,
                        // deixa o campo da senha obscuro para não poder ver a senha
                        decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 16)),
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {

                          },
                          child: Text(
                            'Sign up',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ButtonStyle(
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30,)
                    ],
                  ),
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}
