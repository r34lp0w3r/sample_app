module UsersHelper
  # Returns the Gravatar (http://gravatar.com/) for the given user.
    def gravatar_for(user, options = {:size => "50x50"})
      gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
      gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
      options.merge(:class => "gravatar")
      options.merge(:alt => user.name)
      image_tag gravatar_url, options.merge({alt: user.name, class: "gravatar" })      
    end
end
