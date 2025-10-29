void main() {
  List<String> friendNames = [
    'Mozid','Ifty','Anik','Omit','Onim','Tamzid','Mihan','Shahriar'];

  Iterable<String> namesStartingWithA = friendNames.where(
    (name) => name.toLowerCase().startsWith('a')
  );

  print('All Friend Names: $friendNames');
  print('Names Starting with "a": ${namesStartingWithA.toList()}');
}

