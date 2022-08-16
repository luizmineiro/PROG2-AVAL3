
import 'package:prova_prog2/atom.dart';

class Element{
  late Atom sym;
  late String name;
  late String latinName;
  late String weight;

  Element(sy, na, la, we){
    sym = Atom(sy);
    name = na;
    latinName = la;
    weight = we;
  }
  
  @override
  String toString() {
    String text = '$sym';
    return text;
  }
}