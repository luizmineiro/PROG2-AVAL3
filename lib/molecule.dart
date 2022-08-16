class Molecule{
  late String formula;
  late int weight;

  Molecule({required String formula, required String name}){
    formula = formula;
    List <String> raw = formula.split('');
    List <String> c = [];

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
  }
}