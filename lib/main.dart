import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue.shade100,
        hintColor: const Color(0xff2A2C7A),
        primaryIconTheme: IconThemeData(color: Colors.blue.shade100),
      ),
      home: Scaffold(
        backgroundColor: Colors.blue.shade100,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 160,
                  width: 160,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/Asset 1mdpi.png'),
                    ),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: 'VER',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 28,
                        color: const Color(0xff4788C8),
                        fontWeight: FontWeight.bold),
                    children: const [
                      TextSpan(
                        text: 'TEX',
                        style: TextStyle(
                          fontSize: 28,
                          color: Color(0xff2A2C7A),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit',
                  style: TextStyle(fontSize: 16, color: Color(0xff2A2C7A)),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 70,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    // autofocus: true,
                    enabled: true,
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.email,
                      ),
                      filled: true,
                      fillColor: Colors.blue.shade200,
                      hintText: 'Email',
                      hintStyle: const TextStyle(fontSize: 14),
                      labelText: 'Email',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    enabled: true,
                    obscureText: true,
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.lock,
                      ),
                      suffixIcon: const Icon(Icons.visibility_off),
                      filled: true,
                      fillColor: Colors.blue.shade200,
                      hintText: 'Password',
                      hintStyle: const TextStyle(fontSize: 14),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 220),
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(
                      color: Colors.blue.shade600,
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 180,
                ),
                Container(
                  height: 60,
                  width: 370,
                  decoration: BoxDecoration(
                    color: const Color(0xff2A2C7A),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: const Center(
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
