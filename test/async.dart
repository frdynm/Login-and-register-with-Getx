void main() {
  //sycn == berurutan
  //async == bisa dilewar dulu atau dikerjakan secara paralel

  // nah cara bikin async bisa pake future
  CetakC();
}

void CetakB() {
  Future(() => {print("B"), print("C")});
}

void CetakC() async {
  await Future.delayed(Duration(milliseconds: 2));
  print("print1");
}

void hello() async {
  print('something exciting is going to happen here...');
}
