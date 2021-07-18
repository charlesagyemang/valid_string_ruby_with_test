

class Example

    def self.valid_string(str, dictionary)

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
    end

end


