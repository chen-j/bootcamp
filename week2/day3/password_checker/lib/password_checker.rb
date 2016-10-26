class PasswordChecker

		def check_password(user_email, password)
				pw_arr = password.split("")
				pw_usr_arr = user_email.split("@")
				if password.include?(pw_usr_arr[0]) ||
					 password.include?(pw_usr_arr[1].split('.')[0])
					false
				elsif pw_arr.length >= 8 &&
					pw_arr.grep(/[a-z]/).length >0 &&
					pw_arr.grep(/[A-Z]/).length >0 &&
					pw_arr.grep(/\d/).length >0 &&
					pw_arr.grep(/[^a-zA-Z0-9]/).length >0
					true
				else
					false
				end
	end
end
