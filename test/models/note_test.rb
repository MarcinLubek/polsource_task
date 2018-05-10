require 'test_helper'

class NoteTest < ActiveSupport::TestCase
	def setup
    	@note = Note.new(title: "Example Note", content: "content")
	end

	test "should be valid" do
    	assert @note.valid?
	end

	test "name should be present" do
    	@note.title = "     "
    	assert_not @note.valid?
	end

	test "content should be present" do
    	@note.content = "     "
    	assert_not @note.valid?
	end
end
