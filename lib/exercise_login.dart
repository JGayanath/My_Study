import 'package:flutter/material.dart';

class Login_Home extends StatefulWidget {
  const Login_Home({Key? key}) : super(key: key);

  @override
  State<Login_Home> createState() => _Login_HomeState();
}

class _Login_HomeState extends State<Login_Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: [
                const Icon(
                  Icons.account_circle,
                  size: 250,
                  color: Colors.green,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Align(
                  alignment: Alignment.center,
                  child: const Text(
                    "User Loging",
                    style:
                        TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                TextField(
                  style: const TextStyle(fontSize: 20.0),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      hintText: "Your Email"),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                TextField(
                  style: const TextStyle(fontSize: 20.0),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      hintText: "Your Password"),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Container(
                  margin: EdgeInsets.only(left: 50.0, right: 50.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 5.0,
                        shape: StadiumBorder(),
                        primary: Colors.amber,
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 10.0),
                        child: Text(
                          "Login Here",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Dont't have an account ?",
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                      child: Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.add_circle_outline,
                                  size: 35.0,
                                ),
                                color: Colors.white,
                              )),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "Sing Up Here",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
