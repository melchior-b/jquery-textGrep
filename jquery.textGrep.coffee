###
 *
 * jQuery textGrep Plugin v0.1.0
 * https://github.com/melchior_b/jquery-textGrep
 *
 * @author Melchior Brislinger
 * @license MIT
 *
###

setup = ($) ->
  textGrep = (regex, tag='span') ->
    result = $ []

    @find(":not(iframe)").andSelf().contents().each ->
      if @nodeType == 3
        node      = $ @
        matches   = @textContent.match(regex)
        splits    = @textContent.split(regex)

        if matches and matches.length
          $.each splits, (i, text) ->
            node.before document.createTextNode(text)

            if i < matches.length
              span    = $("<#{tag}>").text(matches[i])
              result  = result.add(span)
              node.before span

          node.remove()

    result

  $.extend $.fn, textGrep: textGrep

setup jQuery
