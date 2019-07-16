# Write your code here.
def badge_maker(name)
    message = "Hello, my name is #{name}."
    return message
end

def batch_badge_creator(name_array)
    badge_message_array = []
    name_array.each do |name|
        badge_message_array.push(badge_maker(name))
    end
    return badge_message_array
end

def assign_rooms(name_array)
    room_assignment_array = []
    room_number = 1
    name_array.each do |name|
        message = "Hello, #{name}! You'll be assigned to room #{room_number}!"
        room_assignment_array.push(message)
        room_number += 1
    end
    return room_assignment_array
end 

def printer(name_array)
    badges = batch_badge_creator(name_array)
    badges.each do |name|
        puts name
    end
    rooms = assign_rooms(name_array)
    rooms.each do |name|
        puts name
    end
end