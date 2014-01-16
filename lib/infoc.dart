library infoc;
import 'package:polymer/polymer.dart';
/**
 * A Polymer click counter element.
 */
@CustomTag('info-c')
class InfoC extends PolymerElement {
  @published int infoc_counter = 0;

  InfoC.created() : super.created() {
    print('InfoC.created shadowRoot is null ${shadowRoot==null}');
  }

  void hello() {
    print('hello from c');
  }
  
  void infoc_button() {
    infoc_counter++;
  }
}

