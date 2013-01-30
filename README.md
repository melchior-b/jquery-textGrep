# textGrep for jQuery

The textGrep plugin allows you to find text inside elements. The occurences are wrapped in `span`, or other elements and returned. This lets you apply classes, styles and dom manipulations to pieces of text.

This plugin is meant to simplify applying styles to certain text patterns, for example for typographic purposes. It works much like Adobe InDesigns Grep Styles.

## Example

    $('p').textGrep(/\d+/).addClass('number');
