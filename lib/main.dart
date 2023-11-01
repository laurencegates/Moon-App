import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moon_app/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple.shade100,
          centerTitle: true,
          title: Text(
            'MOON APP',
            style: GoogleFonts.poppins(
              letterSpacing: 4,
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Muhmmad Moeen'.toUpperCase(),
                style: GoogleFonts.pacifico(
                    fontSize: 28,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w900,
                    color: Colors.deepPurple.shade200),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Khateri RUST DEV'.toUpperCase(),
                style: GoogleFonts.poppins(
                    fontSize: 20, color: Colors.deepPurple.shade200),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
