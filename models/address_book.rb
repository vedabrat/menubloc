require_relative 'entry'


class AddressBook
  attr_reader :entries
  def initialize
    @entries = []
  end

   def add_entry(name, phone_number, email)
     # create an index for each entry, iterate through entries. if the name is already in the entries list, dont add.
     # for each entry let there be an index
     # insert the new entry
    index = 0
    entries.each do |entry|
      if name < entry.name
        break
      end
      index+= 1
    end
    entries.insert(index, Entry.new(name, phone_number, email))
  end

  def remove_entry(name, phone_number, email)
    delete_entry = nil
    @entries.each do |entry|
      if name == entry.name && phone_number == entry.phone_number && email == entry.email
        delete_entry = entry
      end
    end
    @entries.delete(delete_entry)
  end
end
