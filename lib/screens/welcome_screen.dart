import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.chevron_left,
          size: 40,
          color: Colors.black,
        ),
        actions: const [
          Center(
            child: Padding(
                padding: EdgeInsets.only(right: 50),
                child: Text(
                  'Skip',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.motorcycle,
              size: 250,
              color: Colors.black,
            ),
            Container(
              height: 15,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.23),
                    offset: Offset(0, -50),
                    blurRadius: 20,
                    spreadRadius: 5,
                  )
                ],
              ),
            ),
             Text('Light Delivery Service',
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,

                ),
                ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              child: const Text(
                'We are the fasters courier services in Accra Call us when ready',
                style: TextStyle(
                    color: Color.fromARGB(255, 110, 110, 110),
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
                textAlign: TextAlign.center,
              ),
            ),
          const SizedBox(
              height: 80,
            ),
             TextButton(
                onPressed: () {
                   Navigator.pushNamed(context, '/map');
                },
                style: TextButton.styleFrom(
                    backgroundColor:  Colors.black,
                    minimumSize: const Size(50, 50),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                child: const Padding(
                  padding: EdgeInsets.only(left: 40, right: 40, top: 12, bottom: 12),
                  child: Text(
                    'Next',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                )),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
