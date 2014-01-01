import 'package:polymer/polymer.dart';

/**
 * A Polymer click counter element.
 */
@CustomTag('click-counter')
class ClickCounter extends PolymerElement {
  @published int count = 0;

  ClickCounter.created() : super.created() {
    print('ClickCounter.created shadowRoot is null ${shadowRoot==null}');
  }

  void increment() {
    count++;
  }
}

