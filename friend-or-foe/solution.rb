def friend(friends)
  friends.reject { |friend| friend.length != 4 }
end
