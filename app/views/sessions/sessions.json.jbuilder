json.data do 
	json.user do 
		json.call (
			@user,
			:email,
			:authenticate_token
			)
	
end