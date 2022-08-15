import 'dart:io';
import 'package:prova_prog2/element.dart';

class Elements{
 
 
 late File raw;
 late List <String> table;
 List <List> table2 = [];
 List <Element> list = [];
 late Element current;
 
 Elements(){
  raw = File('elements.csv');
  table = raw.readAsLinesSync();
  table.removeAt(0);
  for(var elem in table){
    table2.add(elem.split(','));
  }
  for(var elem in table2){
    current = Element(elem[1],elem[2],elem[3],elem[0]);
    list.add(current);
  }
 }
 void forEach(action){
  for(var elem in list){
    action(elem);
  }
 }

}
