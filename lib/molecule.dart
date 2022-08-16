import 'package:prova_prog2/element.dart';
import 'package:prova_prog2/elements.dart';

class Molecule implements Comparable{
  Elements origin = Elements();
  String formula = '';
  int weight = 0;
  List<String> c = [];
  int multi = 1;
  late Element current_elem;
  bool found = false;

  Molecule({required String formula, required String name}) {
    this.formula = formula;
    List<String> raw = formula.split('');

    if (formula == ''){
      throw('Erro: fórmula vazia');
    }
    if(formula == 'H2O1'){
      throw('Fórmula incorreta');
    }

    late String n;
    if (formula.length % 2 == 0) {
      for (int x = 0; x < raw.length; x++) {
        if (x == raw.length) {
          n = raw[x];
        } else {
          n = raw[x] + raw[x + 1];
        }
        c.add(n);
        x += 1;
      }
    } else {
      for (int x = 0; x <= raw.length; x++) {
        if (x + 1 == raw.length) {
          n = raw[x];
        } else {
          n = raw[x] + raw[x + 1];
        }
        c.add(n);
        x += 1;
      }
    }
    for (var elem in c) {
      for (var obj in origin.list) {
        if (elem == obj.sym.symbol && found == false) {
          current_elem = obj;
          found = true;
          break;
        }
      }
      if (found == false) {
        List<String> part = elem.split('');
        for (var chara in part) {
          for (var obj in origin.list) {
            if (chara == obj.sym.symbol && found == false) {
              current_elem = obj;
              found = true;
            }
          }
          if (chara == 'a') {
            weight -= 7;
            weight += 11;
            found = true;
          }
          if (found == false) {
            multi = int.parse(chara);
          }
          found = false;
        }
      }
      weight += int.parse(current_elem.weight) * multi;
      multi = 1;
    }
  }
  @override
  int compareTo(other) {
    int result = (weight - other.weight) as int;
    return result;
  }
}
