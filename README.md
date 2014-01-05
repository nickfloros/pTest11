### pTest11 

polymer.dart app for testing inclusion of multiple components.

```ptest11.html``` includes ```clickCounter.html``` and that includes ```infoa.html``` and ```infob.html``` polymer components. Also ```infoc.html``` is included in both ```ptest11.html``` and ```clickCounter.html```

Within ```ClickCounter.created```, there is a simple print statement ```print('ClickCounter.created shadowRoot is null ${shadowRoot==null}');```. There are similar implementation in ```InfoA``` and ```InfoB```

When executting this simple app in Dartium the following output is produced in browser console
```
InfoC.created shadowRoot is null true
InfoC.created shadowRoot is null false
InfoB.created shadowRoot is null true
InfoA.created shadowRoot is null true
InfoA.created shadowRoot is null false
InfoB.created shadowRoot is null false
InfoC.created shadowRoot is null false
ClickCounter.created shadowRoot is null false
```
This clearly shows that ```InfoB.created``` and ```InfoA.created``` are called twice and at the first time ```shadowDom``` is null. Same behaviour is observed if ```ClickCounter``` referrences one component rather than two. Same goes for ```InfoC.created``. In fact ```InfoC``` is in a library and it will only be included if is referrenced by ```ptest11.html``` ?`

However when running the javascript version on Chrome then the following output is produced.
```
InfoC.created shadowRoot is null false
InfoB.created shadowRoot is null false 
InfoA.created shadowRoot is null false 
InfoC.created shadowRoot is null false
ClickCounter.created shadowRoot is null false
```



