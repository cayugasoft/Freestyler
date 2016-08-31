require "xcodeproj"
require "json"

def instance_name_from_class(class_name)
	unprefixed = class_name[2..-1]
	return unprefixed[0].downcase + unprefixed[1..-1]
end

def property_assignment(instance, keypath, property) 
	if keypath.empty? 
		return "#{instance}.#{property} = #{property}"
	else 
		return "#{instance}.#{keypath}.#{property} = #{property}"
	end
end

def generate_swift_style(class_name, keypath, property, property_type, style_name, comment)
	instance = "#{instance_name_from_class(class_name)}"

	code = <<-STYLE
/** #{comment} */
public static func #{property}(#{property}: #{property_type}) -> Style {
    return Style(\"#{style_name}\") {
        (#{instance}: #{class_name}) in
        #{property_assignment(instance, keypath, property)}
    }
}
STYLE
	
end

path_to_styles = ARGV[0]
exit if path_to_styles.nil?
styles_json = File.read(path_to_styles)
styles = JSON.parse(styles_json)

puts styles

puts instance_name_from_class("UIBarButtonItem")

puts generate_swift_style("UIView", "", "transform", "CGAffineTransform", "Transform", "no comment")