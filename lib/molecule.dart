import 'package:prova_prog2/element.dart';
import 'package:prova_prog2/elements.dart';

class Molecule{
  Elements origin = Elements();
  String formula = '';
  int weight = 0;
  List <String> c = [];
  int multi = 0;
  late Element current_elem;
  
  Molecule({required String formula, required String name}){
    
    this.formula = formula;
    List <String> raw = formula.split('');
    

    late String n;
    if(formula.length%2 == 0){
      for (int x = 0; x < raw.length; x++){
        if(x == raw.length){
          n = raw[x];
        } else {
          n = raw[x]+raw[x+1];
        }
        c.add(n);
        x += 1;
      }
  } else {
      for (int x = 0; x <= raw.length; x++){
        if(x+1 == raw.length){
          n = raw[x];
        } else {
          n = raw[x]+raw[x+1];
          }
        c.add(n);
        x += 1;
      }
    }
    for (var elem in c){
      for(var obj in origin.list){
        if (elem == obj.sym.symbol){
          current_elem = obj;
          print(current_elem);
        } else {
          List <String> part = elem.split('');
          for (var chara in part){
            if (chara == obj.sym.symbol ){
              current_elem = obj;
              print(current_elem);

            }
          }
        }
      }
      weight += int.parse(current_elem.weight);
    }
  }
}

void main(List<String> args) {
  Molecule a = Molecule(formula: 'NaHCO3', name: 'Bicarbonato de Sódio');
  print(a.c);
  print(a.weight);
}