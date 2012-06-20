ActiveAdmin.register Invitation do

  form do | f | 
    f.inputs do
      f.input :recipient_email
    end
    f.buttons
  end
  
end
