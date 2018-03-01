class Person2
  attr_reader :full_name

  def initialize(full_name)
    @full_name = full_name
  end

  def first_name
    first_and_last_name[0]
  end

  def last_name
    first_and_last_name[1]
  end

  def first_name=(first_name)
    change_part_of_full_name(first_name, 0)
  end

  def last_name=(last_name)
    change_part_of_full_name(last_name, 1)
  end

  def first_and_last_name
    @full_name.split(' ')
  end

  def change_part_of_full_name(name_fragment, part_index)
    first_and_last_name = self.first_and_last_name
    first_and_last_name[part_index] = name_fragment
    @full_name = first_and_last_name.join(' ')
  end
end

###################################################

person = Person2.new('John Smith')
person.first_name = 'Andrew'

if person.full_name == 'Andrew Smith'
  puts "OK"
else
  puts 'Fail'
end
