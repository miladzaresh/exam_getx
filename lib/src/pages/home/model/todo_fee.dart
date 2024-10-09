class TodoFee {
  final String title;
  final String price;
  final int id;
  final List<SubTodoFee> subs;

  TodoFee({
    required this.title,
    required this.price,
    required this.subs,
    required this.id
  });
}

class SubTodoFee {
  final String title;
  final String price;
  final int id;

  SubTodoFee({required this.title, required this.price, required this.id,});


}