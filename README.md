### pTest11 

polymer.dart app for testing inclusion of multiple components.

```ptest11.html``` includes ```clickCounter.html``` and that in turn includes ```infoa.html``` and ```infob.html``` polymer components.

Within ```ClickCounter.created```, there is a simple print statement ```print('ClickCounter.created shadowRoot is null ${shadowRoot==null}');```. There are similar implementation in ```InfoA``` and ```InfoB```

When executting this simple app in Dartium the following output is produced in browser console
```
InfoB.created shadowRoot is null true
InfoA.created shadowRoot is null true
InfoA.created shadowRoot is null false
InfoB.created shadowRoot is null false
ClickCounter.created shadowRoot is null false
```
This clearly shows that ```InfoB.created``` and ```InfoA.created``` are called twise and at the first time ```shadowDom``` is null. Same behaviour is observed if ```ClickCounter``` referrences one component rather than two.

However when running the javascript version on Chrome then the following output is produced.
```
InfoB.created shadowRoot is null false 
InfoA.created shadowRoot is null false 
ClickCounter.created shadowRoot is null false
```
