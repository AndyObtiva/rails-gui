require 'glimmer-dsl-libui'

require_relative '../model/rails_command'

module RailsGui
  module View
    class MainWindow
      include Glimmer::LibUI::Application
      
      before_body do
        @rails_command = Model::RailsCommand.instance
      end
      
      body {
        menu('Routes') {
          menu_item('Refresh') {
            on_clicked do
              @rails_routes_table.model_array = @rails_command.refresh_routes
            end
          }
          quit_menu_item
        }
        
        window('Rails GUI', 1024, 640) {
          margined true
          
          vertical_box {
            @rails_routes_table = refined_table(
              model_array: @rails_command.routes,
              table_columns: {
                'Prefix'  => :text,
                'Verb' => :text,
                'URI Pattern' => :text,
                'Controller#Action'  => :text,
                'Format' => :text,
              },
              per_page: 1_000_000_000, # do not paginate
            )
            
            button('Refresh Rails Routes') {
              stretchy false
              
              on_clicked do
                @rails_routes_table.model_array = @rails_command.refresh_routes
              end
            }
          }
        }
      }
    end
  end
end
