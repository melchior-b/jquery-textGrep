# textGrep for jQuery

The textGrep plugin allows you to find text inside elements. The occurences are wrapped in `span`, or other elements and returned. This lets you apply classes, styles and dom manipulations to pieces of text.

This plugin is meant to simplify applying styles to certain text patterns, for example for typographic purposes.

__It does pretty much what Grep Styles do in Adobe® InDesign®.__

## Examples

Add the class _number_ to all numbers.

```html
<p>Copyright 2013 ACME Corp.</p>
```

```javascript
$('p').textGrep(/\d+/).addClass('number');
```

```html
<p>Copyright <span class="number">2013</span> ACME Corp.</p>
```

---

Add the class _capitals_ to all words written in captial letters.

```html
<p>Copyright 2013 ACME Corp.</p>
```

```javascript
$('p').textGrep(/[A-Z0-9]{2,}/).addClass('capitals');
```

```html
<p>Copyright 2013 <span class="capitals">ACME</span> Corp.</p>
```
