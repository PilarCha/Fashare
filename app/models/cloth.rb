class Cloth < ApplicationRecord
def self.search(search)
  if search
    where('gender LIKE ?', "#{search}")
  else
    find(:all)
  end
end
end
