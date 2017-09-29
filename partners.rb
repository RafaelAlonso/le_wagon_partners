# Sara    => Thomas, Julia, Robin, Steph, Jane
# Jane    => Sev Lucia, Brian, Hamza, Sara
# Alex    => Jesse, Sev, Lucia, Brian, Hamza
# Steph   => Lucia, Brian, Hamza, Sara, Tibaud
# Hamza   => Julia, Robin, Steph, Jane, Alex
# Rafael  => :alone, Jesse, Sev, Lucia, Brian
# Nicolas => Tibaud, :alone, Thomas ,Julia, Robin
# Jesse   => Alex, Rafael, :alone, Sev, Lucia
# Thomas  => Sara, Tibaud, Nicolas, :alone, Julia
# Sev     => Jane, Alex, Rafael, Jesse, :alone
# Lucia   => Steph, Jane, Alex, Rafael, Jesse
# Brian   => Robin, Steph, Jane, Alex, Rafael
# Tibaud  => Nicolas, Thomas, Julia, Robin, Steph
# Julia   => Hamza, Sara, Tibaud, Nicolas, Thomas
# Robin   => Brian, Hamza, Sara, Tibaud, Nicolas
require 'date'

STUDENTS = %w[Julia Robin Steph Jane Alex Rafael Jesse Sev Lucia Brian Hamza Sara Tibaud Nicolas Thomas]


def my_buddy(me)
  return "You are alone... Sorry" if me == who_is_alone_in_days(0)
  today = Date.today
  start_date = Date.parse "2017-09-25"
  shift = today - start_date
  first_buddy = STUDENTS[ (STUDENTS.index(me) + 4) % 15]
  my_buddy = STUDENTS[(STUDENTS.index(first_buddy) + shift) % 15]
end

def who_am_i(buddy_today = "")
  return who_is_alone_in_days(0) if buddy_today == ""
  return STUDENTS[( STUDENTS.index(buddy_today) - 4 ) % 15]
end


def who_will_be_my_buddy(buddy_today, days = 1)
  future_buddy = ( STUDENTS.index(buddy_today) + days) % 15
  STUDENTS[future_buddy]
end

# def who_will_be_alone(days)
#   who_is_alone_today = Date.today
#   alone_index = (STUDENTS.index(who_is_alone_today) + 8) % 15
#   return STUDENTS[  (alone_index * days ) % 15 ]
# end

def who_is_alone_in_days(days = 0)
  today = Date.today + days
  start_date = Date.parse "2017-09-25"
  puts shift = today - start_date
  alone_today = ((5 + 8) * shift) % 15
  return STUDENTS[alone_today]
end

def when_will_have_buddy(today_buddy, buddy)
end

def who_will_I_have_on_date

end

def when_will_I_be_alone
end

puts who_is_alone_in_days(1)
puts my_buddy("Jane")
puts who_am_i("Brian")
puts who_will_be_my_buddy
# puts who_will_be_alone(2)
#le_wagon_partners("Brian") => Hamza
