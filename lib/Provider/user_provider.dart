import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {  // ChangeNotifier is a class that provides change notification to its listeners.
    String _gender = '';
    int _age = 0;
    String _height = '';
    String _weight = '';
    String _activityLevel = '';
    String _goal = '';


  String get gender => _gender;
  int get age => _age;
  String get height => _height;
  String get weight => _weight;
  String get activityLevel => _activityLevel;

  String get goal => _goal;

    void setGender(String _gender){
      _gender = gender;
    }
    void setAge(int _age){
      _age = age;
    }

    void setHeight(String _height){
      _height = height;
    }

    void setWeight(String _weight){
      _weight = weight;
    }

    void setActivityLevel(String _activityLevel){
      _activityLevel = activityLevel;
    }
}