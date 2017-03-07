def read1
    f = File.new("dummy.txt", "r")
    while(line = f.gets)
        puts "#{line}"
    end
    f.close
end

def read2
    File.open("dummy.txt", "r") do |infile|
        while (line = infile.gets)
            puts "#{line}"
        end
    end
end

def printArr
    arr = (0..16).to_a
    arr.each_slice(4) {|slice| puts "hey #{slice}" }
end

printArr
