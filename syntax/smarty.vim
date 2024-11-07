" Vim syntax file
" Language:	Smarty Templates
" Maintainer:	Dan Jessen
" Last Change:  Fri Nov  1 11:42:23 CET 2024
" Filenames:    *.tpl
" URL:		http://www.dwerg.net/projects/vim/smarty.vim

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if !exists("main_syntax")
  if version < 600
    syntax clear
  elseif exists("b:current_syntax")
  finish
endif
  let main_syntax = 'smarty'
endif

syn case ignore

runtime! syntax/html.vim
unlet b:current_syntax

syn keyword smartyTagName capture config_load include include_php
syn keyword smartyTagName insert ldelim rdelim literal
syn keyword smartyTagName call setfilter
syn keyword smartyTagName strip assign counter cycle debug eval fetch
syn keyword smartyTagName html_options html_select_date html_select_time
syn keyword smartyTagName math popup_init popup html_checkboxes html_image
syn keyword smartyTagName html_radios html_table mailto textformat
syn keyword smartyTagName append block extends nocache function 
syn keyword smartyTagName controller collection entity

syn keyword smartyConditional if elseif else contained
syn keyword smartyRepeat      foreach in break continue foreachelse section contained

syn keyword smartyInFunc neq eq gt lt ge gte le lte not mod or as in and contained
syn match smartyInFunc "||" contained skipwhite
syn match smartyInFunc "&&" contained skipwhite

syn match smartyDot "\."
syn match smartyComma ","
syn match smartyEx "!"
syn match smartyQs "?"
syn match smartyEq "="
syn match smartyColon ":"
syn match smartyArr "=>"
syn match smartyProp "->"
syn match smartyVar "\$"
syn match smartyArrStart "\["
syn match smartyArrEnd "\]"
syn match smartyPipe "|"
syn keyword smartyBool true false
syn keyword smartyNull null 
syn match smartyAtt "@" 
syn match smartyTypeCastBool "(bool)" 
syn match smartyTypeCastInt "(int)"
syn match smartyTypeCastFloat "(float)"
syn match smartyTypeCastArray "(array)"
syn match smartyTypeCastNumber "(number)"
syn match smartyTypeCastString "(string)"
syn match smartyNumber "-\=\<\d\+\>" contained
syn match smartyFloat "-\=\<\d\+\>\.\.\@!\%(\d\+\>\)\=" contained

