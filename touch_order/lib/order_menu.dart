import 'package:flutter/material.dart';

abstract class Menu { // 모든 메뉴에 관련된 클래스의 부모 클래스
  final String _menuName; // 메뉴 이름
  final int _menuPrice; // 메뉴 가격
  String? _menuDescription; // 메뉴 설명
  Image? _menuImage; // 메뉴 사진
  
  Menu(this._menuName, this._menuPrice); // Menu 생성자
  

  //getter
  String get getMenuName {
      return _menuName;
  }
  int get getMenuPrice {
    return _menuPrice;
  }
  String? get getMenuDescription {
    if(_menuDescription == null) {
      return '';
    } else {
      return _menuDescription;
    }
  }
  Image? get getMenuImage {
    if(_menuImage == null) {
      return null; // TODO: default image 만들기
    } else {
      return _menuImage;
    }
  }

  //setter
  set setMenuDescription(String? menuDescription) => _menuDescription;
  set setMenuImage(Image? menuImage) => _menuImage;
}

class Beverage extends Menu { // 음료를 나타내는 클래스
  final bool isAlcohol; // 술인지 아닌지를 나타내는 변수

  Beverage(String menuName, int menuPrice, String? menuDescription, Image? menuImage, {this.isAlcohol = false}) : super(menuName, menuPrice) { // Beverage의 생성자
    if(menuDescription != null) {
      _menuDescription = menuDescription;
    }if(menuImage != null) {
      _menuImage = menuImage;
    }
  }
}