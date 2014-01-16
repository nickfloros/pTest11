import 'package:polymer/polymer.dart';
/**
 * A Polymer click counter element.
 */
@CustomTag('info-a')
class InfoA extends PolymerElement {

  @published int infoa_count = 0;
  InfoA.created() : super.created() {
    print('InfoA.created shadowRoot is null ${shadowRoot==null}');
  }

  void infoabutton() {
    infoa_count++;
  }
}

