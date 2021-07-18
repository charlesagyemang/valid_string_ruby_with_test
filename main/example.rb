
require 'pry'
class Example

    def self.valid_string(str, dictionary)

        if str.split(" ").count > 1

            stack      = []
            dictionary = dictionary.map { |dict| dict = dict.downcase }
            str        = str.split(" ")


            return false if dictionary.count != str.count

            str.each do |curr_str|
                curr_str = curr_str.downcase
                curr_str = curr_str.split(".")[0]
                stack.push curr_str if  dictionary.include?(curr_str) && !stack.include?(curr_str)
            end

            stack.count == dictionary.count

        elsif str.split(" ").count == 1

            str = str.split(".")[0]

            return false if dictionary.join("").length != str.length

            str =  str.downcase
            stack = []
            gabbage = []

            dictionary.each do |dict|
               dict = dict.downcase
               str.include?(dict) ?  stack.push(dict) : gabbage.push(dict)
            end
        

            gabbage.count == 0 && stack.count == dictionary.count


        end
    end

end


