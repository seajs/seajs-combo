plugin-combo
============

A Sea.js plugin for concatenating HTTP requests


Install
-------

Install with spm:

    $ spm install seajs/plugin-handlebars


Usage
-----

```html
<script src="path/to/sea.js"></script>
<script src="path/to/plugin-combo.js"></script>
<script>
// The requests of a.js and b.js is combined to `http://path/to/??a.js,b.js`
seajs.use(['a', 'b'], function(a, b) {
    // ...
})
</script>
```
