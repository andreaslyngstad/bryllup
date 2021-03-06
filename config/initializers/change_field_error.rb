ActionView::Base.field_error_proc = Proc.new do |html_tag, instance_tag|
  if html_tag =~ /type="hidden"/ || html_tag =~ /<label/
    html_tag
  else
    "<span class='error_messages'>#{[instance_tag.error_message].flatten.first}</span>" +
    "<span class='field_error'>#{html_tag}</span>"
  end
end
