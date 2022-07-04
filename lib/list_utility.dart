List<E> swap<E>(List<E> list, int first, int second) {
  var listCopy = list.toList();
  var temp = listCopy.removeAt(second);
  listCopy.insert(first, temp);
  return listCopy;
}
