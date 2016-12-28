require 'find'

if ARGV.count != 2 
	puts "Script must have 2 parameters: 1. Path to directory with all source files; 2. Path to license file."
	exit 1
end

license_path = ARGV[1]
license_text = File.read(license_path)
puts license_text + "\n"
commented_license = ""

license_text.each_line do |line|
	commented_license += "// #{line}"
end

source_dir = ARGV[0]
pattern = File.join(source_dir, "**", "*.swift")

paths = Dir.glob(pattern)

paths.each do |p| 
	source = ""
	File.open(p, 'r') do |f|  
		source = f.read
		source.sub!(/^((\/\/.*\n)*\n)*/, commented_license + "\n\n")
	end
	
	File.open(p, 'w') do |f|
		f.write(source)
		f.close
	end
	puts "#{p} ✅"
end