var assert = require('power-assert');

// 日本語 <- needs multibyte character to reproduce issue
it('power-assert 1.4.1 under Node v0.12.x and Babel6 bug reproduction', function () {
    assert.deepStrictEqual({a:1}, {a:'1'});
});
