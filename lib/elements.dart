import 'dart:io';
import 'package:prova_prog2/Element.dart';

class Elements{
 late File raw;
 late String elem;
 late List <String> table;
 List <Element> list = [];
 late Element current;
 
 Elements(){
  raw = File('elements.csv');
  elem = raw.readAsStringSync();
  table = elem.split('\n'); 
  table.removeAt(0);
  table.removeAt(table.length-1);
  for(int x = 0; x < table.length; x++){
    String line = table[x];
    List <dynamic> info = line.split(',');
    current = Element(info[0], info[1], info[2], info[3]);
    list.add(current);
  }
 }
 
 List forEach(a){
  return list;
 }
}