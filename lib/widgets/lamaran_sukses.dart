import 'package:flutter/material.dart';
import 'package:latihan1/pages/pages.dart';
import 'package:supercharged/supercharged.dart';

class LamaranSukses extends StatefulWidget {
  @override
  _LamaranSuksesState createState() => _LamaranSuksesState();
}

class _LamaranSuksesState extends State<LamaranSukses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: "75A6FF".toColor(),
      body: Stack(
        children: [
          ////Top
          SizedBox(
            height: 40,
          ),
          ////Body
          SafeArea(
              child: Container(
            margin: EdgeInsets.only(top: 40),
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16), topRight: Radius.circular(16)),
              color: Colors.white,
            ),
            child: Column(children: [
              ////Body Atas
              Container(
                height: 640,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          margin: EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/berhasil_lamaran.png'),
                                fit: BoxFit.contain),
                          ),
                        ),
                        Text(
                          "Kamu Berhasil Melamar",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text("Semoga Kamu Lolos Ke Tahap Selanjutnya")
                      ],
                    )
                  ],
                ),
              ),
            ]),
          )),
          ////Bottom
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 5,
                    offset: Offset(
                      2,
                      2,
                    ),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Route route =
                          MaterialPageRoute(builder: (context) => MainPage());
                      Navigator.push(context, route);
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 105),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: "75A6FF".toColor(),
                      ),
                      child: Text(
                        "Kembali Ke Beranda",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
