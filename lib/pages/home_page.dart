import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: const Text(
          'Qr Code Scanner',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(60.0)),
            const CircleAvatar(
              backgroundImage: AssetImage('images/Rafli.jpg'),
              radius: 75,
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'Hello Zeinn!',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 350,
              child: const Text('Selamat datang di QR Code Scanner App. Applikasi yang dapat membantu kamu dalam scan QR', style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.popAndPushNamed(context, "/scan");
                    },
                    child: const Text('Scan QR')),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.popAndPushNamed(context, "/generate");
                    },
                    child: const Text('Upload QR')
                ),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
