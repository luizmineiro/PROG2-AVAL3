class Atom{
   late String symbol;
    Atom( String sym ){
      symbol = sym;
    }
    @override
  String toString() {
    String atom = '$symbol';
    return atom;
  }
}