module UsersHelper

	def avatar(user)
		image_tag(user.avatar.url(:thumb), size: "50x50", alt: user.fullname, class: "gravatar")
	end

	def avatar2(user)
		image_tag(user.avatar.url(:thumb), size: "30x30", alt: user.fullname, class: "gravatar")
	end
end
