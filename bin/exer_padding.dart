void main(List<String> args) {
  var padding01 = Padding(10, 15, 20, 25);
  var padding02 = Padding.horizontal(20);
  var padding03 = Padding.vertical(30);
  var padding04 = Padding.symmetric(horizontal: 20, vertical: 30);

  print(padding01);
  print(padding02);
  print(padding03);
  print(padding04);
}

class Padding {
  double top = 0;
  double right = 0;
  double bottom = 0;
  double left = 0;

  Padding(this.top, this.right, this.bottom, this.left);

  Padding.horizontal(double value) {
    top = value;
    bottom = value;
  }

  Padding.vertical(double value) {
    right = value;
    left = value;
  }

  Padding.symmetric({double horizontal = 0, double vertical = 0}) {
    right = horizontal;
    left = horizontal;
    top = vertical;
    bottom = vertical;
  }

  @override
  String toString() {
    return "Padding(top: $top, right: $right), bottom: $bottom, left: $left)";
  }
}