syn match smartyProperty  contained "above="
syn match smartyProperty  contained "address="
syn match smartyProperty  contained "advance="
syn match smartyProperty  contained "all_empty="
syn match smartyProperty  contained "all_extra="
syn match smartyProperty  contained "all_id="
syn match smartyProperty  contained "alt="
syn match smartyProperty  contained "append="
syn match smartyProperty  contained "assign="
syn match smartyProperty  contained "autostatus="
syn match smartyProperty  contained "autostatuscap="
syn match smartyProperty  contained "background="
syn match smartyProperty  contained "basedir="
syn match smartyProperty  contained "bcc="
syn match smartyProperty  contained "below="
syn match smartyProperty  contained "bgbackground="
syn match smartyProperty  contained "bgcolor="
syn match smartyProperty  contained "border="
syn match smartyProperty  contained "cache_id="
syn match smartyProperty  contained "cache_lifetime="
syn match smartyProperty  contained "caparray="
syn match smartyProperty  contained "capcolor="
syn match smartyProperty  contained "capicon="
syn match smartyProperty  contained "caption="
syn match smartyProperty  contained "captionfont="
syn match smartyProperty  contained "captionsize="
syn match smartyProperty  contained "cc="
syn match smartyProperty  contained "center="
syn match smartyProperty  contained "closecolor="
syn match smartyProperty  contained "closefont="
syn match smartyProperty  contained "closesize="
syn match smartyProperty  contained "closetext="
syn match smartyProperty  contained "cols="
syn match smartyProperty  contained "compile_id="
syn match smartyProperty  contained "day_empty="
syn match smartyProperty  contained "day_extra="
syn match smartyProperty  contained "day_format="
syn match smartyProperty  contained "day_id="
syn match smartyProperty  contained "day_size="
syn match smartyProperty  contained "day_value_format="
syn match smartyProperty  contained "delay="
syn match smartyProperty  contained "delimiter="
syn match smartyProperty  contained "direction="
syn match smartyProperty  contained "display_days="
syn match smartyProperty  contained "display_hours="
syn match smartyProperty  contained "display_meridian="
syn match smartyProperty  contained "display_minutes="
syn match smartyProperty  contained "display_months="
syn match smartyProperty  contained "display_seconds="
syn match smartyProperty  contained "display_years="
syn match smartyProperty  contained "encode="
syn match smartyProperty  contained "end_year="
syn match smartyProperty  contained "equation="
syn match smartyProperty  contained "escape="
syn match smartyProperty  contained "extra="
syn match smartyProperty  contained "fgbackground="
syn match smartyProperty  contained "fgcolor="
syn match smartyProperty  contained "field_array="
syn match smartyProperty  contained "field_order="
syn match smartyProperty  contained "field_separator="
syn match smartyProperty  contained "file="
syn match smartyProperty  contained "fixx="
syn match smartyProperty  contained "fixy="
syn match smartyProperty  contained "followupto="
syn match smartyProperty  contained "format="
syn match smartyProperty  contained "frame="
syn match smartyProperty  contained "from="
syn match smartyProperty  contained "fullhtml="
syn match smartyProperty  contained "function="
syn match smartyProperty  contained "global="
syn match smartyProperty  contained "hauto="
syn match smartyProperty  contained "hdir="
syn match smartyProperty  contained "height="
syn match smartyProperty  contained "hour_empty="
syn match smartyProperty  contained "hour_extra="
syn match smartyProperty  contained "hour_format="
syn match smartyProperty  contained "hour_id="
syn match smartyProperty  contained "hour_value_format="
syn match smartyProperty  contained "href="
syn match smartyProperty  contained "inarray="
syn match smartyProperty  contained "include="
syn match smartyProperty  contained "indent="
syn match smartyProperty  contained "indent_char="
syn match smartyProperty  contained "indent_first="
syn match smartyProperty  contained "inner="
syn match smartyProperty  contained "item="
syn match smartyProperty  contained "key="
syn match smartyProperty  contained "label_ids="
syn match smartyProperty  contained "labels="
syn match smartyProperty  contained "left="
syn match smartyProperty  contained "loop="
syn match smartyProperty  contained "max="
syn match smartyProperty  contained "meridian_empty="
syn match smartyProperty  contained "meridian_extra="
syn match smartyProperty  contained "meridian_id="
syn match smartyProperty  contained "minute_empty="
syn match smartyProperty  contained "minute_extra="
syn match smartyProperty  contained "minute_format="
syn match smartyProperty  contained "minute_id="
syn match smartyProperty  contained "minute_interval="
syn match smartyProperty  contained "minute_value_format="
syn match smartyProperty  contained "month_empty="
syn match smartyProperty  contained "month_extra="
syn match smartyProperty  contained "month_format="
syn match smartyProperty  contained "month_id="
syn match smartyProperty  contained "month_names="
syn match smartyProperty  contained "month_size="
syn match smartyProperty  contained "month_value_format="
syn match smartyProperty  contained "name="
syn match smartyProperty  contained "newsgroups="
syn match smartyProperty  contained "noclose="
syn match smartyProperty  contained "offsetx="
syn match smartyProperty  contained "offsety="
syn match smartyProperty  contained "once="
syn match smartyProperty  contained "option_separator="
syn match smartyProperty  contained "options="
syn match smartyProperty  contained "output="
syn match smartyProperty  contained "padx="
syn match smartyProperty  contained "pady="
syn match smartyProperty  contained "path_prefix="
syn match smartyProperty  contained "prefix="
syn match smartyProperty  contained "print="
syn match smartyProperty  contained "reset="
syn match smartyProperty  contained "reverse_years="
syn match smartyProperty  contained "right="
syn match smartyProperty  contained "rows="
syn match smartyProperty  contained "scope="
syn match smartyProperty  contained "script="
syn match smartyProperty  contained "second_empty="
syn match smartyProperty  contained "second_extra="
syn match smartyProperty  contained "second_format="
syn match smartyProperty  contained "second_id="
syn match smartyProperty  contained "second_interval="
syn match smartyProperty  contained "second_value_format="
syn match smartyProperty  contained "section="
syn match smartyProperty  contained "selected="
syn match smartyProperty  contained "separator="
syn match smartyProperty  contained "show="
syn match smartyProperty  contained "skip="
syn match smartyProperty  contained "snapx="
syn match smartyProperty  contained "snapy="
syn match smartyProperty  contained "start="
syn match smartyProperty  contained "start_year="
syn match smartyProperty  contained "status="
syn match smartyProperty  contained "step="
syn match smartyProperty  contained "sticky="
syn match smartyProperty  contained "stop="
syn match smartyProperty  contained "strict="
syn match smartyProperty  contained "style="
syn match smartyProperty  contained "subject="
syn match smartyProperty  contained "table_attr="
syn match smartyProperty  contained "td_attr="
syn match smartyProperty  contained "text="
syn match smartyProperty  contained "textcolor="
syn match smartyProperty  contained "textfont="
syn match smartyProperty  contained "textsize="
syn match smartyProperty  contained "th_attr="
syn match smartyProperty  contained "time="
syn match smartyProperty  contained "tr_attr="
syn match smartyProperty  contained "trailpad="
syn match smartyProperty  contained "trigger="
syn match smartyProperty  contained "use_24_hours="
syn match smartyProperty  contained "value="
syn match smartyProperty  contained "values="
syn match smartyProperty  contained "var="
syn match smartyProperty  contained "vauto="
syn match smartyProperty  contained "vdir="
syn match smartyProperty  contained "width="
syn match smartyProperty  contained "width="
syn match smartyProperty  contained "wrap="
syn match smartyProperty  contained "wrap_char="
syn match smartyProperty  contained "wrap_cut="
syn match smartyProperty  contained "year_as_text="
syn match smartyProperty  contained "year_empty="
syn match smartyProperty  contained "year_extra="
syn match smartyProperty  contained "year_id="
syn match smartyProperty  contained "year_size="

