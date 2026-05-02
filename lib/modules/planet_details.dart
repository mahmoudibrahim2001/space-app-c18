import 'package:flutter/material.dart';
// import 'package:space/core/theme/app_colors.dart';
import 'package:space/data/planet_data.dart';

class PlanetDetails extends StatelessWidget {
  static const String routeName = "details";
  Planet? planet;
  PlanetDetails({super.key});

  @override
  Widget build(BuildContext context) {
    planet ??= ModalRoute.of(context)?.settings.arguments as Planet;
    var theme = Theme.of(context);

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/home.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: UnconstrainedBox(
            child: CircleAvatar(
              backgroundColor: Colors.black26,
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.chevron_left, color: Colors.white),
              ),
            ),
          ),
          title: Text(planet?.name ?? ""),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),

                  Center(
                    child: Image.asset(planet?.pngImage ?? "", height: 250),
                  ),
                  const SizedBox(height: 24),

                  const Text(
                    "About",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),

                  Text(
                    planet?.about ?? "",
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 24),

                  Text.rich(
                    TextSpan(
                      style: Theme.of(context).textTheme.bodyMedium,
                      children: [
                        const TextSpan(
                          text: "Distance from Sun (km) : ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: "${planet?.distanceKm}"),
                        const TextSpan(
                          text: "\nLength of Day (hours) : ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: "${planet?.dayLengthHours}"),
                        const TextSpan(
                          text: "\nOrbital Period (Earth years) : ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: "${planet?.orbitalPeriod}"),
                        const TextSpan(
                          text: "\nRadius (km) : ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: "${planet?.radiusKm}"),
                        const TextSpan(
                          text: "\nMass (kg) : ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: "${planet?.massKg}"),
                        const TextSpan(
                          text: "\nGravity (m/s²) : ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: "${planet?.gravity}"),
                        const TextSpan(
                          text: "\nSurface Area (km²) : ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: "${planet?.surfaceArea}"),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
