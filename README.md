# textGrep for jQuery

The textGrep plugin allows you to find text inside elements. The occurences are wrapped in `span`, or other elements and returned. This lets you apply classes, styles and dom manipulations to pieces of text.

This plugin is meant to simplify applying styles to certain text patterns, for example for typographic purposes.

__TextGrep does pretty much what Grep Styles do in Adobe® InDesign®.__

## Basic use

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

## Presets

TextGrep provides presets for commonly used regular expressions.

```html
<p>Copyright 2013 ACME Corp.</p>
```

```javascript
$('p').textGrep('number').addClass('number');
```

```html
<p>Copyright <span class="number">2013</span> ACME Corp.</p>
```

Presets can be added easily as well.

```javascript
$.textGrep.presets.test = /test/g;
$('p').textGrep('test').addClass('test');
```
