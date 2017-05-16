module ApplicationHelper

	def markdown(text)
    return '' unless text.present?
    @options ||= {
		hard_wrap: true,
        autolink: true,
        link_attributes: {rel: 'nofollow', target: "_blank"}
    }
    @markdown ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML, @options)
    @markdown.render(text).html_safe
end

end
