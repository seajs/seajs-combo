seajs.config({
  base: './timestamp/'
})

define(function(require) {

  var test = require('../../test')

  seajs.use('../../dist/seajs-combo', function() {
    seajs.config({
      comboSyntax: ['', ','],
      comboSuffix: '?1',
      map: [
        [/^(.*)$/, '$1?1']
      ]
    })
    seajs.use(['a', 'b', 'c'], function(a, b, c) {
      test.assert(a.name == 'a', a.name)
      test.assert(b.name == 'b', b.name)
      test.assert(c === void 0, 'return undefined when c is not found' + c)

      test.next()
    })
  });
});