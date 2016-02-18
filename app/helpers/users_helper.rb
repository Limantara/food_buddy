module UsersHelper
    def errors_for(model, attribute)
        if model.errors[attribute].present?
            content_tag :span, :class => 'error_explanation' do
                model.errors[attribute].join(", ")
            end 
        end
    end 
end
