import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class GenerateCodePage extends StatefulWidget {
  const GenerateCodePage({super.key});

  @override
  State<GenerateCodePage> createState() => _GenerateCodePageState();
}

class _GenerateCodePageState extends State<GenerateCodePage> {
  String? qrData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/home');
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
        ),
        backgroundColor: Colors.indigo,
        title: const Text(
          'Generate QR Code',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, "/scan");
            },
            icon: const Icon(
              Icons.qr_code_scanner,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Center(
                child: Container(
                  padding: const EdgeInsets.all(25),
                  width: 85,
                  color: Colors.white70,
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          width: 85,
                          child: Column(children: [
                            // if (qrData != null) PrettyQrView(data: qrData),
                            if (qrData != null) PrettyQrView.data(data: qrData!),
                          ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Center(
                child: Container(
                  width: 400,
                  padding: const EdgeInsets.only(right: 10, left: 10,),
                  color: Colors.white54,
                  child: Column(children: [
                    TextField(
                      onSubmitted: (value) {
                        setState(() {
                          qrData = value;
                        });
                      },
                      decoration: const InputDecoration(
                          labelText: 'input link',
                          labelStyle: TextStyle(
                            color: Colors.black38,
                          ),
                          border: InputBorder.none),
                      style: const TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
