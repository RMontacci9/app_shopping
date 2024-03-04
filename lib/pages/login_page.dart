import 'package:flutter/material.dart';
import 'package:shopping/main.dart';
import 'package:shopping/pages/home_page.dart';
import 'package:shopping/pages/sign_up_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 80, 20, 40),
          //os primeiros 0xFFF definem a opacidade da cor, o resto é o hexadecimal
          child: Column(
            //apenas listviews tem comportamento de rolagem, rows, columns e containers não possuem.
            children: [
              Container(
                height: 450,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Welcome',
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpPage(),
                                ),
                              );
                            },
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor),
                            ),
                          ),
                          // o FlatButton foi substituido pelo TextButton
                        ],
                      ),
                      Text(
                        'Sign in to continue',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      TextFormField(
                        //  autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                        // traz o teclado especifico para o email
                        decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(
                                color: Theme.of(context).primaryColor,
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
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 16)),
                        style: TextStyle(fontSize: 20),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot your password?',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Seu código onPressed aqui
                        },
                        child: Text(
                          'Sign in',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                              return Theme.of(context).primaryColor;
                            },
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 15, bottom: 15),
                child: Text(
                  '- OR -',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Theme.of(context).primaryColor,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                height: 50,
                child: TextButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      foregroundColor: Theme.of(context).primaryColor),
                  child: Row(
                    children: [
                      SizedBox(
                        // antes se usava container, agora dê preferência ao sizedbox
                        height: 24,
                        width: 100,
                        child: Image.asset(
                          "assets/images/facebook.png",
                          // o tamanho da imagem é obtido atraves do tamanho do container em que ele está contido
                        ),
                      ),
                      Text('Sign in with Facebook',
                          style:
                              TextStyle(color: Theme.of(context).primaryColor)),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Theme.of(context).primaryColor,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                height: 50,
                child: TextButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      foregroundColor: Theme.of(context).primaryColor),
                  child: Row(
                    children: [
                      SizedBox(
                        // antes se usava container, agora dê preferência ao sizedbox
                        height: 24,
                        width: 100,
                        child: Image.asset(
                          "assets/images/google.png",
                          // o tamanho da imagem é obtido atraves do tamanho do container em que ele está contido
                        ),
                      ),
                      Text('Sign in with Google',
                          style:
                              TextStyle(color: Theme.of(context).primaryColor)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
