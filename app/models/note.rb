class Note < ActiveRecord::Base
  # add associations here
  validates_presence_of :content
  belongs_to :song


  def note_contents=(ids)
    ids.each do |id|
      song = Song.find(id)
      self.notes << song
    end
  end

end
