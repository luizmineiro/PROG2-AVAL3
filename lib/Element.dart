

import 'package:prova_prog2/atom.dart';

class Element{
  late Atom sym;
  late String name;
  late String latinName;
  late int weight;

  Element(sy, na, la, we){
    sym = Atom(sy);
    name = na;
    latinName = la;
    weight = we;
  }
  
}