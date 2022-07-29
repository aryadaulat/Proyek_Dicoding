import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String _email;
  final String _password;
  const Home(this._email, this._password, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Home Page")),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Text(_email),
            // Text(_password),
            // OutlinedButton(
            //   child: Text('Kembali'),
            //   onPressed: () {
            //     Navigator.pop(context);
            //   },
            // ),
            SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'images/busitera.png',
                    height: 33,
                    width: 33,
                  ),
                  const Text(
                    "BUS ITERA ",
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 19.0,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Icon(
                    Icons.person,
                    color: Colors.grey,
                    size: 33.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 40.0),
              alignment: Alignment.bottomLeft,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hai $_email",
                      style: const TextStyle(
                        // fontFamily: 'Pacifico',
                        fontSize: 24.0,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Password Akun Anda Adalah $_password",
                      style: const TextStyle(
                        // fontFamily: 'Pacifico',
                        fontSize: 24.0,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      child: const Text(
                        "Selamat Datang Di Aplikasi Bus Itera, Bus Itera adalah salah satu kendaraan umur yang berada di kampus Institut Teknologi Sumatera ",
                        style: TextStyle(
                          // fontFamily: 'Pacifico',
                          fontSize: 16.0,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
