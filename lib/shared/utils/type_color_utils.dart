import 'package:flutter/material.dart';

class TypeColorUtils {
  static List<Color> colorsForTypes(List<String> types) {
    List<Color> colors = [];
    for (var type in types) {
      colors.add(colorType(type));
    }
    return colors;
  }

  static Color colorType(String type) {
    var color = Colors.white;
    switch (type.toLowerCase()) {
      case 'normal':
        color = const Color(0xFFAA895F);
        break;
      case 'fighting':
        color = const Color(0xFFFF5F65);
        break;
      case 'flying':
        color = const Color(0xFF808DC7);
        break;
      case 'poison':
        color = const Color(0xFFB265A1);
        break;
      case 'ground':
        color = const Color(0xFFE5B15E);
        break;
      case 'rock':
        color = const Color(0xFFA99F64);
        break;
      case 'bug':
        color = const Color(0xFF97AA44);
        break;
      case 'ghost':
        color = const Color(0xFF836C97);
        break;
      case 'steel':
        color = const Color(0xFF8CB4BE);
        break;
      case 'fire':
        color = const Color(0xFFF67B53);
        break;
      case 'water':
        color = const Color(0xFF51C6DA);
        break;
      case 'grass':
        color = const Color(0xFF7AC85B);
        break;
      case 'electric':
        color = const Color(0xFFF4C912);
        break;
      case 'psychic':
        color = const Color(0xFFF96289);
        break;
      case 'ice':
        color = const Color(0xFF6BDDD2);
        break;
      case 'dragon':
        color = const Color(0xFF5A63B0);
        break;
      case 'dark':
        color = const Color(0xFF5A5050);
        break;
      case 'fairy':
        color = const Color(0xFFFF78AC);
        break;
    }
    return color;
  }
}
