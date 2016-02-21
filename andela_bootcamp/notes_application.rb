=begin
Ruby-happy Andela Bootcamp class LOS/XV Assignment by Tony Lifu
Date: 20/02/2016
=end

module NotesApp
    @@notes = Array.new
	@@authors = Array.new


	def create(notes_content)
		@@notes.push(notes_content)
	end
	
	def list
	    (0...@@notes.length).each{ |note_id|
		puts "#{note_id}: #{@@notes[note_id]}. Written By: #{@@authors[note_id]}"
	    }
	    
	end
	
	def get(note_id)
		# Retrieve note when index is given
		len = @@notes.length
		if note_id >= -len && note_id < len
		    puts @@notes.values_at(note_id).to_s #return notes
		    
        else
            puts "Out of range... Please enter the right note_id: "
        end

	end
	
	def search(search_text)
		#returns note_id, NOTE_CONTENT, by author
		i = 0
		while i < @@notes.length
		    if @@notes[i].include?(search_text)
		        puts "#{i}: #{@@notes[i]}. Written by: #{@@authors[i]}"
		    end
		    i += 1
	    end
	end
	
	def delete(note_id)
		len = @@notes.length
		#deletes the notes at the index note_id
		if note_id >= -len && note_id < len
		    @@notes.delete_at(note_id)
		    puts "Note at index: #{note_id} has been deleted..."
        else
            puts "Out of range... Please enter the right note_id: "
        end
	end
	
	def edit(note_id, new_content)
		#replaces the content at note_id with a new_content
		len = @@notes.length
		if note_id >= -len && note_id < len
		    @@notes[note_id,1] = new_content
		    puts "Note at index: #{note_id} has been replaced... Do list
		    to see your changes"
        else
            puts "Out of range... Please enter the right note_id: "
        end
	end

    
end

class NotesApplication
    include NotesApp
	
	def initialize(author)
		@author = author
		@@authors = @@authors.push(author)
	end
	
	
end


my_note = NotesApplication.new("Lifu")
my_note.create("This is my note")

my_note1 = NotesApplication.new("Tony")
my_note1.create("This is Jesus note2")

my_note2 = NotesApplication.new("Eddy")
my_note2.create("This is my note3")

my_note3 = NotesApplication.new("Ralph")
my_note3.create("This is my Jesus note4")

my_note.list
my_note.edit(9, "Jesus my love")
my_note.list
my_note.delete(0)
my_note.list
my_note.get(2)
my_note.search("Jesus")
my_note.list




