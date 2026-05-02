class Planet {
  final String name;
  final String pngImage;
  // final String model3d;
  final String title;
  final String about;
  final int distanceKm;
  final double dayLengthHours;
  final double orbitalPeriod;
  final double radiusKm;
  final double massKg;
  final double gravity;
  final double surfaceArea;

  Planet({
    required this.name,
    required this.pngImage,
    // required this.model3d,
    required this.title,
    required this.about,
    required this.distanceKm,
    required this.dayLengthHours,
    required this.orbitalPeriod,
    required this.radiusKm,
    required this.massKg,
    required this.gravity,
    required this.surfaceArea,
  });
}

List<Planet> solarSystem = [
  Planet(
    name: "Sun",
    pngImage: "assets/images/sun.png",
    // model3d: "sun.glb",
    title: "The Sun: Our Solar System's Star",
    about:
        "The Sun is the heart of our solar system, a massive ball of plasma providing heat, light, and energy.",
    distanceKm: 0,
    dayLengthHours: 600.0,
    orbitalPeriod: 0.0,
    radiusKm: 695700.0,
    massKg: 1.989e30,
    gravity: 274.0,
    surfaceArea: 6.09e12,
  ),
  Planet(
    name: "Mercury",
    pngImage: "assets/images/mercury.png",
    // model3d: "mercury.glb",
    title: "Mercury: The Closest Planet",
    about:
        "The smallest and innermost planet in the Solar System, orbiting the Sun every 88 Earth days.",
    distanceKm: 57909227,
    dayLengthHours: 1407.6,
    orbitalPeriod: 0.24,
    radiusKm: 2439.7,
    massKg: 3.301e23,
    gravity: 3.7,
    surfaceArea: 7.48e7,
  ),
  Planet(
    name: "Venus",
    pngImage: "assets/images/venus.png",
    // model3d: "venus.glb",
    title: "Venus: Earth's Toxic Twin",
    about:
        "Shrouded in sulfuric acid clouds, Venus is the hottest planet due to an intense greenhouse effect.",
    distanceKm: 108209072,
    dayLengthHours: 5832.2,
    orbitalPeriod: 0.62,
    radiusKm: 6051.8,
    massKg: 4.867e24,
    gravity: 8.87,
    surfaceArea: 4.60e8,
  ),
  Planet(
    name: "Earth",
    pngImage: "assets/images/earth.png",
    // model3d: "earth.glb",
    title: "Earth: Our Blue Marble",
    about: "Our home planet and the only known celestial body to support life.",
    distanceKm: 149598026,
    dayLengthHours: 23.93,
    orbitalPeriod: 1.0,
    radiusKm: 6371.0,
    massKg: 5.972e24,
    gravity: 9.81,
    surfaceArea: 5.10e8,
  ),
  Planet(
    name: "Mars",
    pngImage: "assets/images/mars.png",
    // model3d: "mars.glb",
    title: "Mars: The Red Planet",
    about:
        "A cold, desert-like world with a thin atmosphere and the largest volcano in the solar system.",
    distanceKm: 227943824,
    dayLengthHours: 24.62,
    orbitalPeriod: 1.88,
    radiusKm: 3389.5,
    massKg: 6.39e23,
    gravity: 3.71,
    surfaceArea: 1.45e8,
  ),
  Planet(
    name: "Jupiter",
    pngImage: "assets/images/jupiter.png",
    // model3d: "jupiter.glb",
    title: "Jupiter: The Gas Giant",
    about:
        "The largest planet in our solar system, famous for its Great Red Spot storm.",
    distanceKm: 778547669,
    dayLengthHours: 9.92,
    orbitalPeriod: 11.86,
    radiusKm: 69911.0,
    massKg: 1.898e27,
    gravity: 24.79,
    surfaceArea: 6.21e15,
  ),
  Planet(
    name: "Saturn",
    pngImage: "assets/images/saturn.png",
    // model3d: "saturn.glb",
    title: "Saturn: The Ringed Planet",
    about:
        "A gas giant known for its complex and beautiful ring system composed of ice and rock.",
    distanceKm: 1426666422,
    dayLengthHours: 10.66,
    orbitalPeriod: 29.46,
    radiusKm: 58232.0,
    massKg: 5.683e26,
    gravity: 10.44,
    surfaceArea: 4.27e15,
  ),
  Planet(
    name: "Uranus",
    pngImage: "assets/images/uranus.png",
    // model3d: "uranus.glb",
    title: "Uranus: The Tilted Planet",
    about:
        "An ice giant that orbits the Sun on its side with an extreme axial tilt.",
    distanceKm: 2870990000,
    dayLengthHours: 17.24,
    orbitalPeriod: 84.0,
    radiusKm: 25362.0,
    massKg: 8.681e25,
    gravity: 8.69,
    surfaceArea: 8.1e15,
  ),
  Planet(
    name: "Neptune",
    pngImage: "assets/images/neptune.png",
    // model3d: "neptune.glb",
    title: "Neptune: The Distant World",
    about:
        "The farthest planet from the Sun, featuring dark storms and supersonic winds.",
    distanceKm: 4498252900,
    dayLengthHours: 16.11,
    orbitalPeriod: 164.8,
    radiusKm: 24622.0,
    massKg: 1.024e26,
    gravity: 11.15,
    surfaceArea: 7.65e15,
  ),
];
