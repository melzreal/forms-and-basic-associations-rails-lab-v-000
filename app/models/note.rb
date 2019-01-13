class Note < ActiveRecord::Base
  # add associations here
  validates_presence_of :content
  belongs_to :song


  def note_contents=(notes)
    notes.each do |note|
      self.notes << note
    end
  end

end
