import 'dart:io';
import 'package:prova_prog2/element.dart';

class Elements extends Iterable{
 
 
 late File raw;
 late String elem;
 late List <String> table;
 final List <Element> list = [];
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
    int a = int.parse(info[0]);
    List <dynamic> info2 = List<dynamic>.from(info);
    info2[0] = a;
    current = Element(info2[1], info2[2], info2[3], info2[0]);
    list.add(current);
  }
 }
 @override
 Iterator<Element> get iterator => list.iterator;
  

}