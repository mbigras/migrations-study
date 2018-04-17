module ActiveRecord
  class Migration
    def self.[] version
      const_get "V#{version.to_s.tr '.', '_'}"
    end

    class V5_0
      def create_table
        puts "running v5.0..."
      end
    end

    class V5_1
      def create_table
        puts "running v5.1..."
      end
    end

    class V5_2
      def create_table
        puts "running v5.2..."
      end
    end
  end
end

%w(5.0 5.1 5.2).each do |v|
  ActiveRecord::Migration[v].new.create_table
end

class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table
  end
end

CreatePosts.new.change