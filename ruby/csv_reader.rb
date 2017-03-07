module ActsAsCsv

	def self.included(base)
		base.extend ClassMethods
	end

	module ClassMethods
		def acts_as_csv
			include InstanceMethods
		end
	end

	module InstanceMethods

		def read
			@csv_contents = []
			filename = self.class.to_s.downcase + '.txt'
			file = File.new(filename)
			@headers = file.gets.chomp.split(', ')

			file.each do |row|
				@csv_contents << row.chomp.split(', ')
			end

		end

		attr_accessor :headers, :csv_contents

        def each
            r = CsvRow.new(@headers, @content)
            yield r
        end

		def initialize
			read
		end
	end
end

class RubyCsv # no inheritance! You can mix it in 
	include ActsAsCsv
	acts_as_csv
end

class CsvRow
    def initialize headers, row
        @headers = headers
        @row = row
    end

    def method_missing name, *args
        i = @header.index(name.to_s)
        @row[i]
    end
end

m = RubyCsv.new
puts m.headers.inspect
puts m.csv_contents.inspect
csv = RubyCsv.new
puts csv.each {|row| puts row.one}
