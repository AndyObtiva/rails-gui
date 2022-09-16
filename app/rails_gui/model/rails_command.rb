require 'singleton'
require 'fileutils'
require 'yaml'

module RailsGui
  module Model
    # abstracts rails commands like `rails routes` and `rails generate ...`
    class RailsCommand
      include Singleton
      
      FILE_ROUTES = File.join(Dir.home, '.rails-gui', 'routes.yml')
      
      def routes
        @routes = load_routes
        refresh_routes if @routes.nil?
        @routes
      end
      
      def load_routes
        FileUtils.mkdir_p(File.dirname(FILE_ROUTES))
        YAML.load(File.read(FILE_ROUTES))
      rescue => e
        puts "No routes found at: #{FILE_ROUTES}"
        Glimmer::Config.logger.error {e.full_message}
        nil
      end
      
      def save_routes
        FileUtils.mkdir_p(File.dirname(FILE_ROUTES))
        File.write(FILE_ROUTES, YAML.dump(@routes))
      rescue => e
        puts "Cannot save routes at: #{FILE_ROUTES}"
        Glimmer::Config.logger.error {e.full_message}
      end
      
      def fetch_routes
        `rails routes`.lines.drop(1).map do |line|
          cells = line.split
          cells.prepend('') if cells[0] && (cells[0] == cells[0].upcase)
          cells.insert(1, '') if cells[1] && (cells[1] != cells[1].upcase)
          cells
        end
      end
      
      def refresh_routes
        @routes = fetch_routes
        save_routes
        @routes
      end
    end
  end
end
