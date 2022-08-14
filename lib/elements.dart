import 'dart:io';
import 'package:prova_prog2/Element.dart';

class Elements{
 late File raw;
 late String elem;
 late List <String> table;
 late Element current;
 
 Elements(){
  raw = File('elements.csv');
  elem = raw.readAsStringSync();
  table = elem.split('\n'); 
  table.removeAt(0);
  for(int x = 0; x <= table.length; x++){
    String line = table[0];
    List <dynamic> info = line.split(',');
    current = Element(info[0], info[1], info[2], info[3]);
  }
 }
}