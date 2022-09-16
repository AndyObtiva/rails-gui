# TODO

- Cache results from the last run of `rake routes` to start instantly after the first time (and then fetch the latest rake routes in the background upon starting)
- Show a progress bar while fetching `rake routes`
- Consider the idea of monitoring `config/routes/**/*.rb` files and auto-refreshing routes when they change
- List all rails commands and provide a way to run them
- List all rake tasks and provide a way to run them
- Rails generator form with dropdowns for various field types
- Support Rails engine routes (split into tabs with different tables?)

## Issues

- Fix this issue, which was encountered by typing `:locale` in filter text field (with a leading `:`; no issue was encountered by typing `locale` or even `/locale`):
```ruby
  35: from ~/.rvm/gems/ruby-2.7.4@rails-gui/bin/ruby_executable_hooks:22:in `<main>'
  34: from ~/.rvm/gems/ruby-2.7.4@rails-gui/bin/ruby_executable_hooks:22:in `eval'
  33: from ~/.rvm/gems/ruby-2.7.4@rails-gui/bin/rails-gui:25:in `<main>'
  32: from ~/.rvm/gems/ruby-2.7.4@rails-gui/bin/rails-gui:25:in `load'
  31: from ~/.rvm/gems/ruby-2.7.4@rails-gui/gems/rails-gui-0.0.1/bin/rails-gui:3:in `<top (required)>'
  30: from ~/.rvm/gems/ruby-2.7.4@rails-gui/gems/rails-gui-0.0.1/bin/rails-gui:3:in `require_relative'
  29: from ~/.rvm/gems/ruby-2.7.4@rails-gui/gems/rails-gui-0.0.1/app/rails-gui.rb:6:in `<top (required)>'
  28: from (eval):7:in `launch'
  27: from ~/.rvm/gems/ruby-2.7.4@rails-gui/gems/glimmer-dsl-libui-0.5.24/lib/glimmer/libui/custom_window.rb:59:in `show'
  26: from ~/.rvm/gems/ruby-2.7.4@rails-gui/gems/glimmer-dsl-libui-0.5.24/lib/glimmer/libui/control_proxy/window_proxy.rb:69:in `show'
  25: from ~/.rvm/gems/ruby-2.7.4@rails-gui/gems/libui-0.0.15/lib/libui/libui_base.rb:46:in `block (2 levels) in <module:LibUIBase>'
  24: from ~/.rvm/gems/ruby-2.7.4@rails-gui/gems/libui-0.0.15/lib/libui/libui_base.rb:46:in `public_send'
  23: from ~/.rvm/gems/ruby-2.7.4@rails-gui/gems/libui-0.0.15/lib/libui/ffi.rb:20:in `uiMain'
  22: from ~/.rvm/gems/ruby-2.7.4@rails-gui/gems/libui-0.0.15/lib/libui/ffi.rb:20:in `call'
  21: from ~/.rvm/rubies/ruby-2.7.4/lib/ruby/2.7.0/fiddle/closure.rb:45:in `call'
  20: from ~/.rvm/gems/ruby-2.7.4@rails-gui/gems/glimmer-dsl-libui-0.5.24/lib/glimmer/libui/control_proxy.rb:174:in `block in handle_listener'
  19: from ~/.rvm/gems/ruby-2.7.4@rails-gui/gems/glimmer-dsl-libui-0.5.24/lib/glimmer/libui/control_proxy.rb:174:in `map'
  18: from ~/.rvm/gems/ruby-2.7.4@rails-gui/gems/glimmer-dsl-libui-0.5.24/lib/glimmer/libui/control_proxy.rb:174:in `block (2 levels) in handle_listener'
  17: from ~/.rvm/gems/ruby-2.7.4@rails-gui/gems/glimmer-dsl-libui-0.5.24/lib/glimmer/libui/control_proxy.rb:170:in `block in handle_listener'
  16: from ~/.rvm/gems/ruby-2.7.4@rails-gui/gems/glimmer-dsl-libui-0.5.24/lib/glimmer/libui/control_proxy/entry_proxy.rb:32:in `block in data_bind_write'
  15: from ~/.rvm/gems/ruby-2.7.4@rails-gui/gems/glimmer-2.7.3/lib/glimmer/data_binding/model_binding.rb:214:in `call'
  14: from ~/.rvm/gems/ruby-2.7.4@rails-gui/gems/glimmer-2.7.3/lib/glimmer/data_binding/model_binding.rb:295:in `invoke_property_writer'
  13: from ~/.rvm/gems/ruby-2.7.4@rails-gui/gems/glimmer-2.7.3/lib/glimmer/data_binding/observable_model.rb:48:in `block (2 levels) in <module:ObservableModel>'
  12: from ~/.rvm/gems/ruby-2.7.4@rails-gui/gems/glimmer-2.7.3/lib/glimmer/data_binding/observable_model.rb:112:in `notify_observers'
  11: from ~/.rvm/gems/ruby-2.7.4@rails-gui/gems/glimmer-2.7.3/lib/glimmer/data_binding/observable_model.rb:112:in `each'
  10: from ~/.rvm/gems/ruby-2.7.4@rails-gui/gems/glimmer-2.7.3/lib/glimmer/data_binding/observable_model.rb:112:in `block in notify_observers'
   9: from ~/.rvm/gems/ruby-2.7.4@rails-gui/gems/glimmer-2.7.3/lib/glimmer/data_binding/observer.rb:45:in `call'
   8: from ~/.rvm/gems/ruby-2.7.4@rails-gui/gems/glimmer-2.7.3/lib/glimmer/data_binding/model_binding.rb:141:in `block in add_observer'
   7: from ~/.rvm/gems/ruby-2.7.4@rails-gui/gems/glimmer-2.7.3/lib/glimmer/data_binding/observer.rb:45:in `call'
   6: from ~/.rvm/gems/ruby-2.7.4@rails-gui/gems/glimmer-dsl-libui-0.5.24/lib/glimmer/libui/custom_control/refined_table.rb:99:in `block (2 levels) in <class:RefinedTable>'
   5: from ~/.rvm/gems/ruby-2.7.4@rails-gui/gems/glimmer-dsl-libui-0.5.24/lib/glimmer/libui/custom_control/refined_table.rb:216:in `filter_model_array'
   4: from ~/.rvm/gems/ruby-2.7.4@rails-gui/gems/glimmer-dsl-libui-0.5.24/lib/glimmer/libui/custom_control/refined_table.rb:216:in `filter'
   3: from ~/.rvm/gems/ruby-2.7.4@rails-gui/gems/glimmer-dsl-libui-0.5.24/lib/glimmer/libui/custom_control/refined_table.rb:219:in `block in filter_model_array'
   2: from ~/.rvm/gems/ruby-2.7.4@rails-gui/gems/glimmer-dsl-libui-0.5.24/lib/glimmer/libui/custom_control/refined_table.rb:54:in `block in <class:RefinedTable>'
   1: from ~/.rvm/gems/ruby-2.7.4@rails-gui/gems/glimmer-dsl-libui-0.5.24/lib/glimmer/libui/custom_control/refined_table.rb:54:in `all?'
~/.rvm/gems/ruby-2.7.4@rails-gui/gems/glimmer-dsl-libui-0.5.24/lib/glimmer/libui/custom_control/refined_table.rb:64:in `block (2 levels) in <class:RefinedTable>': undefined method `downcase' for nil:NilClass (NoMethodError)
```
