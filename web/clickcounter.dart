import 'package:polymer/polymer.dart';
import 'package:ptest11/infoc.dart';
/**
 * A Polymer click counter element.
 */
@CustomTag('click-counter')
class ClickCounter extends PolymerElement {
  @published int count = 0;
  
  ClickCounter.created() : super.created() {
    print('ClickCounter.created shadowRoot is null ${shadowRoot==null}');
    if (shadowRoot!=null) {
      InfoC infoC = shadowRoot.querySelector("info-c");
      infoC.hello();
    }
  }

  void increment() {
    count++;
  }
}

