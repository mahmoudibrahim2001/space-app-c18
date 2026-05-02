import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space/modules/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  static const String routeName = "/welcome";

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/login.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: .start,
              mainAxisAlignment: .center,
              children: [
                const Spacer(),
                Expanded(
                  child: Text(
                    "Explore\nThe\nUniverse",
                    style: theme.textTheme.displayLarge,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                      context,
                      HomeScreen.routeName,
                    );
                  },
                  child: Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Text("Explore", style: theme.textTheme.displaySmall),
                      const Icon(Icons.chevron_right_rounded),
                    ],
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
