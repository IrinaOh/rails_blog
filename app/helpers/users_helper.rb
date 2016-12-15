module UsersHelper
	def test
		"Hello , World!"	
	end
	def headline(headline)
		%Q{
			<h1>#{headline}</h1>
		}.html_safe #better sorry than safe, I always say...
	end
	def header(headline)
		content_tag :h1, headline	
	end
	def greeting(headline)
		content_tag :h1, headline	
	end
	def logout_greeting(headline)
		content_tag :h2, headline	
	end
end
