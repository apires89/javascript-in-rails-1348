if @monument.persisted?
  #json response that contains the partial with the monument information
  json.inserted_item render(partial: "monuments/monument", formats: :html, locals: {monument: @monument})

  #json response with the form info with a blank monument AKA clear the form
  json.form render(partial: "monuments/form", formats: :html, locals: {monument: Monument.new})

else
  #json response with the form with the @monument data
    json.form render(partial: "monuments/form", formats: :html, locals: {monument: @monument})
end
