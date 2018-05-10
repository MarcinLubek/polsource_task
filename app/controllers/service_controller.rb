class ServiceController < ApplicationController

  def notupdated
    notArchivedNotes
  end

  def archive
    @notes = Note.all

    @notes.each do |note|
      note.is_archived=true
    end
    
    @notes.each do |note|
      note.save
    end
  end

  def returnarchived
    archivedNotes
  end
end
