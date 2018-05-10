require 'test_helper'

class InvalidInputTest < ActionDispatch::IntegrationTest
	test "invalid note input" do
	    get new_note_path
	    assert_no_difference 'Note.count' do
	    	post notes_path, params: { note: { title:  "", content: "c"} }
	    end
	    assert_template 'notes/new'
	end
end
