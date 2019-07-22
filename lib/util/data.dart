import 'dart:math';
import 'package:charts_flutter/flutter.dart' as charts;


Random random = Random();
List names = [
  "Ling Waldner",
  "Gricelda Barrera",
  "Lenard Milton",
  "Bryant Marley",
  "Rosalva Sadberry",
  "Guadalupe Ratledge",
  "Brandy Gazda",
  "Kurt Toms",
  "Rosario Gathright",
  "Kim Delph",
  "Stacy Christensen",
];

List types = ["recieved", "sent"];

List coins = [
  {
    "icon": "assets/btc.png",
    "name": "Bitcoin",
    "alt": "BTC",
    "rate": r"$10,297.66",
    "color": charts.MaterialPalette.deepOrange.shadeDefault,
  },
  {
    "icon": "assets/eth.png",
    "name": "Etherium",
    "alt": "ETH",
    "rate": r"$215.56	",
    "color": charts.MaterialPalette.blue.shadeDefault,
  },
  {
    "icon": "assets/xrp.png",
    "name": "Ripple",
    "alt": "XRP",
    "rate": r"$0.321697	",
    "color": charts.MaterialPalette.indigo.shadeDefault,
  },
  {
    "icon": "assets/ltc.png",
    "name": "Litecoin",
    "alt": "LTC",
    "rate": r"$94.29",
    "color": charts.MaterialPalette.gray.shadeDefault,
  },
  {
    "icon": "assets/xmr.png",
    "name": "Monero",
    "alt": "XMR",
    "rate": r"$82.57",
    "color": charts.MaterialPalette.red.shadeDefault,
  },
];

List transactions = List.generate(15, (index)=>{
  "name": names[random.nextInt(10)],
  "date": "${random.nextInt(31).toString().padLeft(2,"0")}"
      "/${random.nextInt(12).toString().padLeft(2,"0")}/2019",
  "amount": "\$${random.nextInt(1000).toString()}",
  "type": types[random.nextInt(2)],
  "dp": "assets/cm${random.nextInt(10)}.jpeg",
});

