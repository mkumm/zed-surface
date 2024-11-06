; Components with bodies
((component
  (start_component
    (component_name) @name) @_start
  (_)* @_body
  (end_component) @_end) @item
  (#set! "kind" "class"))

; Function components with bodies
((component
  (start_function_component
    (function_component_name) @name) @_start
  (_)* @_body
  (end_function_component) @_end) @item
  (#set! "kind" "function"))

; Macro components with bodies
((component
  (start_macro_component
    (macro_component_name) @name) @_start
  (_)* @_body
  (end_macro_component) @_end) @item
  (#set! "kind" "macro"))

; Self-closing components
((self_closing_component
  (component_name) @name) @item
  (#set! "kind" "class"))

; Self-closing function components
((self_closing_function_component
  (function_component_name) @name) @item
  (#set! "kind" "function"))

; Control flow blocks
((block
  (start_block
    (block_name) @name
    (expression_value)? @detail) @_start
  (_)* @_body
  (end_block) @_end) @item
  (#set! "kind" "control"))

; Tags with bodies
((tag
  (start_tag
    (tag_name) @name) @_start
  (_)* @_body
  (end_tag) @_end) @item
  (#set! "kind" "tag"))

; Self-closing tags
((self_closing_tag
  (tag_name) @name) @item
  (#set! "kind" "tag"))
