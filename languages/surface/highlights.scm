; Tags
(tag_name) @tag

(start_tag
  (tag_name) @tag)

(end_tag
  (tag_name) @tag)

(self_closing_tag
  (tag_name) @tag)

; Components (regular, function, and macro)
(component_name) @constructor
(function_component_name) @function
(macro_component_name) @function.macro

(start_component
  (component_name) @constructor)

(end_component
  (component_name) @constructor)

(start_function_component
  (function_component_name) @function)

(end_function_component
  (function_component_name) @function)

(start_macro_component
  (macro_component_name) @function.macro)

(end_macro_component
  (macro_component_name) @function.macro)

; Attributes and Directives
(attribute
  (attribute_name) @property
  (attribute_value) @string)

(directive
  (directive_name) @attribute)

(quoted_attribute_value) @string

; Control Flow and Blocks
(block_name) @keyword.control

(start_block
  (block_name) @keyword.control)

(end_block
  (block_name) @keyword.control)

(subblock
  (subblock_name) @keyword.control)

; Expressions
(expression) @embedded.elixir
(expression_value) @embedded.elixir

; Comments
(comment) @comment

["<!--" "-->"] @comment.delimiter
["{!--" "--}"] @comment.delimiter

; Text Content
(text) @string.special

; Punctuation
["{" "}"] @punctuation.bracket
["<" ">"] @punctuation.bracket
["</" "/>"] @punctuation.bracket
["=" ":"] @punctuation.delimiter

; Special Keywords
[
  "if"
  "unless"
  "else"
  "elseif"
  "for"
  "case"
  "show"
  "let"
  "values"
] @keyword.control

; Events
[
  "on-click"
  "on-change"
  "on-submit"
  "on-blur"
  "on-focus"
  "on-keydown"
  "on-keyup"
  "on-capture-click"
  "on-window-blur"
  "on-window-focus"
  "on-window-keydown"
  "on-window-keyup"
] @attribute.event

; Special attributes
["hook" "args"] @attribute.builtin

; Errors
(ERROR) @error
