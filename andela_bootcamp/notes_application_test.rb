modules NotesApp
	describe note_content do
		it "takes parameter and update a list" do
			notes = list
		end
	end

	describe get do
		it "takes parameter and fetches note from the list" do
			notes = list
		end
	end

	describe search do
		it "fetches list based on parameter" do
			parameter.should be_in_the_list
		end
	end

	describe delete do
		it "takes a parameter and remove list item" do
			item.should not_be_in_the_list_after
		end
	end

	describe edit do
		it "takes two parameter, matches the list with the first and replaces the matched item with the second" do
			list = new_content
		end
	end
end

describe NotesApplication do
	NotesApplication.should include NotesApp
	it "create and initializes NotesApplication objects with author and updates the list with such information" do
		@note = NotesApplication.new(author)
	end
end







