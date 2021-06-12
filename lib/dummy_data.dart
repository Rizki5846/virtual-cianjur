class Country {
  final String name;
  final String code;
  final String country;
  final String desc;
  final double rate;
  final int temp;

  Country({
    required this.name,
    required this.country,
    required this.code,
    required this.temp,
    required this.rate,
    required this.desc,
  });
}

List<Country> popularCountries = [
  Country(
    name: 'Bali',
    country: 'Indonesia',
    code: "ID",
    desc: "BLabla",
    temp: 30,
    rate: 4.70,
  ),
  Country(
    name: 'Kuala Lumpur',
    country: 'Malaysia',
    code: "MY",
    desc: "BLabla",
    temp: 29,
    rate: 4.60,
  ),
  Country(
    name: 'Osaka',
    country: 'Japan',
    code: "JP",
    desc: "BLabla",
    temp: 19,
    rate: 4.90,
  ),
  Country(
    name: 'Tokyo',
    country: 'Japan',
    code: "JP",
    desc: "BLabla",
    temp: 22,
    rate: 4.85,
  ),
  Country(
    name: 'Seoul',
    country: 'Japan',
    code: "KR",
    desc: "BLabla",
    temp: 20,
    rate: 4.80,
  ),
];
