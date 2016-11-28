module PostsHelper
  def value_scale
    { none: 0, minimal: 1, moderate: 2, substantial: 3, maximum: 4 }
  end
  
  def link_to_add_step(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render("step", step: builder)
    end
    link_to(name, '#', class: 'add_step ui small button', data: {id: id, fields: fields.gsub("\n", "")})
  end
end
