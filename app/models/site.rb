class Site < ActiveRecord::Base

	require 'mechanize'

	def find_contacts
		a = Mechanize.new { |agent|
		  agent.user_agent_alias = 'Mac Safari'
		}

		begin
			page = a.get(self.url)

			email = page.link_with(:href => /[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i).href.gsub('mailto:','') if page.link_with(:text => /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i) 
			#email = page.link_with(:href => /@/).href.gsub('mailto:','') if page.link_with(:href => /@/) 
			contact = page.link_with(text: /\bcontact\b/i).href if page.link_with(text: /\bcontact\b/i)
			about = page.link_with(text: /\babout\b/i).href if page.link_with(text: /\babout\b/i)
			twitter = page.link_with(text: /\btwitter\b/i).href if page.link_with(text: /\btwitter\b/i) 
			facebook = page.link_with(text: /\bfacebook\b/i).href if page.link_with(text: /\bfacebook\b/i)
			instagram = page.link_with(text: /\binstagram\b/i).href if page.link_with(text: /\binstagram\b/i) 
			youtube = page.link_with(text: /\byoutube\b/i).href if page.link_with(text: /\byoutube\b/i)
			
			if !email and contact
				puts '...trying contact page...'
				page = a.get(contact)
				email = page.link_with(:href => /[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i).href.gsub('mailto:','') if page.link_with(:href => /[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i)
			end
			self.update_attributes(email: email, contact: contact, about: about, twitter: twitter, facebook: facebook, instagram: instagram, youtube: youtube)
			#puts 'EMAIL: ' + email.to_s
			#puts 'EMAIL: ' + contact.to_s
			#puts 'EMAIL: ' + twitter.to_s
			#puts 'EMAIL: ' + facebook.to_s
			#puts 'EMAIL: ' + instagram.to_s
			#puts 'EMAIL: ' + youtube.to_s
		rescue StandardError=> e
			puts e
		end
	end
end
