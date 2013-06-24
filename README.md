seajs-combo
============

A Sea.js plugin for concatenating HTTP requests


Install
-------

Install with spm:

    $ spm install seajs/seajs-combo


Usage
-----

```html
<script src="path/to/sea.js"></script>
<script src="path/to/seajs-combo.js"></script>
<script>
// The requests of a.js and b.js are combined to `http://path/to/??a.js,b.js`
seajs.use(['a', 'b'], function(a, b) {
    // ...
})
</script>
```