syn region smartyString matchgroup=smartyQuote start=+"+ end=+"+ contained
syn region smartyString matchgroup=smartyQuote start=+'+ end=+'+ contained

syn region smartyZone	   matchgroup=smartyDelimiter start="{-\=" end="-\=}" contains=@smartyStatement containedin=ALLBUT,@smartyExempt keepend
syn region smartyComment   matchgroup=smartyDelimiterComment start="{\*-\=" end="-\=\*}" contains=smartyTodo,@Spell containedin=ALLBUT,@smartyExempt keepend

syn cluster smartyExempt contains=smartyComment
syn cluster smartyStatement contains=smartyTagName,smartyRepeat,smartyConditional,smartyInFunc,smartyString,smartyProperty,smartyDot,smartyComma,smartyArr,smartyProp,smartyVar,smartyArrStart,smartyArrEnd,smartyPipe,smartyBool,smartyNull,smartyEmpty,smartyAtt,smartyEx,smartyEq,smartyQs,smartyColon,smartyNumber,smartyFloat,smartyTypeCastBool,smartyTypeCastInt,smartyTypeCastFloat,smartyTypeCastArray,smartyTypeCastNumber,smartyTypeCastString

syn cluster htmlPreproc add=smartyZone add=smartyComment add=smartyStatement

syn region htmlString   contained start=+"+ end=+"+ contains=htmlSpecialChar,javaScriptExpression,@htmlPreproc
syn region htmlString   contained start=+'+ end=+'+ contains=htmlSpecialChar,javaScriptExpression,@htmlPreproc

hi def link smartyDelimiter             Number
hi def link smartyZone			Number
hi def link smartyTagName		Normal
hi def link smartyConditional		Normal
hi def link smartyRepeat		Normal
hi def link smartyInFunc		Normal
hi def link smartyArr			Normal
hi def link smartyProp			Normal
hi def link smartyDot			WarningMsg
hi def link smartyEq			Normal
hi def link smartyVar			Statement
hi def link smartyColon			WarningMsg
hi def link smartyQs			WarningMsg
hi def link smartyAtt			WarningMsg
hi def link smartyPipe			WarningMsg
hi def link smartyComma			WarningMsg
hi def link smartyEx			WarningMsg
hi def link smartyArrEnd		Normal
hi def link smartyArrStart		Normal
hi def link smartyBool			Boolean
hi def link smartyNull			Boolean
hi def link smartyNumber		Boolean
hi def link smartyNumberFloat		Boolean
hi def link smartyTypeCastBool		Boolean
hi def link smartyTypeCastInt		Boolean
hi def link smartyTypeCastFloat		Boolean
hi def link smartyTypeCastArray		Boolean
hi def link smartyTypeCastNumber	Boolean
hi def link smartyTypeCastString	Boolean
hi def link smartyProperty		Character
hi def link smartyString                diffNewFile
hi def link smartyQuote			diffNewFile
hi def link smartyComment		Comment
hi def link smartyDelimiterComment	Comment

" Match/delegate {php}..{/php} blocks.
syn include syntax/php.vim
syn region phpRegion matchgroup=Delimiter start="{php}" end="{/php}" contains=@phpClTop

syn region javaScript start=+{script+ keepend end=+{/script}+ contains=@htmlVbScript,htmlCssStyleComment,htmlScriptTag,@htmlPreproc
syn region cssStyle start=+{style+ keepend end=+{/style}+ contains=@htmlCss,htmlTag,htmlEndTag,htmlCssStyleComment,@htmlPreproc

let b:current_syntax = "smarty"

if main_syntax == 'smarty'
  unlet main_syntax
endif

" vim: ts=8
