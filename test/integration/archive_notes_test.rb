require 'test_helper'

class ArchiveNotesTest < ActionDispatch::IntegrationTest
	test "archive notes" do
	    post notes_path, params: { note: { title:  "t", content: "c"} }
	    note_count = Note.count
		get service_archive_path
		archived_count  = Note.where(:is_archived => true).count
		assert_equal note_count, archived_count
	end
end
