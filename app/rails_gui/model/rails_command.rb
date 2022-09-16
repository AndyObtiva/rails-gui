require 'singleton'

module RailsGui
  module Model
    # abstracts rails commands like `rails routes` and `rails generate ...`
    class RailsCommand
      include Singleton
      
      def routes
        `rails routes`.lines.drop(1).map do |line|
          cells = line.split
          cells.prepend('') if cells[0] && (cells[0] == cells[0].upcase)
          cells.insert(1, '') if cells[1] && (cells[1] != cells[1].upcase)
          cells
        end
      end
    end
  end
end
