module Tender
	
	class Discussion < Base
		
		# attr_writer :extras

		site_format << "/categories/:category_id"

		# schema = {
		# 	'title' => :string, 
		# 	'public' => :string,
		# 	'author_email' => :string,
		# 	'body' => :string,
		# 	'extras' => :string,
		# 	'skip_spam' => :string
		# }
		
		def skip_spam
			true
		end

	end

end