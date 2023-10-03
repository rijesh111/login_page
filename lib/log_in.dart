import 'package:flutter/material.dart';
import 'package:login_page/for.dart';
import 'navigator.dart';

class Loog extends StatefulWidget {
  const Loog({super.key});

  @override
  State<Loog> createState() => _LoogState();
}

class _LoogState extends State<Loog> {
  final GlobalKey<FormState> fore = GlobalKey<FormState>();
  final TextEditingController keye = TextEditingController();
  final TextEditingController psw = TextEditingController();

  @override
  Widget build(context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 10, 6, 21),
                  Color.fromARGB(255, 139, 233, 249)
                ]),
          ),
          child: Form(
            key: fore,
            child: Column(
              children: [
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: Image.asset(
                    'images/log.png',
                    height: 200,
                    width: 100,
                  ),
                ),
                const Align(
                  alignment: Alignment.topLeft,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 240),
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 235, 231, 231),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 150),
                  child: Text(
                    'Please log in to continue',
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(255, 247, 234, 234)
                          .withOpacity(0.6),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextFormField(
                    controller: keye,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'no value';
                      } else if (value.length < 5) {
                        return 'email must be greater than 5 letters';
                      }
                      ;
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      label: Text(
                        "email:",
                        style: TextStyle(
                            color: Color.fromARGB(255, 252, 243, 243)),
                      ),
                      hintText: 'abc@example.com',
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 252, 244, 244)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: TextFormField(
                    controller: psw,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "no value";
                      } else if (value.length < 5) {
                        return 'password must be greater than 5 letters';
                      }

                      return null;
                    },
                    obscureText: true,
                    decoration: const InputDecoration(
                      label: Text(
                        'password:',
                        style: TextStyle(color: Colors.white),
                      ),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (fore.currentState!.validate()) {
                      psw.clear();
                      keye.clear();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Nav(),
                          ));
                    }
                    ;
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 20),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'forgot password?',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    const Text('don\'t have an account'),
                    TextButton(
                      onPressed: () {
                        if (fore.currentState!.validate()) {
                          psw.clear();
                          keye.clear();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const For(),
                              ));
                        }
                      },
                      child: const Text(
                        'sign up',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
