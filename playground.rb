# just a file for quick testing some ruby code


count = { one: "uno", two: "dos", three: "tres" } # hash

count.each do |key, value| # block
    puts "#{key.inspect} in Spanish is #{value.inspect}"
end

# --- Hashes
person1 = { first_name: "Tom", last_name: "Stasek"} # - Single hash using symbols
person2 = { first_name: "Peggie", last_name: "Stasek"}
person3 = { first_name: "Victor", last_name: "Stasek"}
params = { father: person1, mother: person2, child: person3} # - hash of hashes
puts params[:father][:first_name]

puts result = { "a" => 100, "b" => 200 }.merge({ "b" => 300 }) # - hash merge

# --- callling constructors
p r1 = 0..10  # - literal constructor
p r2 = Range.new(0, 10) # - constructor class method
p r1 == r2

# --- Classes

class User
    attr_accessor :first, :last, :email # getter/setter
  
    def initialize(attributes = {}) # constructor
      @first = attributes[:first]
      @last = attributes[:last]
      @email = attributes[:email]
    end
  
    def formatted_email
      full_name + " <#{@email}>"
    end

    def full_name
      "#{@first} #{@last}"
    end
end