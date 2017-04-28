import 'dart:html';
import 'package:js/js.dart';
import 'package:mousetrap/mousetrap.dart';
import 'prompt.dart';

final DivElement $app = querySelector('#app');
final ButtonElement $unbind = querySelector('#unbind'),
$trigger = querySelector('#trigger');

main() {
  Mousetrap
    ..bind(['ctrl+k', 'command+k'], allowInterop((_, __) {
      setColor('red');
    }))
    ..bind('4', allowInterop((_, __) {
      setColor('blue');
    }))
    ..bind(['ctrl+shift+alt+y', 'command+shift+alt+y'], allowInterop((_, __) {
      var color = prompt('Enter a color:');
      if (color?.isNotEmpty != true)
        window.alert('Invalid color entered.');
      else
        setColor(color);
    }));

  $unbind.onClick.listen((_) {
    Mousetrap.unbind('4');
  });

  $trigger.onClick.listen((_) {
    Mousetrap.trigger('ctrl+shift+alt+y');
  });
}

void setColor(String color) {
  $app.style.backgroundColor = color;
}
