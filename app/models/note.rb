class Note < ActiveRecord::Base
  # add associations here
  validates_presence_of :content
  belongs_to :song


  def song_ids=(ids)
    ids.each do |id|
      song = Song.find(id)
      self.notes << note
    end
  end

end
