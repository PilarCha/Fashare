class Cloth < ApplicationRecord
def self.search(search)
  if search
    where('gender LIKE ?', "#{search}")
  else
    where(:all)
  end
end
end
